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
DAV:   1     0.138720652689E+04    0.13872E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.531967818081E+03   -0.19192E+04   -0.18252E+04  6104   0.187E+02
DAV:   3    -0.682552937282E+03   -0.15059E+03   -0.14735E+03  6328   0.455E+01
DAV:   4    -0.686834014915E+03   -0.42811E+01   -0.42455E+01  6160   0.926E+00
DAV:   5    -0.686981946166E+03   -0.14793E+00   -0.14754E+00  6360   0.165E+00    0.240E+01
DAV:   6    -0.678213380259E+03    0.87686E+01   -0.63270E+00  5912   0.319E+00    0.143E+01
DAV:   7    -0.674666142471E+03    0.35472E+01   -0.12175E+01  5928   0.422E+00    0.166E+00
DAV:   8    -0.674711231432E+03   -0.45089E-01   -0.13026E+00  5824   0.170E+00    0.678E-01
DAV:   9    -0.674733764657E+03   -0.22533E-01   -0.12199E-01  6032   0.515E-01    0.314E-01
DAV:  10    -0.674736267890E+03   -0.25032E-02   -0.11022E-02  6040   0.146E-01    0.121E-01
DAV:  11    -0.674737935503E+03   -0.16676E-02   -0.29014E-03  5744   0.783E-02    0.457E-02
DAV:  12    -0.674737955481E+03   -0.19977E-04   -0.56975E-04  6104   0.345E-02    0.214E-02
DAV:  13    -0.674737998235E+03   -0.42754E-04   -0.16532E-04  5744   0.183E-02    0.636E-03
DAV:  14    -0.674737999674E+03   -0.14388E-05   -0.98776E-06  6184   0.502E-03    0.269E-03
DAV:  15    -0.674738004804E+03   -0.51308E-05   -0.35511E-06  6024   0.273E-03    0.732E-04
DAV:  16    -0.674738004536E+03    0.26853E-06   -0.28141E-07  6464   0.755E-04    0.488E-04
DAV:  17    -0.674738004198E+03    0.33794E-06   -0.67221E-08  5840   0.393E-04    0.174E-04
DAV:  18    -0.674738004350E+03   -0.15220E-06   -0.13166E-08  3328   0.182E-04    0.858E-05
DAV:  19    -0.674738004355E+03   -0.47839E-08   -0.28816E-09  3248   0.867E-05
   1 F= -.67473800E+03 E0= -.67473800E+03  d E =-.734519E-21
./CHG
./CHGCAR
./REPORT
