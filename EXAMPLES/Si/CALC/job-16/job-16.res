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
DAV:   1     0.138420693844E+04    0.13842E+04   -0.19084E+05  5152   0.127E+03
DAV:   2    -0.536316330049E+03   -0.19205E+04   -0.18259E+04  6104   0.187E+02
DAV:   3    -0.686395149164E+03   -0.15008E+03   -0.14702E+03  6296   0.454E+01
DAV:   4    -0.690649853200E+03   -0.42547E+01   -0.42199E+01  6184   0.924E+00
DAV:   5    -0.690798229079E+03   -0.14838E+00   -0.14795E+00  6272   0.165E+00    0.240E+01
DAV:   6    -0.682285490660E+03    0.85127E+01   -0.59103E+00  5920   0.304E+00    0.143E+01
DAV:   7    -0.678732218875E+03    0.35533E+01   -0.11433E+01  5960   0.410E+00    0.156E+00
DAV:   8    -0.678791995429E+03   -0.59777E-01   -0.11525E+00  5808   0.158E+00    0.629E-01
DAV:   9    -0.678812929437E+03   -0.20934E-01   -0.10287E-01  6064   0.473E-01    0.295E-01
DAV:  10    -0.678815396493E+03   -0.24671E-02   -0.98164E-03  5904   0.136E-01    0.111E-01
DAV:  11    -0.678816801814E+03   -0.14053E-02   -0.22669E-03  5880   0.707E-02    0.400E-02
DAV:  12    -0.678816862992E+03   -0.61178E-04   -0.52046E-04  6152   0.334E-02    0.193E-02
DAV:  13    -0.678816894390E+03   -0.31398E-04   -0.14073E-04  5792   0.173E-02    0.678E-03
DAV:  14    -0.678816899813E+03   -0.54237E-05   -0.12558E-05  6184   0.520E-03    0.219E-03
DAV:  15    -0.678816903715E+03   -0.39017E-05   -0.27665E-06  6080   0.266E-03    0.806E-04
DAV:  16    -0.678816903462E+03    0.25321E-06   -0.33725E-07  6024   0.868E-04    0.377E-04
DAV:  17    -0.678816903197E+03    0.26488E-06   -0.68572E-08  6072   0.399E-04    0.194E-04
DAV:  18    -0.678816903399E+03   -0.20155E-06   -0.14934E-08  3408   0.198E-04    0.845E-05
DAV:  19    -0.678816903328E+03    0.70428E-07   -0.33217E-09  3248   0.934E-05    0.577E-05
DAV:  20    -0.678816903351E+03   -0.22897E-07   -0.62201E-10  3176   0.408E-05    0.523E-05
DAV:  21    -0.678816903348E+03    0.31505E-08   -0.16669E-10  3152   0.277E-05
   1 F= -.67881690E+03 E0= -.67881690E+03  d E =-.356089E-34
./CHG
./CHGCAR
./REPORT
