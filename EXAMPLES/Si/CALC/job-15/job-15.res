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
DAV:   1     0.138411957191E+04    0.13841E+04   -0.19084E+05  5152   0.127E+03
DAV:   2    -0.536338330057E+03   -0.19205E+04   -0.18269E+04  6112   0.187E+02
DAV:   3    -0.686075302254E+03   -0.14974E+03   -0.14679E+03  6304   0.454E+01
DAV:   4    -0.690259968690E+03   -0.41847E+01   -0.41503E+01  6192   0.919E+00
DAV:   5    -0.690402508762E+03   -0.14254E+00   -0.14214E+00  6296   0.163E+00    0.240E+01
DAV:   6    -0.681932413222E+03    0.84701E+01   -0.58430E+00  5912   0.301E+00    0.143E+01
DAV:   7    -0.678391209904E+03    0.35412E+01   -0.11273E+01  5800   0.404E+00    0.156E+00
DAV:   8    -0.678447031059E+03   -0.55821E-01   -0.10723E+00  5824   0.153E+00    0.618E-01
DAV:   9    -0.678468927332E+03   -0.21896E-01   -0.10084E-01  6096   0.465E-01    0.283E-01
DAV:  10    -0.678471446753E+03   -0.25194E-02   -0.86941E-03  6056   0.130E-01    0.112E-01
DAV:  11    -0.678472920222E+03   -0.14735E-02   -0.22927E-03  5784   0.702E-02    0.391E-02
DAV:  12    -0.678472970643E+03   -0.50422E-04   -0.43627E-04  6112   0.298E-02    0.175E-02
DAV:  13    -0.678472999027E+03   -0.28384E-04   -0.11410E-04  5784   0.156E-02    0.592E-03
DAV:  14    -0.678473002424E+03   -0.33967E-05   -0.85134E-06  6168   0.429E-03    0.196E-03
DAV:  15    -0.678473006415E+03   -0.39913E-05   -0.21467E-06  6048   0.219E-03    0.699E-04
DAV:  16    -0.678473005913E+03    0.50236E-06   -0.19057E-07  6088   0.631E-04    0.319E-04
DAV:  17    -0.678473005716E+03    0.19652E-06   -0.34813E-08  4248   0.292E-04    0.148E-04
DAV:  18    -0.678473005868E+03   -0.15147E-06   -0.89165E-09  3328   0.145E-04    0.695E-05
DAV:  19    -0.678473005827E+03    0.40352E-07   -0.18962E-09  3200   0.777E-05    0.531E-05
DAV:  20    -0.678473005839E+03   -0.12064E-07   -0.50692E-10  3152   0.363E-05    0.490E-05
DAV:  21    -0.678473005838E+03    0.11623E-08   -0.14241E-10  3152   0.222E-05
   1 F= -.67847301E+03 E0= -.67847301E+03  d E =-.526543E-31
./CHG
./CHGCAR
./REPORT
