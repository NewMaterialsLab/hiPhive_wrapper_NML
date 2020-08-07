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
DAV:   1     0.138462313721E+04    0.13846E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537280357051E+03   -0.19219E+04   -0.18278E+04  6120   0.187E+02
DAV:   3    -0.686952213011E+03   -0.14967E+03   -0.14668E+03  6280   0.454E+01
DAV:   4    -0.691195212196E+03   -0.42430E+01   -0.42086E+01  6176   0.925E+00
DAV:   5    -0.691343145168E+03   -0.14793E+00   -0.14753E+00  6304   0.165E+00    0.240E+01
DAV:   6    -0.682739994664E+03    0.86032E+01   -0.62719E+00  5896   0.314E+00    0.143E+01
DAV:   7    -0.679223085237E+03    0.35169E+01   -0.11603E+01  5864   0.410E+00    0.161E+00
DAV:   8    -0.679269434750E+03   -0.46350E-01   -0.11399E+00  5848   0.158E+00    0.665E-01
DAV:   9    -0.679294862360E+03   -0.25428E-01   -0.11939E-01  6056   0.497E-01    0.288E-01
DAV:  10    -0.679297290665E+03   -0.24283E-02   -0.84555E-03  6088   0.131E-01    0.123E-01
DAV:  11    -0.679299008192E+03   -0.17175E-02   -0.27824E-03  5712   0.765E-02    0.383E-02
DAV:  12    -0.679299077787E+03   -0.69595E-04   -0.43556E-04  6152   0.296E-02    0.177E-02
DAV:  13    -0.679299113021E+03   -0.35233E-04   -0.12266E-04  5792   0.163E-02    0.624E-03
DAV:  14    -0.679299116329E+03   -0.33084E-05   -0.93505E-06  6120   0.433E-03    0.210E-03
DAV:  15    -0.679299120927E+03   -0.45981E-05   -0.20281E-06  6072   0.208E-03    0.697E-04
DAV:  16    -0.679299120223E+03    0.70397E-06   -0.18856E-07  6056   0.639E-04    0.312E-04
DAV:  17    -0.679299120220E+03    0.33633E-08   -0.34037E-08  4248   0.282E-04
   1 F= -.67929912E+03 E0= -.67929912E+03  d E =-.210824E-14
./CHG
./CHGCAR
./REPORT
