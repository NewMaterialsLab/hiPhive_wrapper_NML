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
DAV:   1     0.138457999363E+04    0.13846E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.535235768735E+03   -0.19198E+04   -0.18257E+04  6112   0.187E+02
DAV:   3    -0.685087125816E+03   -0.14985E+03   -0.14666E+03  6312   0.454E+01
DAV:   4    -0.689355806737E+03   -0.42687E+01   -0.42329E+01  6184   0.926E+00
DAV:   5    -0.689505611322E+03   -0.14980E+00   -0.14937E+00  6336   0.165E+00    0.240E+01
DAV:   6    -0.680900928755E+03    0.86047E+01   -0.61950E+00  5872   0.312E+00    0.142E+01
DAV:   7    -0.677372541501E+03    0.35284E+01   -0.11504E+01  5912   0.408E+00    0.160E+00
DAV:   8    -0.677421026977E+03   -0.48485E-01   -0.10641E+00  5800   0.154E+00    0.684E-01
DAV:   9    -0.677447301410E+03   -0.26274E-01   -0.12112E-01  6088   0.491E-01    0.276E-01
DAV:  10    -0.677449664244E+03   -0.23628E-02   -0.76942E-03  6056   0.130E-01    0.123E-01
DAV:  11    -0.677451397718E+03   -0.17335E-02   -0.28411E-03  5728   0.773E-02    0.353E-02
DAV:  12    -0.677451514864E+03   -0.11715E-03   -0.42628E-04  6152   0.292E-02    0.180E-02
DAV:  13    -0.677451547060E+03   -0.32197E-04   -0.10768E-04  5792   0.156E-02    0.653E-03
DAV:  14    -0.677451553133E+03   -0.60729E-05   -0.10233E-05  6160   0.430E-03    0.180E-03
DAV:  15    -0.677451556442E+03   -0.33085E-05   -0.12525E-06  6392   0.173E-03    0.710E-04
DAV:  16    -0.677451555687E+03    0.75439E-06   -0.24031E-07  5960   0.707E-04    0.293E-04
DAV:  17    -0.677451555899E+03   -0.21164E-06   -0.23923E-08  3800   0.233E-04    0.118E-04
DAV:  18    -0.677451555976E+03   -0.76536E-07   -0.54039E-09  3336   0.121E-04    0.651E-05
DAV:  19    -0.677451555919E+03    0.56210E-07   -0.12358E-09  3240   0.608E-05    0.516E-05
DAV:  20    -0.677451555910E+03    0.95388E-08   -0.35591E-10  3176   0.310E-05
   1 F= -.67745156E+03 E0= -.67745156E+03  d E =-.207692E-15
./CHG
./CHGCAR
./REPORT
