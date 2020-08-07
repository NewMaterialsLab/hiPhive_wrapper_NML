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
DAV:   1     0.138304872802E+04    0.13830E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.534970112912E+03   -0.19180E+04   -0.18240E+04  6112   0.187E+02
DAV:   3    -0.684855190334E+03   -0.14989E+03   -0.14676E+03  6296   0.454E+01
DAV:   4    -0.689189439745E+03   -0.43342E+01   -0.42988E+01  6208   0.930E+00
DAV:   5    -0.689338788675E+03   -0.14935E+00   -0.14895E+00  6368   0.165E+00    0.239E+01
DAV:   6    -0.680835714239E+03    0.85031E+01   -0.59317E+00  5888   0.303E+00    0.142E+01
DAV:   7    -0.677312397894E+03    0.35233E+01   -0.11393E+01  5824   0.406E+00    0.158E+00
DAV:   8    -0.677364103312E+03   -0.51705E-01   -0.11041E+00  5824   0.156E+00    0.628E-01
DAV:   9    -0.677385927657E+03   -0.21824E-01   -0.10890E-01  6064   0.483E-01    0.289E-01
DAV:  10    -0.677388457581E+03   -0.25299E-02   -0.95426E-03  6024   0.137E-01    0.110E-01
DAV:  11    -0.677389919956E+03   -0.14624E-02   -0.23275E-03  5824   0.708E-02    0.394E-02
DAV:  12    -0.677389977102E+03   -0.57147E-04   -0.46820E-04  6088   0.306E-02    0.189E-02
DAV:  13    -0.677390007769E+03   -0.30666E-04   -0.12202E-04  5792   0.162E-02    0.572E-03
DAV:  14    -0.677390011874E+03   -0.41051E-05   -0.97563E-06  6136   0.445E-03    0.194E-03
DAV:  15    -0.677390015128E+03   -0.32545E-05   -0.19959E-06  6096   0.218E-03    0.675E-04
DAV:  16    -0.677390014774E+03    0.35387E-06   -0.23218E-07  6088   0.691E-04    0.329E-04
DAV:  17    -0.677390014633E+03    0.14132E-06   -0.36248E-08  4680   0.306E-04    0.159E-04
DAV:  18    -0.677390014794E+03   -0.16153E-06   -0.10340E-08  3320   0.159E-04    0.752E-05
DAV:  19    -0.677390014746E+03    0.48793E-07   -0.23073E-09  3248   0.802E-05    0.534E-05
DAV:  20    -0.677390014762E+03   -0.16795E-07   -0.46007E-10  3168   0.371E-05    0.492E-05
DAV:  21    -0.677390014760E+03    0.28158E-08   -0.17059E-10  3152   0.242E-05
   1 F= -.67739001E+03 E0= -.67739001E+03  d E =-.233560E-28
./CHG
./CHGCAR
./REPORT
