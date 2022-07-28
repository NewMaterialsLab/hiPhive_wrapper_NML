#!/u/jose/VENVs/hiphive_imag_17/bin/python
# HIPHIVE wrapper 
################################################################################
# Copyright Jose J. Plata, Ernesto J. Blancas, Julia Santana, Victor Posligua, #
# Antonio M. Marquez, Ricardo Grau-Crespo and Javier Fdez Sanz		       #	
#                   		   (2021)  				       #  
#                                                                              #
# This is free software: you can                                               #
# redistribute it and/or modify it under the terms of the GNU General Public   #
# License as published by the Free Software Foundation, either version 3 of    #
# the License, or (at your option) any later version.                          #
# This program is distributed in the hope that it will be useful, but WITHOUT  #
# ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or        #
# FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for    #
# more details.                                                                #
# You should have received a copy of the GNU General Public License along with #
# this program.  If not, see <http://www.gnu.org/licenses/>.                   #
#                                                                              #
################################################################################

import os
import sys
import re
import numpy as np
import shutil
import argparse
from ase.io import read
from ase.io import write
import ase.io.vasp
from hiphive.cutoffs import BaseClusterFilter

bins = {'displacement': np.linspace(0.0, 1.5, 300), 'distance': np.linspace(1.0, 5, 300)}

def get_index_offset(atoms, atoms_ref):
	from hiphive.core.atoms import spos_to_atom
	#""" Get index offsets for atoms relative to atoms_ref.cell and positons """
	basis = atoms_ref.get_scaled_positions()
	spos = atoms_ref.cell.scaled_positions(atoms.positions)
	indices = []
	offsets = []
	for s in spos:
		a = spos_to_atom(s, basis)
		indices.append(a.site)
		offsets.append(a.offset)
	return indices, offsets

class MaxCut2nd(BaseClusterFilter):

	def __init__(self, lim):
		self.limx = lim[0]
		self.limy = lim[1]
		self.limz = lim[2]

	def setup(self, atoms):
		""" The filter is passed the environment of the primitive cell. """
		self.atoms = atoms


	def __call__(self, cluster):
		order = len(cluster)
		if order >= 3:
			return True
		else:
			ind1 = cluster[0]	
			ind2 = cluster[1]
			vec = self.atoms.get_distance(ind1,ind2,mic=True,vector=True)	
			#vec_mod = self.atoms.get_distance(ind1,ind2,mic=True,vector=False)	
			#print("ind1: ", ind1, " ind2: ",ind2, " dist: ", vec_mod)
			if abs(vec[0]) < self.limx and abs(vec[1]) < self.limy  and abs(vec[2]) < self.limz: 
				return True
			else:
				return False

def get_histogram_data(data, bins=100):
	counts, bins = np.histogram(data, bins=bins, density=True)
	bin_centers = [(bins[i+1]+bins[i])/2.0 for i in range(len(bins)-1)]
	return bin_centers, counts


def get_distributions(structure_list, ref_pos):
	""" Gets distributions of interatomic distances and displacements.
	
	Parameters
	----------
	structure_list : list(ase.Atoms)
		list of structures used for computing distributions
	ref_pos : numpy.ndarray
		reference positions used for computing the displacements (`Nx3` array)
	"""
	distances, displacements, forces = [], [], []
	for atoms in structure_list:
		distances.extend(atoms.get_all_distances(mic=True).flatten())
		displacements.extend(np.linalg.norm(atoms.positions-ref_pos, axis=1))
	print("Max displacement in distorted structures: ",np.max(displacements))
	distributions = {}
	distributions['distance'] = get_histogram_data(distances, bins['distance'])
	distributions['displacement'] = get_histogram_data(
		displacements, bins['displacement'])
	return distributions

def fix_format(a): #Format processing for CONTROL
	data=str(a)
	data=data.replace(data[0],'')
	a=len(data)
	data=data.replace(data[a-1],'')
	data=data.replace(',', ' ')
	return data


