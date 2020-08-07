#!/usr/bin/env python 
# HIPHIVE wrapper 
################################################################################
# Copyright Jose J. Plata, Victor Posligua, Antonio M. Márquez, Ricardo        #
# Grau-Crespo and Javier Fdez Sanz		     						           #
#                   		   (2020)  								           #
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
				# we found a vasp directory, so we can do something in it. 
				# here we get the elapsed time from the calculation
					fname = absd+"/vasprun.xml"
					atoms = read(fname)
					db.write(atoms, filename=absd)
					it = it + 1

	structures = []
	for row in db.select():
	# Get forces and displacements.
		atoms = row.toatoms()
		displacements = get_displacements(atoms, sc)
		forces = atoms.get_forces()

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
			os.mkdir(path)
		except OSError:
			print ("Creation of the directory %s failed" % path)
		else:
			print ("Successfully created the directory %s " % path)
		os.rename("POSCAR_temp", path+"/"+"POSCAR")
		shutil.copyfile(infiles+"/INCAR",    path+"/"+"INCAR")  
		shutil.copyfile(infiles+'/KPOINTS',  path+"/"+"KPOINTS")
		shutil.copyfile(infiles+'/POTCAR',   path+"/"+"POTCAR") 


def main():
	parser = argparse.ArgumentParser()
	parser.add_argument("-p", "--pc",   type=str, default="POSCAR",  help="Primitive cell POSCAR")
	parser.add_argument("-s", "--sc",   type=str, default="SPOSCAR", help="Supercell POSCAR")
	parser.add_argument("-m", "--mode", type=str, default="pre",  help="Mode: pre or post")
	parser.add_argument("-i", "--infiles", type=str, default="INFILES",  help="Path to the VASP input files")
	parser.add_argument("-r", "--rat_mode",   type=str,   default="rattle", help="Method for creating distorted supercells: rattle or mc")
	parser.add_argument("-n", "--rat_n",      type=int,   default=20, help="Number of structures to generate")
	parser.add_argument("-a", "--rat_amp",    type=float, default=0.02, help="Rattle amplitude (standard deviation in normal distribution)")
	parser.add_argument('-c','--cutoffs',     nargs='+', help='List of cutoffs')
	args = parser.parse_args()

	pc_file = args.pc
	sc_file = args.sc
	mode = args.mode
	infiles = args.infiles
	rat_mode = args.rat_mode
	rat_n = args.rat_n
	rat_std = args.rat_amp
	cutoffs = args.cutoffs
	cutoffs=[float(i) for i in cutoffs]

	pc = read(pc_file)
	sc = read(sc_file)

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
			structures = generate_mc_rattled_structures(sc, rat_n, rat_std, dmin, seed=seed, n_iter=20)
	

		#JJPR TODO: Include phonon_rattle	
		#Write DIRS with infiles for VASP calculations
		write_vasp_dirs(structures,infiles)				

	if mode == "post":
		from hiphive import ClusterSpace, StructureContainer, ForceConstantPotential
		from hiphive.fitting import Optimizer
		from hiphive import enforce_rotational_sum_rules

		#Read VASP OUTPUTS and extract positions, displacements and forces
		structures = read_vasp_outputs(sc, rat_n)

		#Set up cluster space (cs) and strcuture container (stc)
		cs = ClusterSpace(structures[0], cutoffs)
		stc = StructureContainer(cs)
		for structure in structures:
			stc.add_structure(structure)

		#Train model
		#JJPR: We have to explore the different methods and posibilities here
		opt = Optimizer(stc.get_fit_data())
		opt.train()

		#Take care of rotational sumrules
		parameters_rot = enforce_rotational_sum_rules(cs, opt.parameters, ['Huang', 'Born-Huang'])

		#Build force constant potential (fcp)
		fcp = ForceConstantPotential(cs, parameters_rot)
		fcp.write('Potential.fcp')

		#Obtain Force constants (fcs) using fcp
		fcs = fcp.get_force_constants(sc)

		#Print ShengBTE files
		fcs.write_to_shengBTE("FORCE_CONSTANTS_3RD", pc)
		fcs.write_to_phonopy("FORCE_CONSTANTS_2ND", format="text")

if __name__ == '__main__':
    main()
