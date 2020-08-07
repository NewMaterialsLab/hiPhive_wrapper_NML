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
DAV:   1     0.138702888409E+04    0.13870E+04   -0.19085E+05  5152   0.127E+03
DAV:   2    -0.534899934372E+03   -0.19219E+04   -0.18278E+04  6120   0.187E+02
DAV:   3    -0.684421741924E+03   -0.14952E+03   -0.14634E+03  6288   0.454E+01
DAV:   4    -0.688640345134E+03   -0.42186E+01   -0.41828E+01  6184   0.923E+00
DAV:   5    -0.688788447066E+03   -0.14810E+00   -0.14770E+00  6296   0.165E+00    0.241E+01
DAV:   6    -0.680103218436E+03    0.86852E+01   -0.62556E+00  5904   0.313E+00    0.143E+01
DAV:   7    -0.676551886030E+03    0.35513E+01   -0.11800E+01  5816   0.413E+00    0.162E+00
DAV:   8    -0.676600729918E+03   -0.48844E-01   -0.11679E+00  5776   0.160E+00    0.661E-01
DAV:   9    -0.676624724063E+03   -0.23994E-01   -0.11319E-01  6056   0.491E-01    0.291E-01
DAV:  10    -0.676627248756E+03   -0.25247E-02   -0.92221E-03  6048   0.136E-01    0.117E-01
DAV:  11    -0.676628849757E+03   -0.16010E-02   -0.25677E-03  5744   0.737E-02    0.406E-02
DAV:  12    -0.676628907855E+03   -0.58097E-04   -0.46999E-04  6104   0.310E-02    0.188E-02
DAV:  13    -0.676628942031E+03   -0.34176E-04   -0.13026E-04  5808   0.166E-02    0.597E-03
DAV:  14    -0.676628944510E+03   -0.24786E-05   -0.84902E-06  6136   0.422E-03    0.223E-03
DAV:  15    -0.676628949343E+03   -0.48332E-05   -0.22758E-06  6032   0.221E-03    0.766E-04
DAV:  16    -0.676628948667E+03    0.67577E-06   -0.20659E-07  6088   0.670E-04    0.342E-04
DAV:  17    -0.676628948488E+03    0.17871E-06   -0.39684E-08  4720   0.304E-04    0.148E-04
DAV:  18    -0.676628948622E+03   -0.13363E-06   -0.83542E-09  3312   0.138E-04    0.742E-05
DAV:  19    -0.676628948604E+03    0.17868E-07   -0.19112E-09  3208   0.737E-05    0.534E-05
DAV:  20    -0.676628948609E+03   -0.52787E-08   -0.42230E-10  3152   0.340E-05
   1 F= -.67662895E+03 E0= -.67662895E+03  d E =-.305003E-35
./CHG
./CHGCAR
./REPORT
