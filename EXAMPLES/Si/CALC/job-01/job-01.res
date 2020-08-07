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
DAV:   1     0.138406905003E+04    0.13841E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.536405813097E+03   -0.19205E+04   -0.18265E+04  6104   0.187E+02
DAV:   3    -0.686874838985E+03   -0.15047E+03   -0.14745E+03  6288   0.455E+01
DAV:   4    -0.691107043305E+03   -0.42322E+01   -0.41979E+01  6184   0.923E+00
DAV:   5    -0.691254176911E+03   -0.14713E+00   -0.14673E+00  6320   0.165E+00    0.240E+01
DAV:   6    -0.682787811267E+03    0.84664E+01   -0.58750E+00  5896   0.298E+00    0.143E+01
DAV:   7    -0.679236358611E+03    0.35515E+01   -0.11138E+01  5792   0.401E+00    0.155E+00
DAV:   8    -0.679295588082E+03   -0.59229E-01   -0.10343E+00  5824   0.149E+00    0.608E-01
DAV:   9    -0.679317656808E+03   -0.22069E-01   -0.94815E-02  6184   0.449E-01    0.270E-01
DAV:  10    -0.679320317517E+03   -0.26607E-02   -0.82851E-03  5888   0.129E-01    0.996E-02
DAV:  11    -0.679321616353E+03   -0.12988E-02   -0.19319E-03  5832   0.646E-02    0.341E-02
DAV:  12    -0.679321703942E+03   -0.87589E-04   -0.38184E-04  6120   0.278E-02    0.178E-02
DAV:  13    -0.679321725465E+03   -0.21523E-04   -0.10143E-04  5736   0.148E-02    0.554E-03
DAV:  14    -0.679321730385E+03   -0.49200E-05   -0.71923E-06  6208   0.371E-03    0.160E-03
DAV:  15    -0.679321733243E+03   -0.28586E-05   -0.13182E-06  6120   0.174E-03    0.580E-04
DAV:  16    -0.679321732821E+03    0.42177E-06   -0.16847E-07  6072   0.602E-04    0.236E-04
DAV:  17    -0.679321732746E+03    0.75033E-07   -0.18957E-08  3680   0.224E-04    0.129E-04
DAV:  18    -0.679321732824E+03   -0.77840E-07   -0.72618E-09  3336   0.130E-04    0.656E-05
DAV:  19    -0.679321732798E+03    0.26499E-07   -0.13814E-09  3256   0.718E-05    0.531E-05
DAV:  20    -0.679321732810E+03   -0.12011E-07   -0.57650E-10  3152   0.359E-05    0.496E-05
DAV:  21    -0.679321732813E+03   -0.34797E-08   -0.11563E-10  3152   0.207E-05
   1 F= -.67932173E+03 E0= -.67932173E+03  d E =-.350649E-30
./CHG
./CHGCAR
./REPORT
