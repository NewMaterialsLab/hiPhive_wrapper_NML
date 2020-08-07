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
DAV:   1     0.138399184312E+04    0.13840E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.535835405520E+03   -0.19198E+04   -0.18261E+04  6112   0.187E+02
DAV:   3    -0.685368567200E+03   -0.14953E+03   -0.14646E+03  6288   0.454E+01
DAV:   4    -0.689655162245E+03   -0.42866E+01   -0.42505E+01  6176   0.927E+00
DAV:   5    -0.689804705997E+03   -0.14954E+00   -0.14914E+00  6352   0.165E+00    0.240E+01
DAV:   6    -0.681324700930E+03    0.84800E+01   -0.58211E+00  5904   0.300E+00    0.143E+01
DAV:   7    -0.677772047809E+03    0.35527E+01   -0.11242E+01  5832   0.404E+00    0.155E+00
DAV:   8    -0.677830377436E+03   -0.58330E-01   -0.10532E+00  5816   0.152E+00    0.622E-01
DAV:   9    -0.677852689775E+03   -0.22312E-01   -0.10232E-01  6120   0.463E-01    0.280E-01
DAV:  10    -0.677855170319E+03   -0.24805E-02   -0.83446E-03  5976   0.129E-01    0.111E-01
DAV:  11    -0.677856631212E+03   -0.14609E-02   -0.22477E-03  5808   0.699E-02    0.364E-02
DAV:  12    -0.677856703850E+03   -0.72638E-04   -0.41951E-04  6144   0.289E-02    0.182E-02
DAV:  13    -0.677856732234E+03   -0.28384E-04   -0.11126E-04  5760   0.156E-02    0.639E-03
DAV:  14    -0.677856737835E+03   -0.56006E-05   -0.97247E-06  6184   0.426E-03    0.176E-03
DAV:  15    -0.677856740899E+03   -0.30643E-05   -0.15451E-06  6208   0.194E-03    0.685E-04
DAV:  16    -0.677856740362E+03    0.53744E-06   -0.23194E-07  6000   0.702E-04    0.273E-04
DAV:  17    -0.677856740324E+03    0.38122E-07   -0.30352E-08  4000   0.265E-04    0.138E-04
DAV:  18    -0.677856740462E+03   -0.13794E-06   -0.72759E-09  3336   0.140E-04    0.651E-05
DAV:  19    -0.677856740404E+03    0.57926E-07   -0.16914E-09  3264   0.699E-05    0.529E-05
DAV:  20    -0.677856740406E+03   -0.25284E-08   -0.43166E-10  3168   0.333E-05
   1 F= -.67785674E+03 E0= -.67785674E+03  d E =-.204457E-35
./CHG
./CHGCAR
./REPORT
