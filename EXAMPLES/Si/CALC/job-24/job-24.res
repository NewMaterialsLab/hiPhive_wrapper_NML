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
DAV:   1     0.138249811355E+04    0.13825E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.538433765508E+03   -0.19209E+04   -0.18266E+04  6120   0.187E+02
DAV:   3    -0.687967788073E+03   -0.14953E+03   -0.14655E+03  6296   0.454E+01
DAV:   4    -0.692110408003E+03   -0.41426E+01   -0.41093E+01  6152   0.916E+00
DAV:   5    -0.692252277178E+03   -0.14187E+00   -0.14147E+00  6320   0.163E+00    0.240E+01
DAV:   6    -0.683825774141E+03    0.84265E+01   -0.57820E+00  5944   0.302E+00    0.142E+01
DAV:   7    -0.680302331364E+03    0.35234E+01   -0.11250E+01  5896   0.405E+00    0.156E+00
DAV:   8    -0.680358399030E+03   -0.56068E-01   -0.10730E+00  5792   0.155E+00    0.627E-01
DAV:   9    -0.680380776981E+03   -0.22378E-01   -0.10970E-01  6064   0.480E-01    0.287E-01
DAV:  10    -0.680383302610E+03   -0.25256E-02   -0.87049E-03  6032   0.132E-01    0.117E-01
DAV:  11    -0.680384915206E+03   -0.16126E-02   -0.25595E-03  5760   0.736E-02    0.381E-02
DAV:  12    -0.680384977398E+03   -0.62191E-04   -0.45172E-04  6144   0.300E-02    0.188E-02
DAV:  13    -0.680385008184E+03   -0.30786E-04   -0.12003E-04  5736   0.162E-02    0.641E-03
DAV:  14    -0.680385013236E+03   -0.50520E-05   -0.10141E-05  6136   0.442E-03    0.187E-03
DAV:  15    -0.680385016768E+03   -0.35325E-05   -0.16951E-06  6128   0.206E-03    0.676E-04
DAV:  16    -0.680385016413E+03    0.35476E-06   -0.25582E-07  6040   0.737E-04    0.331E-04
DAV:  17    -0.680385016287E+03    0.12601E-06   -0.38637E-08  4696   0.310E-04    0.151E-04
DAV:  18    -0.680385016426E+03   -0.13843E-06   -0.10660E-08  3392   0.160E-04    0.755E-05
DAV:  19    -0.680385016358E+03    0.67537E-07   -0.21516E-09  3216   0.762E-05    0.577E-05
DAV:  20    -0.680385016380E+03   -0.21537E-07   -0.40910E-10  3168   0.355E-05    0.525E-05
DAV:  21    -0.680385016380E+03   -0.59299E-09   -0.16739E-10  3152   0.229E-05
   1 F= -.68038502E+03 E0= -.68038502E+03  d E =-.276079E-11
./CHG
./CHGCAR
./REPORT
