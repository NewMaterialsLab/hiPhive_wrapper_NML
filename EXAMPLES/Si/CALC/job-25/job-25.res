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
DAV:   1     0.138300741852E+04    0.13830E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.537686258319E+03   -0.19207E+04   -0.18271E+04  6120   0.187E+02
DAV:   3    -0.687132304051E+03   -0.14945E+03   -0.14644E+03  6288   0.454E+01
DAV:   4    -0.691328773121E+03   -0.41965E+01   -0.41615E+01  6192   0.919E+00
DAV:   5    -0.691471740288E+03   -0.14297E+00   -0.14254E+00  6296   0.163E+00    0.240E+01
DAV:   6    -0.683095086520E+03    0.83767E+01   -0.56926E+00  5912   0.293E+00    0.142E+01
DAV:   7    -0.679552993193E+03    0.35421E+01   -0.10912E+01  5760   0.396E+00    0.152E+00
DAV:   8    -0.679613204864E+03   -0.60212E-01   -0.98945E-01  5840   0.146E+00    0.584E-01
DAV:   9    -0.679634227395E+03   -0.21023E-01   -0.92370E-02  6144   0.448E-01    0.269E-01
DAV:  10    -0.679636809414E+03   -0.25820E-02   -0.86096E-03  5984   0.130E-01    0.981E-02
DAV:  11    -0.679638035121E+03   -0.12257E-02   -0.18749E-03  5832   0.644E-02    0.344E-02
DAV:  12    -0.679638113796E+03   -0.78675E-04   -0.40108E-04  6152   0.283E-02    0.176E-02
DAV:  13    -0.679638137564E+03   -0.23768E-04   -0.99824E-05  5760   0.148E-02    0.543E-03
DAV:  14    -0.679638143356E+03   -0.57921E-05   -0.90490E-06  6208   0.407E-03    0.161E-03
DAV:  15    -0.679638145561E+03   -0.22052E-05   -0.13472E-06  6128   0.186E-03    0.628E-04
DAV:  16    -0.679638145290E+03    0.27049E-06   -0.22458E-07  5992   0.711E-04    0.241E-04
DAV:  17    -0.679638145253E+03    0.37035E-07   -0.28105E-08  4064   0.257E-04    0.141E-04
DAV:  18    -0.679638145328E+03   -0.74928E-07   -0.71892E-09  3336   0.136E-04    0.693E-05
DAV:  19    -0.679638145299E+03    0.28956E-07   -0.17051E-09  3264   0.727E-05    0.536E-05
DAV:  20    -0.679638145305E+03   -0.55425E-08   -0.54417E-10  3168   0.344E-05
   1 F= -.67963815E+03 E0= -.67963815E+03  d E =-.101261E-15
./CHG
./CHGCAR
./REPORT
