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
DAV:   1     0.138317577991E+04    0.13832E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537017573193E+03   -0.19202E+04   -0.18265E+04  6112   0.187E+02
DAV:   3    -0.686831805001E+03   -0.14981E+03   -0.14688E+03  6296   0.454E+01
DAV:   4    -0.691017248815E+03   -0.41854E+01   -0.41510E+01  6200   0.919E+00
DAV:   5    -0.691159463633E+03   -0.14221E+00   -0.14180E+00  6264   0.163E+00    0.240E+01
DAV:   6    -0.682769733935E+03    0.83897E+01   -0.57916E+00  5904   0.298E+00    0.142E+01
DAV:   7    -0.679246484155E+03    0.35232E+01   -0.11030E+01  5792   0.399E+00    0.154E+00
DAV:   8    -0.679301167872E+03   -0.54684E-01   -0.10063E+00  5792   0.148E+00    0.620E-01
DAV:   9    -0.679324475326E+03   -0.23307E-01   -0.10151E-01  6152   0.457E-01    0.269E-01
DAV:  10    -0.679326929289E+03   -0.24540E-02   -0.74110E-03  5960   0.124E-01    0.111E-01
DAV:  11    -0.679328422543E+03   -0.14933E-02   -0.22958E-03  5840   0.705E-02    0.344E-02
DAV:  12    -0.679328509144E+03   -0.86601E-04   -0.39051E-04  6136   0.278E-02    0.173E-02
DAV:  13    -0.679328536469E+03   -0.27325E-04   -0.98817E-05  5760   0.149E-02    0.610E-03
DAV:  14    -0.679328542331E+03   -0.58617E-05   -0.95034E-06  6128   0.417E-03    0.166E-03
DAV:  15    -0.679328545192E+03   -0.28613E-05   -0.12601E-06  6208   0.177E-03    0.633E-04
DAV:  16    -0.679328544641E+03    0.55138E-06   -0.20549E-07  6016   0.653E-04    0.243E-04
DAV:  17    -0.679328544668E+03   -0.27798E-07   -0.21299E-08  3720   0.228E-04    0.127E-04
DAV:  18    -0.679328544760E+03   -0.91655E-07   -0.60900E-09  3328   0.123E-04    0.640E-05
DAV:  19    -0.679328544713E+03    0.46706E-07   -0.12418E-09  3240   0.648E-05    0.516E-05
DAV:  20    -0.679328544716E+03   -0.24902E-08   -0.42772E-10  3168   0.326E-05
   1 F= -.67932854E+03 E0= -.67932854E+03  d E =-.126612E-18
./CHG
./CHGCAR
./REPORT