def read_vasp_outputs(sc,rat_n):
	from hiphive.utilities import get_displacements
	from ase.db import connect
	db = connect('vasp_db.json')
	#Read VASP OUTPUTS and store them in DB
	it = 0
	for root, dirs, files in os.walk('./CALC/'):
		for d in dirs:
		# compute absolute path to each directory in the current root
			absd = os.path.join(root, d)
			if vasp_dir(absd):
				if it < rat_n:
					print(it,absd)
				# we found a vasp directory, so we can do something in it. 
				# here we get the elapsed time from the calculation
					fname = absd+"/vasprun.xml"
					atoms = read(fname)
					db.write(atoms, filename=absd)
					it = it + 1
			else:
				print(it,absd,": Something went wrong with this calculation")
				sys.exit()
	structures = []
	list_forces = []
	contador = 0
	for row in db.select():
	# Get forces and displacements.
		print(contador)
		atoms = row.toatoms()
		displacements = get_displacements(atoms, sc)
		forces = atoms.get_forces()
		contador = contador + 1 
		for vec in forces:
			for xx in vec:
				list_forces.append(abs(xx))	
		# Sanity check, displacements should not be abnormally large
		# (here taken as 1.0 A)
		assert np.linalg.norm(displacements, axis=1).max() < 1.0

		# Finalize.
		# The structure container should see the ideal structure in
		# order to be able to process the symmetry.
		atoms_tmp = sc.copy()
		# The displacements and forces are attached as separate arrays.
		atoms_tmp.new_array('displacements', displacements)
		atoms_tmp.new_array('forces', forces)
		structures.append(atoms_tmp)
	max_value = max(list_forces)
	print("Max value for forces: %4f" % (max_value))
	import statistics
	mean_value = statistics.mean(list_forces)	
	print("Mean value for forces: %4f"  % (mean_value))

	#Cleaning
	os.remove("vasp_db.json")
	if os.path.isfile('./rattled_structures.extxyz'):
		os.remove('./rattled_structures.extxyz')
	#Print file with structures, displacements and forces
	structures_fname = 'rattled_structures.extxyz'
	write(structures_fname, structures)
	return structures

def vasp_dir(directory):
    'returns True if a finished OUTCAR file exists in the current directory, else False'
    outcar = os.path.join(directory, 'OUTCAR')
    if os.path.exists(outcar):
        with open(outcar, 'r') as f:
            contents = f.read()
            if 'General timing and accounting informations for this job:' in contents:
                return True
    return False

def write_vasp_dirs(structures,infiles):
	from datetime import datetime
	i=0
	if os.path.isdir("./CALC"):
		dateTimeObj = datetime.now()
		timestampStr = dateTimeObj.strftime("%d-%b-%Y(%H:%M.%0d)")
		old_dir = "./CALC_OLD_"+timestampStr
		print(old_dir)
		shutil.move("./CALC", old_dir)  
	os.mkdir("CALC")
	for structure in structures:
		i = i+1
		ase.io.vasp.write_vasp("POSCAR_temp",structure, label='kk',direct=True)
		#Managing directories (there is probably an easier way)
		path = "./CALC/job-"+str(i).zfill(2)
		try:
			shutil.copytree(infiles,path)
		except OSError:
			print ("Creation of the directory %s failed" % path)
		else:
			print ("Successfully created the directory %s " % path)
		os.rename("POSCAR_temp", path+"/"+"POSCAR")
		#shutil.copyfile(infiles+"/INCAR",    path+"/"+"INCAR")  
		#shutil.copyfile(infiles+'/KPOINTS',  path+"/"+"KPOINTS")
		#shutil.copyfile(infiles+'/POTCAR',   path+"/"+"POTCAR") 


