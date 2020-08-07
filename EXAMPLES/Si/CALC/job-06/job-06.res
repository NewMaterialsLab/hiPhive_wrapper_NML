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
DAV:   1     0.138309673512E+04    0.13831E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537843250186E+03   -0.19209E+04   -0.18270E+04  6120   0.187E+02
DAV:   3    -0.687230236682E+03   -0.14939E+03   -0.14648E+03  6296   0.454E+01
DAV:   4    -0.691380504822E+03   -0.41503E+01   -0.41158E+01  6184   0.916E+00
DAV:   5    -0.691526669744E+03   -0.14616E+00   -0.14575E+00  6320   0.164E+00    0.240E+01
DAV:   6    -0.683020839514E+03    0.85058E+01   -0.60579E+00  5888   0.305E+00    0.143E+01
DAV:   7    -0.679491326932E+03    0.35295E+01   -0.11291E+01  5768   0.404E+00    0.157E+00
DAV:   8    -0.679543853901E+03   -0.52527E-01   -0.10661E+00  5856   0.152E+00    0.638E-01
DAV:   9    -0.679568157792E+03   -0.24304E-01   -0.10685E-01  6120   0.473E-01    0.276E-01
DAV:  10    -0.679570713614E+03   -0.25558E-02   -0.83282E-03  6008   0.130E-01    0.111E-01
DAV:  11    -0.679572228217E+03   -0.15146E-02   -0.23151E-03  5752   0.702E-02    0.354E-02
DAV:  12    -0.679572323790E+03   -0.95572E-04   -0.40006E-04  6136   0.288E-02    0.178E-02
DAV:  13    -0.679572352305E+03   -0.28515E-04   -0.11201E-04  5744   0.156E-02    0.599E-03
DAV:  14    -0.679572356774E+03   -0.44688E-05   -0.77744E-06  6208   0.382E-03    0.175E-03
DAV:  15    -0.679572360310E+03   -0.35361E-05   -0.14083E-06  6112   0.179E-03    0.645E-04
DAV:  16    -0.679572359680E+03    0.63003E-06   -0.17869E-07  6040   0.621E-04    0.241E-04
DAV:  17    -0.679572359727E+03   -0.47026E-07   -0.21510E-08  3688   0.229E-04    0.117E-04
DAV:  18    -0.679572359824E+03   -0.96588E-07   -0.54179E-09  3336   0.117E-04    0.606E-05
DAV:  19    -0.679572359777E+03    0.46310E-07   -0.11829E-09  3272   0.604E-05    0.503E-05
DAV:  20    -0.679572359780E+03   -0.25557E-08   -0.36665E-10  3192   0.312E-05
   1 F= -.67957236E+03 E0= -.67957236E+03  d E =-.294431E-30
./CHG
./CHGCAR
./REPORT
