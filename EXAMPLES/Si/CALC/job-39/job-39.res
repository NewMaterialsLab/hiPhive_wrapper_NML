 running on   32 total cores
 distrk:  each k-point on   32 cores,    1 groups
 distr:  one band on   16 cores,    2 groups
 using from now: INCAR     
 vasp.5.4.4.18Apr17-6-g9f103f2a35 (build Nov 08 2017 09:05:29) complex          
  
 POSCAR found :  1 types and     128 ions
 scaLAPACK will be used

 ----------------------------------------------------------------------------- 
|                                                                             |
|           W    W    AA    RRRRR   N    N  II  N    N   GGGG   !!!           |
|           W    W   A  A   R    R  NN   N  II  NN   N  G    G  !!!           |
|           W    W  A    A  R    R  N N  N  II  N N  N  G       !!!           |
|           W WW W  AAAAAA  RRRRR   N  N N  II  N  N N  G  GGG   !            |
|           WW  WW  A    A  R   R   N   NN  II  N   NN  G    G                |
|           W    W  A    A  R    R  N    N  II  N    N   GGGG   !!!           |
|                                                                             |
|      For optimal performance we recommend to set                            |
|        NCORE= 4 - approx SQRT( number of cores)                             |
|      NCORE specifies how many cores store one orbital (NPAR=cpu/NCORE).     |
|      This setting can  greatly improve the performance of VASP for DFT.     |
|      The default,   NCORE=1            might be grossly inefficient         |
|      on modern multi-core architectures or massively parallel machines.     |
|      Do your own testing !!!!                                               |
|      Unfortunately you need to use the default for GW and RPA calculations. |
|      (for HF NCORE is supported but not extensively tested yet)             |
|                                                                             |
 ----------------------------------------------------------------------------- 


 ----------------------------------------------------------------------------- 
|                                                                             |
|  ADVICE TO THIS USER RUNNING 'VASP/VAMP'   (HEAR YOUR MASTER'S VOICE ...):  |
|                                                                             |
|      You have a (more or less) 'large supercell' and for larger cells       |
|      it might be more efficient to use real space projection operators      |
|      So try LREAL= Auto  in the INCAR   file.                               |
|      Mind: If you want to do a very accurate calculations keep the          |
|      reciprocal projection scheme          (i.e. LREAL=.FALSE.)             |
|                                                                             |
 ----------------------------------------------------------------------------- 

 LDA part: xc-table for Pade appr. of Perdew
 POSCAR, INCAR and KPOINTS ok, starting setup
 FFT: planning ...
 WAVECAR not read
 entering main loop
       N       E                     dE             d eps       ncg     rms          rms(c)
DAV:   1     0.138354932090E+04    0.13835E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537762197764E+03   -0.19213E+04   -0.18263E+04  6112   0.187E+02
DAV:   3    -0.687519891439E+03   -0.14976E+03   -0.14677E+03  6272   0.454E+01
DAV:   4    -0.691795065636E+03   -0.42752E+01   -0.42395E+01  6208   0.925E+00
DAV:   5    -0.691943673501E+03   -0.14861E+00   -0.14822E+00  6336   0.165E+00    0.240E+01
DAV:   6    -0.683541559771E+03    0.84021E+01   -0.57404E+00  5904   0.298E+00    0.143E+01
DAV:   7    -0.680007734543E+03    0.35338E+01   -0.11159E+01  5840   0.402E+00    0.154E+00
DAV:   8    -0.680066868763E+03   -0.59134E-01   -0.10767E+00  5808   0.154E+00    0.591E-01
DAV:   9    -0.680086752975E+03   -0.19884E-01   -0.10282E-01  6072   0.477E-01    0.296E-01
DAV:  10    -0.680089243417E+03   -0.24904E-02   -0.10152E-02  6032   0.139E-01    0.109E-01
DAV:  11    -0.680090645635E+03   -0.14022E-02   -0.23630E-03  5792   0.708E-02    0.412E-02
DAV:  12    -0.680090674399E+03   -0.28764E-04   -0.46825E-04  6128   0.313E-02    0.172E-02
DAV:  13    -0.680090704972E+03   -0.30573E-04   -0.11944E-04  5816   0.157E-02    0.506E-03
DAV:  14    -0.680090706319E+03   -0.13475E-05   -0.88420E-06  6216   0.471E-03    0.204E-03
DAV:  15    -0.680090710107E+03   -0.37874E-05   -0.27371E-06  6032   0.246E-03    0.638E-04
DAV:  16    -0.680090709800E+03    0.30666E-06   -0.20652E-07  6104   0.650E-04    0.352E-04
DAV:  17    -0.680090709520E+03    0.28070E-06   -0.40874E-08  4992   0.320E-04    0.173E-04
DAV:  18    -0.680090709730E+03   -0.21002E-06   -0.11357E-08  3328   0.179E-04    0.752E-05
DAV:  19    -0.680090709687E+03    0.42644E-07   -0.31129E-09  3256   0.858E-05    0.561E-05
DAV:  20    -0.680090709695E+03   -0.81236E-08   -0.47505E-10  3200   0.429E-05
   1 F= -.68009071E+03 E0= -.68009071E+03  d E =-.429298E-32
./CHG
./CHGCAR
./REPORT