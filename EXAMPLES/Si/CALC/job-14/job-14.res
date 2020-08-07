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
DAV:   1     0.138332750768E+04    0.13833E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.537184971578E+03   -0.19205E+04   -0.18262E+04  6112   0.187E+02
DAV:   3    -0.686835897342E+03   -0.14965E+03   -0.14647E+03  6272   0.454E+01
DAV:   4    -0.691107714595E+03   -0.42718E+01   -0.42362E+01  6176   0.926E+00
DAV:   5    -0.691259292860E+03   -0.15158E+00   -0.15115E+00  6336   0.166E+00    0.240E+01
DAV:   6    -0.682774304672E+03    0.84850E+01   -0.60185E+00  5928   0.312E+00    0.143E+01
DAV:   7    -0.679273439323E+03    0.35009E+01   -0.11476E+01  5920   0.409E+00    0.159E+00
DAV:   8    -0.679322057297E+03   -0.48618E-01   -0.11089E+00  5776   0.158E+00    0.672E-01
DAV:   9    -0.679347098803E+03   -0.25042E-01   -0.12381E-01  6064   0.504E-01    0.295E-01
DAV:  10    -0.679349686939E+03   -0.25881E-02   -0.88230E-03  6008   0.132E-01    0.124E-01
DAV:  11    -0.679351471994E+03   -0.17851E-02   -0.28501E-03  5776   0.781E-02    0.381E-02
DAV:  12    -0.679351537919E+03   -0.65926E-04   -0.45388E-04  6152   0.297E-02    0.187E-02
DAV:  13    -0.679351574129E+03   -0.36210E-04   -0.12278E-04  5784   0.163E-02    0.732E-03
DAV:  14    -0.679351580530E+03   -0.64006E-05   -0.11300E-05  6136   0.472E-03    0.199E-03
DAV:  15    -0.679351584010E+03   -0.34804E-05   -0.19715E-06  6184   0.215E-03    0.730E-04
DAV:  16    -0.679351583480E+03    0.53012E-06   -0.28513E-07  5992   0.765E-04    0.371E-04
DAV:  17    -0.679351583527E+03   -0.47359E-07   -0.42397E-08  5112   0.303E-04    0.154E-04
DAV:  18    -0.679351583713E+03   -0.18617E-06   -0.10593E-08  3376   0.166E-04    0.726E-05
DAV:  19    -0.679351583629E+03    0.84765E-07   -0.21573E-09  3272   0.767E-05    0.520E-05
DAV:  20    -0.679351583632E+03   -0.34706E-08   -0.35937E-10  3160   0.336E-05
   1 F= -.67935158E+03 E0= -.67935158E+03  d E =-.130127E-24
./CHG
./CHGCAR
./REPORT
