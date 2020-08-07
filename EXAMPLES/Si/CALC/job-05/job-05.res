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
DAV:   1     0.138320411915E+04    0.13832E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.538304240814E+03   -0.19215E+04   -0.18274E+04  6120   0.187E+02
DAV:   3    -0.687599187891E+03   -0.14929E+03   -0.14629E+03  6288   0.454E+01
DAV:   4    -0.691834439390E+03   -0.42353E+01   -0.42011E+01  6168   0.924E+00
DAV:   5    -0.691984131666E+03   -0.14969E+00   -0.14931E+00  6344   0.165E+00    0.240E+01
DAV:   6    -0.683513581612E+03    0.84706E+01   -0.58799E+00  5904   0.302E+00    0.142E+01
DAV:   7    -0.679976972077E+03    0.35366E+01   -0.11280E+01  5880   0.405E+00    0.156E+00
DAV:   8    -0.680033768827E+03   -0.56797E-01   -0.10747E+00  5776   0.154E+00    0.625E-01
DAV:   9    -0.680056040396E+03   -0.22272E-01   -0.10449E-01  6088   0.467E-01    0.281E-01
DAV:  10    -0.680058516255E+03   -0.24759E-02   -0.83240E-03  5968   0.129E-01    0.112E-01
DAV:  11    -0.680060017234E+03   -0.15010E-02   -0.23671E-03  5792   0.710E-02    0.366E-02
DAV:  12    -0.680060088211E+03   -0.70978E-04   -0.42842E-04  6144   0.292E-02    0.181E-02
DAV:  13    -0.680060116534E+03   -0.28322E-04   -0.11259E-04  5728   0.158E-02    0.643E-03
DAV:  14    -0.680060122219E+03   -0.56849E-05   -0.99764E-06  6168   0.429E-03    0.176E-03
DAV:  15    -0.680060125342E+03   -0.31234E-05   -0.14861E-06  6192   0.196E-03    0.678E-04
DAV:  16    -0.680060124934E+03    0.40835E-06   -0.25727E-07  6016   0.745E-04    0.296E-04
DAV:  17    -0.680060124867E+03    0.66822E-07   -0.35135E-08  4344   0.290E-04    0.148E-04
DAV:  18    -0.680060125003E+03   -0.13644E-06   -0.90078E-09  3368   0.152E-04    0.710E-05
DAV:  19    -0.680060124945E+03    0.58684E-07   -0.20874E-09  3248   0.752E-05    0.541E-05
DAV:  20    -0.680060124954E+03   -0.91459E-08   -0.45863E-10  3168   0.350E-05
   1 F= -.68006012E+03 E0= -.68006012E+03  d E =-.133717E-21
./CHG
./CHGCAR
./REPORT
