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
DAV:   1     0.138203662891E+04    0.13820E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.537616840818E+03   -0.19197E+04   -0.18256E+04  6112   0.187E+02
DAV:   3    -0.687149214473E+03   -0.14953E+03   -0.14655E+03  6280   0.454E+01
DAV:   4    -0.691424749026E+03   -0.42755E+01   -0.42404E+01  6168   0.926E+00
DAV:   5    -0.691575595896E+03   -0.15085E+00   -0.15046E+00  6320   0.165E+00    0.239E+01
DAV:   6    -0.683217992860E+03    0.83576E+01   -0.56281E+00  5888   0.292E+00    0.142E+01
DAV:   7    -0.679680507936E+03    0.35375E+01   -0.10982E+01  5832   0.398E+00    0.152E+00
DAV:   8    -0.679742792171E+03   -0.62284E-01   -0.10197E+00  5816   0.149E+00    0.583E-01
DAV:   9    -0.679762393193E+03   -0.19601E-01   -0.92310E-02  6104   0.450E-01    0.280E-01
DAV:  10    -0.679764948362E+03   -0.25552E-02   -0.93934E-03  5968   0.134E-01    0.975E-02
DAV:  11    -0.679766158436E+03   -0.12101E-02   -0.18891E-03  5848   0.646E-02    0.365E-02
DAV:  12    -0.679766220979E+03   -0.62543E-04   -0.41923E-04  6136   0.289E-02    0.181E-02
DAV:  13    -0.679766246755E+03   -0.25776E-04   -0.10566E-04  5752   0.151E-02    0.492E-03
DAV:  14    -0.679766251124E+03   -0.43694E-05   -0.87123E-06  6248   0.419E-03    0.172E-03
DAV:  15    -0.679766253611E+03   -0.24870E-05   -0.16856E-06  6080   0.201E-03    0.617E-04
DAV:  16    -0.679766253418E+03    0.19353E-06   -0.20837E-07  6040   0.678E-04    0.259E-04
DAV:  17    -0.679766253295E+03    0.12263E-06   -0.29113E-08  4048   0.274E-04    0.143E-04
DAV:  18    -0.679766253384E+03   -0.89440E-07   -0.87254E-09  3344   0.149E-04    0.735E-05
DAV:  19    -0.679766253351E+03    0.33735E-07   -0.18429E-09  3240   0.781E-05    0.548E-05
DAV:  20    -0.679766253363E+03   -0.12345E-07   -0.62532E-10  3176   0.370E-05    0.522E-05
DAV:  21    -0.679766253368E+03   -0.46239E-08   -0.14523E-10  3160   0.234E-05
   1 F= -.67976625E+03 E0= -.67976625E+03  d E =-.329667E-36
./CHG
./CHGCAR
./REPORT