def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("-p", "--pc",         type=str,   default="POSCAR",  help="Primitive cell: POSCAR")
	parser.add_argument("-s", "--sc",         type=str,   default="SPOSCAR", help="Supercell: SPOSCAR")
	parser.add_argument("-m", "--mode",       type=str,   default="pre",     help="Mode: pre, post, scph, ehm, shell, control")
	parser.add_argument("-i", "--infiles",    type=str,   default="INFILES", help="Path to the VASP input files")
	parser.add_argument("-r", "--rat_mode",   type=str,   default="rattle",  help="Method for creating distorted supercells: rattle, mc or phon-rat")
	parser.add_argument("-n", "--rat_n",      type=int,   default=20,        help="Number of structures to generate/read")
	parser.add_argument("-a", "--rat_amp",    type=float, default=0.02,      help="Rattle amplitude (standard deviation in normal distribution)")
	parser.add_argument('-c', '--cutoffs',    nargs='+',  default=[5],       help='List of cutoffs in AA')
	parser.add_argument(      '--temp',       nargs='+',  default=[300],     help='List of temperatures in K')
	parser.add_argument(      "--scaleb",     type=float, default=0.1,       help="Scalebroad for CONTROL file")
	parser.add_argument(      '--ngrid',      nargs='+',  default=["1","1","1"],   help='q-mesh density for ShengBTE input')
	parser.add_argument(      '--scell',      nargs='+',  default=["1","1","1"],   help='Supercell size')
	parser.add_argument('-f', '--fit_methods',nargs='+',  default=["rfe"],   help='Fit method of list of fit methods: least-squares, rfe, ardr, lasso..')
	parser.add_argument("-t", "--train_size", type=float, default=0.8,       help="Rattle amplitude (Fraction of the data that is used for the training")
	parser.add_argument("-b", "--benchmark",              default=False,     help="Testing the size convergence if activated", action='store_true')
	parser.add_argument(      "--rot_sumrule",            default=False,     help="Enforce rotational sumrule", action='store_true')
	parser.add_argument(      "--scph_alpha", type=float, default=0.2,       help="Alpha in scph")
	parser.add_argument(      "--scph_niter", type=int,   default=50,        help="Number of iterations in scph")
	parser.add_argument(      "--scph_nstr",  type=int,   default=100,       help="Number of structures in scph")
	parser.add_argument(      "--ehm_neq_st", type=int,   default=3000,      help="Number of equilibration steps in eh model")
	parser.add_argument(      "--ehm_pro_st", type=int,   default=3000,      help="Number of production steps in eh model")
	parser.add_argument(      "--ehm_tim_st", type=float, default=1,         help="Time step (in fs) in eh model")
	parser.add_argument(      "--ehm_dump",   type=int,   default=100,       help="Interval for saving snapshots from MD in the eh model")
	parser.add_argument(      "--ehm_size",   type=int,   default=6,         help="Size (NxNxN) of the supercell used for the MD in the eh model")
	args = parser.parse_args()

	pc_file = args.pc
	sc_file = args.sc
	mode = args.mode
	infiles = args.infiles
	rat_mode = args.rat_mode
	rat_n = args.rat_n
	rat_std = args.rat_amp
	cutoffs_raw = args.cutoffs
	ngrid=args.ngrid
	scell=args.scell


	pc = read(pc_file)
	sc = read(sc_file)


	fit_methods = args.fit_methods
	fit_methods=[str(i) for i in fit_methods]
	train_fraction = args.train_size 
	benchmark = args.benchmark
	rot_sumrule = args.rot_sumrule
 
	#from hiphive.utilities import get_neighbor_shells
	#lista = get_neighbor_shells(sc,20)
	#for kk in lista:
	#	print(kk)

	if mode== "control":
		atoms=read('POSCAR')
		temp_list = args.temp
		scaleb = args.scaleb
		temp = float(temp_list[0])
		all_atoms=atoms.get_chemical_symbols()
		elements= list(dict.fromkeys(all_atoms))
		with open('CONTROL', 'w') as ctrl_file:
		#ALLOCATIONS
			ctrl_file.write('&allocations \n')
			print(f"\t nelements={len(elements)},", file=ctrl_file)
			print(f'\t natoms={len(all_atoms)},', file=ctrl_file) 
			ngrid=' '.join(ngrid)
			print(f'\t ngrid(:)={ngrid}', file=ctrl_file)
			ctrl_file.write('&end \n')
			#CRYSTAL	
			ctrl_file.write('&crystal \n')
			ctrl_file.write('\t lfactor=0.1,\n')

			#LATTVEC
			for i in range(len(atoms.cell)):
				cell=atoms.cell[i]
				print(f'\t lattvec(:,{i+1})='+"{:.12f}".format(cell[0])+"\t"+"{:.12f}".format(cell[1])+"\t"+"{:.12f}".format(cell[2])+",", file=ctrl_file)
	
			#ELEMENTS
			print(f'\t elements={fix_format(elements)},', file=ctrl_file)
	
			#TYPES
			index=0
			types=[]
			for i in elements:
				index+=1
				for x in all_atoms:
					if x==i:
						types.append(index)
			print(f'\t types={fix_format(types)},', file=ctrl_file)
			
			#POSITIONS	
			pos=atoms.get_scaled_positions()
			for i in range(len(pos)):
				posi = pos[i]
				print(f'\t positions(:,{i+1})='+"{:.12f}".format(posi[0])+"\t"+"{:.12f}".format(posi[1])+"\t"+"{:.12f}".format(posi[2])+",", file=ctrl_file)
			#SCELL
			scell=' '.join(scell)
			print(f'\t scell(:)={scell}', file=ctrl_file)
			ctrl_file.write('&end \n')
	
			#PARAMETROS FINALES
			ctrl_file.write('&parameters\n')
			ctrl_file.write('\tT='+str(temp)+'\n\tscalebroad='+str(scaleb)+'\n\tmaxiter=50\n&end')
			ctrl_file.write('\n&flags\n\tisotopes=.TRUE.\n\tnonanalytic=.FALSE.\n\tnanowires=.FALSE.\n&end' )


	if mode == "pre":
		#Using one of the strcuture generators
		#Rattled is default
		if rat_mode == "rattle":
			from hiphive.structure_generation import generate_rattled_structures						
			from numpy.random import randint
			seed = randint(1)
			structures = generate_rattled_structures(sc, rat_n, rat_std, seed=seed)

		#Monte Carlo
		if rat_mode == "mc":
			from hiphive.structure_generation import generate_mc_rattled_structures						
			from numpy.random import randint
			from hiphive.utilities import get_neighbor_shells
			seed = randint(1)
			#Getting min distance between atoms
			lista = get_neighbor_shells(sc,4)
			dmin= lista[0].distance - 0.1 # JJPR: Just in case potential numerical errors
			structures = generate_mc_rattled_structures(sc, rat_n, rat_std*0.15, dmin, seed=seed, n_iter=20)

		#Phonon Ratle (It requires Potencial.fcp)
		if rat_mode == "phon-rat":
			from hiphive.structure_generation import generate_phonon_rattled_structures
			from hiphive import ForceConstantPotential
			from hiphive.calculators import ForceConstantCalculator
			temp_list = args.temp
			temp = float(temp_list[0])
			ref_pos = sc.get_positions()
			fcp = ForceConstantPotential.read("Potential.fcp")
			# setup calculator
			fc2 = fcp.get_force_constants(sc).get_fc_array(order=2, format='ase')
			structures = generate_phonon_rattled_structures(sc, fc2, rat_n, temp, imag_freq_factor=10 )
	
		#Write DIRS with infiles for VASP calculations
		write_vasp_dirs(structures,infiles)				
		#Create and print a file with displacement and  distance  distributions
		from ase.calculators.emt import EMT
		ref_pos = sc.get_positions()
		distributions = get_distributions(structures, ref_pos)
		a = distributions['displacement'][0]
		b = distributions['displacement'][1]
		c = distributions['distance'][0]
		d = distributions['distance'][1]
		with open("histogram.dat",'w',encoding = 'utf-8') as f:
			f.write("{0:10s}  {1:.10s}  {2:.10s}  {3:.10s}\n".format("Ampl","Histo","r","g(r)"))	
			for x1,x2,x3,x4 in zip(a,b,c,d):
				f.write("{0:.4f}  {1:.4f}  {2:.4f}  {3:.4f}\n".format(x1,x2,x3,x4))	
		max_dist=max(b) 
		best_dist = 0.0
		for aa,bb in zip(a,b):
			if(max_dist == bb):
				best_dist = aa 
			if(aa > 0.8 and bb > 0):
				print("WARNING!! You have displacements larger than 0.8 \AA. You should check what you are doing. If everything is right, I suggest using MC rattle strcutures with an ampplide of: ",best_dist, " \AA")
				break


	if mode == "shell":
		from hiphive.utilities import get_neighbor_shells
		lista = get_neighbor_shells(sc,15)
		counter = 0 
		for i in lista:
			print(counter,i)
			counter = counter + 1

	if mode == "post":
		from hiphive import ClusterSpace, StructureContainer, ForceConstantPotential, force_constants
		from trainstation import Optimizer
		from hiphive import enforce_rotational_sum_rules
		import math 

		folding = False
		lim = []
		if cutoffs_raw[0] == "MAX":
			border = []
			border.append(np.linalg.norm(sc.cell[0]/2.0)-1e-02)
			border.append(np.linalg.norm(sc.cell[1]/2.0)-1e-02)
			border.append(np.linalg.norm(sc.cell[2]/2.0)-1e-02)		
			cutoffs_raw[0] = min(border)
			folding = False
		if cutoffs_raw[0] == "MAX2":
			lim.append(np.linalg.norm(sc.cell[0]/2.0)-1e-02)
			lim.append(np.linalg.norm(sc.cell[1]/2.0)-1e-02)
			lim.append(np.linalg.norm(sc.cell[2]/2.0)-1e-02)		
			cutoffs_raw[0] = math.sqrt(lim[0]*lim[0]+lim[1]*lim[1]+lim[2]*lim[2])
			folding = False
		if cutoffs_raw[0] == "MAX3":
			lim.append(np.linalg.norm(sc.cell[0]/2.0)+1e-02)
			lim.append(np.linalg.norm(sc.cell[1]/2.0)+1e-02)
			lim.append(np.linalg.norm(sc.cell[2]/2.0)+1e-02)		
			cutoffs_raw[0] = math.sqrt(lim[0]*lim[0]+lim[1]*lim[1]+lim[2]*lim[2])
			folding = True

		cutoffs_raw=[float(i) for i in cutoffs_raw]
		cutoffs = []

		for x in cutoffs_raw:
			if x > 0.0:
				cutoffs.append(x)
			else:
				from hiphive.utilities import get_neighbor_shells
				lista = get_neighbor_shells(sc,15)
				index = int(abs(x))+1
				value = lista[index].distance - 0.05
				cutoffs.append(value)

		print("Cutoffs = ", cutoffs)


		#Read VASP OUTPUTS and extract positions, displacements and forces
		print("Reading "+str(rat_n)+"_VASP xml files")
		structures = read_vasp_outputs(sc, rat_n)
   
		#Set up cluster space (cs) and strcuture container (stc)
		print("Creating cluster space")
		if len(lim) > 0:
			print("Applying cluster filters")
			cutfil = MaxCut2nd(lim)
			print(cutoffs) 
			print("Before Cluster creation")
			cs = ClusterSpace(sc, cutoffs, cluster_filter=cutfil)
			print("After 1 Cluster creation")
		else:
			cs = ClusterSpace(sc, cutoffs)
		#cs = ClusterSpace(structures[0], cutoffs)
		print("After 2 Cluster creation")
		stc = StructureContainer(cs)
		it = 0
		print(cutoffs_raw[0]) 
		if folding:
			sc2 = sc.repeat(2)
			for structure in structures:
				print("After 3 Cluster creation")
				print(it)
				atoms2 = structure.repeat(2)
				stc.add_structure(atoms2)
				it = it + 1
				
		else:
			for structure in structures:
				print(it)
				stc.add_structure(structure)
				it = it + 1
		#Train model
		#JJPR: We have to explore the different methods and posibilities here
		print("Training the model")
		#Set train size
		list_size = []
		if benchmark:
			print("Benchmark mode activated")
			list_size=[0.1,0.2,0.3,0.4,0.5,0.6,0.7,0.8]
		else:
			list_size = [train_fraction]
		# fit kwargs
		from collections import defaultdict
		fit_kwargs = defaultdict(dict)
		fit_kwargs['lasso'] = dict(max_iter=5000)
		from trainstation import CrossValidationEstimator
		for size in list_size:
			print("Training size "+str(size))
			train_f = size
			test_f = 1-size
			for fit_method in fit_methods:
				print(fit_method)
				cve = CrossValidationEstimator(stc.get_fit_data(), fit_method=fit_method, validation_method='shuffle-split', train_size=train_f, test_size=test_f, n_splits=5,**fit_kwargs[fit_method])
				cve.validate() 
				print(cve.rmse_validation_splits)
				cve.train()
				print(cve)
				#Build force constant potential (fcp)
				#fcp = ForceConstantPotential(cs, parameters_rot)
				print("Build FCP")
				if rot_sumrule:
					print("Enforcing rotational sumrules")
					from hiphive import enforce_rotational_sum_rules
					parameters_rot = enforce_rotational_sum_rules(cs, cve.parameters, ['Huang', 'Born-Huang'])
					fcp = ForceConstantPotential(cs, parameters_rot)
				else:
					fcp = ForceConstantPotential(cs, cve.parameters)
				labell = "_"
				for x in cutoffs:
					xx = "%.4f" % x
					labell = labell+xx+"_"
				dirname="DIR_cutoff"+labell+"n_"+str(rat_n)+"_"+fit_method+"_tf_"+str(size)
				os.mkdir(dirname)
				fcp.write('Potential.fcp')
				os.rename("Potential.fcp", dirname+"/"+"Potential.fcp")
				print("We finished Potencial.cp") 
				#Obtain Force constants (fcs) using fcp
				print("Build FCS")
				if folding:
					from hiphive import ForceConstants
					print("before fcs2")	
					fcs2 = fcp.get_force_constants(sc2)
					from pprint import pprint
					pprint(dir(fcs2))
					fcs2_array = fcs2.get_fc_array(order=2)
					fcs2_2= ForceConstants.from_arrays(sc2, fc2_array=fcs2_array, fc3_array=None)
					#Folding of fcs
					n_atoms = len(sc)
					indices, offsets = get_index_offset(sc2, sc)
					fcs_np = np.zeros((n_atoms, n_atoms, 3, 3))
					fcs_np3 = np.zeros((n_atoms, n_atoms, n_atoms, 3, 3, 3))
					for i in range(n_atoms):
						for i2 in range(len(sc2)):
							j = indices[i2]
							fcs_np[i, j] += fcs2_2[i, i2]
							for i3 in range(len(sc2)):
								k = indices[i3]
								fcs_np3[i, j, k] += fcs2[i, i2, i3]
					print("before fcs")	
					fcs= ForceConstants.from_arrays(sc, fc2_array=fcs_np, fc3_array=None)
					print("fcs done")	
					fcs_3rd= ForceConstants.from_arrays(sc, fc2_array=None, fc3_array=fcs_np3)
					print("fcs_3rd done")	
					#Print ShengBTE files
					print("Printing files")
					fcs.write_to_phonopy("FORCE_CONSTANTS_2ND", format="text")
					fcs_3rd.write_to_shengBTE("FORCE_CONSTANTS_3RD", pc)
					os.rename("FORCE_CONSTANTS_3RD", dirname+"/"+"FORCE_CONSTANTS_3RD")
					os.rename("FORCE_CONSTANTS_2ND", dirname+"/"+"FORCE_CONSTANTS_2ND")
				else:
					fcs = fcp.get_force_constants(sc)
					#Print ShengBTE files
					print("Printing files")
					fcs.write_to_phonopy("FORCE_CONSTANTS_2ND", format="text")
					fcs.write_to_shengBTE("FORCE_CONSTANTS_3RD", pc)
					os.rename("FORCE_CONSTANTS_3RD", dirname+"/"+"FORCE_CONSTANTS_3RD")
					os.rename("FORCE_CONSTANTS_2ND", dirname+"/"+"FORCE_CONSTANTS_2ND")
		#stc.clear()
		#structures.clear()

	if mode == "scph":
		from hiphive.self_consistent_phonons import self_consistent_harmonic_model
		from hiphive.calculators import ForceConstantCalculator
		from hiphive import ClusterSpace, StructureContainer, ForceConstantPotential
		from trainstation import Optimizer

		lim = []
		if cutoffs_raw[0] == "MAX":
			border = []
			border.append(np.linalg.norm(sc.cell[0]/2.0)-1e-02)
			border.append(np.linalg.norm(sc.cell[1]/2.0)-1e-02)
			border.append(np.linalg.norm(sc.cell[2]/2.0)-1e-02)		
			cutoffs_raw[0] = min(border)
			folding = False
		if cutoffs_raw[0] == "MAX2":
			lim.append(np.linalg.norm(sc.cell[0]/2.0)-1e-02)
			lim.append(np.linalg.norm(sc.cell[1]/2.0)-1e-02)
			lim.append(np.linalg.norm(sc.cell[2]/2.0)-1e-02)		
			cutoffs_raw[0] = math.sqrt(lim[0]*lim[0]+lim[1]*lim[1]+lim[2]*lim[2])
			folding = False
		if cutoffs_raw[0] == "MAX3":
			print("WARNING: MAX3 is not implemented with SCPH")
			quit()

		cutoffs_raw=[float(i) for i in cutoffs_raw]
		cutoffs = []

		for x in cutoffs_raw:
			if x > 0.0:
				cutoffs.append(x)
			else:
				from hiphive.utilities import get_neighbor_shells
				lista = get_neighbor_shells(sc,15)
				index = int(abs(x))+1
				value = lista[index].distance - 0.05
				cutoffs.append(value)

		print("Cutoffs = ", cutoffs)


		# scp parameters
		n_structures = args.scph_nstr 
		n_iterations = args.scph_niter
		alpha = args.scph_alpha

		# setup scph
		from hiphive.calculators import ForceConstantCalculator
		temp = args.temp
		temp = [float(i) for i in temp]
		print("Reading FCP")
		fcp = ForceConstantPotential.read("Potential.fcp")
		cut2 = [cutoffs[0]]
		cs2 = ClusterSpace(sc,cut2)
		print("Building Initial FCS")
		fcs = fcp.get_force_constants(sc)
		calc = ForceConstantCalculator(fcs)
	
		# run scph
		os.makedirs('scph_trajs/', exist_ok=True)
		for T in temp:
			print("Temperature= ",T," K")
			from hiphive.self_consistent_phonons import FreeEnergy
			convergence =  FreeEnergy(T= T, free_energy_difference= 0.01)
			parameters_traj = self_consistent_harmonic_model(sc, calc, cs2, T, alpha, n_iterations, n_structures, convs=FreeEnergy, imag_freq_factor=10)
			if rot_sumrule:
				print("Enforcing rotational sumrules")
				from hiphive import enforce_rotational_sum_rules
				parameters_rot = enforce_rotational_sum_rules(cs2, parameters_traj[-1], ['Huang', 'Born-Huang'])
				fcp_scph = ForceConstantPotential(cs2, parameters_rot)
			else:
				fcp_scph = ForceConstantPotential(cs2, parameters_traj[-1])
			fcp_scph.write('Potential_T{}.fcp'.format(T))
			np.savetxt('scph_trajs/scph_parameters_T{}'.format(T), np.array(parameters_traj))
			
			#Obtain Force constants (fcs) using fcp
			print("Building FCS",)
			fcs_scph = fcp_scph.get_force_constants(sc)
			
			#Print ShengBTE files
			print("Printing files")
			fcs_scph.write_to_phonopy("FORCE_CONSTANTS_2ND_scph_{}".format(T), format="text")

	if mode == "ehm":
		from ase.io.trajectory import Trajectory
		from hiphive import ForceConstantPotential
		from hiphive.calculators import ForceConstantCalculator
		from ase import units
		from ase.md.velocitydistribution import MaxwellBoltzmannDistribution
		from ase.md.langevin import Langevin
		from ase.md import MDLogger
		from hiphive import ClusterSpace, StructureContainer, ForceConstantPotential
		from trainstation import Optimizer

		if not os.path.exists('md_runs'):
			os.makedirs('md_runs')

		# parameters
		temp = args.temp
		temp = [float(i) for i in temp]
		size = args.ehm_size
		number_of_equilibration_steps = args.ehm_neq_st
		number_of_production_steps = args.ehm_pro_st
		time_step = args.ehm_tim_st
		dump_interval = args.ehm_dump

		print("ReadingFCP")
		fcp = ForceConstantPotential.read("Potential.fcp")
		prim = fcp.primitive_structure

		# setup calculator
		atoms_ideal = prim.repeat(size)
		fcs = fcp.get_force_constants(atoms_ideal)
		calc = ForceConstantCalculator(fcs)

		for T in temp:
			print('Temperature: {}K'.format(T))

			# set up molecular dynamics simulation
			atoms = atoms_ideal.copy()
			atoms.set_calculator(calc)
			dyn = Langevin(atoms, time_step * units.fs, T * units.kB, 0.02)

			# equilibration run
			rs = np.random.RandomState(2020)
			MaxwellBoltzmannDistribution(atoms, T * units.kB, rng=rs)
			dyn.run(number_of_equilibration_steps)

			# production run
			log_file = 'md_runs/T{:}.log'.format(T)
			traj_file = 'md_runs/T{:}.traj'.format(T)
			logger = MDLogger(dyn, atoms, log_file, header=True, stress=False, peratom=True, mode='w')
			traj_writer = Trajectory(traj_file, 'w', atoms)
			dyn.attach(logger, interval=dump_interval)
			dyn.attach(traj_writer.write, interval=dump_interval)
			dyn.run(number_of_production_steps)

			# prepare snapshots for later use
			frames = []
			for atoms in read(traj_file, ':'):
				forces = atoms.get_forces()
				displacements = atoms.positions - atoms_ideal.get_positions()
				atoms.positions = atoms_ideal.get_positions()
				atoms.new_array('displacements', displacements)
				atoms.new_array('forces', forces)
				frames.append(atoms.copy())
				contador = contador + 1 
			print(' Number of snapshots: {}'.format(len(frames)))
			write('md_runs/snapshots_T{:}.xyz'.format(T), frames, format='extxyz')

			structures = read('md_runs/snapshots_T{:}.xyz'.format(T), index=':')
			cut2 = [cutoffs[0]]
			cs = ClusterSpace(structures[0], cut2)
			stc = StructureContainer(cs)
			for s in structures:
				stc.add_structure(s)

			opt = Optimizer(stc.get_fit_data(), train_size=1.0)
			opt.train()
			print(opt)
			fcp_ehm = ForceConstantPotential(cs, opt.parameters)
			fcp_ehm.write('Potential_ehm_T{}.fcp'.format(T))

			#Obtain Force constants (fcs) using fcp
			print("Build FCS")
			fcs_ehm = fcp_ehm.get_force_constants(sc)
			
			#Print ShengBTE files
			print("Printing files")
			fcs_ehm.write_to_phonopy("FORCE_CONSTANTS_2ND_{}".format(T), format="text")

if __name__ == '__main__':
    main()
