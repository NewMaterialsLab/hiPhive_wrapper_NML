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
DAV:   1     0.138322375820E+04    0.13832E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.536587857695E+03   -0.19198E+04   -0.18264E+04  6120   0.187E+02
DAV:   3    -0.685915279738E+03   -0.14933E+03   -0.14629E+03  6264   0.454E+01
DAV:   4    -0.690207688968E+03   -0.42924E+01   -0.42558E+01  6200   0.926E+00
DAV:   5    -0.690357818129E+03   -0.15013E+00   -0.14970E+00  6312   0.166E+00    0.239E+01
DAV:   6    -0.681895338400E+03    0.84625E+01   -0.59019E+00  5928   0.301E+00    0.142E+01
DAV:   7    -0.678364347122E+03    0.35310E+01   -0.11192E+01  5816   0.401E+00    0.156E+00
DAV:   8    -0.678419713455E+03   -0.55366E-01   -0.10636E+00  5872   0.152E+00    0.609E-01
DAV:   9    -0.678441350588E+03   -0.21637E-01   -0.10093E-01  6056   0.468E-01    0.281E-01
DAV:  10    -0.678443731092E+03   -0.23805E-02   -0.87484E-03  6056   0.131E-01    0.109E-01
DAV:  11    -0.678445108602E+03   -0.13775E-02   -0.22024E-03  5784   0.686E-02    0.386E-02
DAV:  12    -0.678445161663E+03   -0.53061E-04   -0.43323E-04  6152   0.298E-02    0.173E-02
DAV:  13    -0.678445189878E+03   -0.28215E-04   -0.11276E-04  5760   0.155E-02    0.524E-03
DAV:  14    -0.678445191940E+03   -0.20623E-05   -0.81455E-06  6128   0.424E-03    0.193E-03
DAV:  15    -0.678445195794E+03   -0.38537E-05   -0.21732E-06  6040   0.219E-03    0.647E-04
DAV:  16    -0.678445195342E+03    0.45183E-06   -0.16965E-07  6120   0.599E-04    0.308E-04
DAV:  17    -0.678445195184E+03    0.15838E-06   -0.29105E-08  3816   0.275E-04    0.139E-04
DAV:  18    -0.678445195333E+03   -0.14857E-06   -0.90196E-09  3328   0.145E-04    0.711E-05
DAV:  19    -0.678445195288E+03    0.44060E-07   -0.18314E-09  3232   0.788E-05    0.561E-05
DAV:  20    -0.678445195299E+03   -0.10339E-07   -0.58745E-10  3152   0.390E-05    0.507E-05
DAV:  21    -0.678445195301E+03   -0.21282E-08   -0.17291E-10  3152   0.230E-05
   1 F= -.67844520E+03 E0= -.67844520E+03  d E =-.463320E-14
./CHG
./CHGCAR
./REPORT
