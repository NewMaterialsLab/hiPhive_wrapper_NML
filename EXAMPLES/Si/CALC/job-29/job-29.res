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
DAV:   1     0.138422515025E+04    0.13842E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.535093914248E+03   -0.19193E+04   -0.18255E+04  6104   0.187E+02
DAV:   3    -0.685163715893E+03   -0.15007E+03   -0.14692E+03  6296   0.454E+01
DAV:   4    -0.689441590477E+03   -0.42779E+01   -0.42426E+01  6176   0.925E+00
DAV:   5    -0.689591228271E+03   -0.14964E+00   -0.14923E+00  6320   0.166E+00    0.240E+01
DAV:   6    -0.681089539339E+03    0.85017E+01   -0.59003E+00  5904   0.301E+00    0.142E+01
DAV:   7    -0.677540691548E+03    0.35488E+01   -0.11275E+01  5800   0.404E+00    0.156E+00
DAV:   8    -0.677596760998E+03   -0.56069E-01   -0.10646E+00  5880   0.152E+00    0.628E-01
DAV:   9    -0.677619159777E+03   -0.22399E-01   -0.99064E-02  6088   0.459E-01    0.276E-01
DAV:  10    -0.677621709052E+03   -0.25493E-02   -0.85992E-03  6064   0.131E-01    0.105E-01
DAV:  11    -0.677623081244E+03   -0.13722E-02   -0.20228E-03  5832   0.665E-02    0.360E-02
DAV:  12    -0.677623172717E+03   -0.91473E-04   -0.40952E-04  6128   0.294E-02    0.183E-02
DAV:  13    -0.677623198169E+03   -0.25452E-04   -0.11147E-04  5736   0.154E-02    0.567E-03
DAV:  14    -0.677623202532E+03   -0.43636E-05   -0.78784E-06  6200   0.396E-03    0.179E-03
DAV:  15    -0.677623205962E+03   -0.34296E-05   -0.16114E-06  6072   0.194E-03    0.671E-04
DAV:  16    -0.677623205442E+03    0.51971E-06   -0.19033E-07  6096   0.644E-04    0.248E-04
DAV:  17    -0.677623205372E+03    0.70439E-07   -0.24790E-08  3840   0.249E-04    0.130E-04
DAV:  18    -0.677623205450E+03   -0.78551E-07   -0.70068E-09  3336   0.127E-04    0.657E-05
DAV:  19    -0.677623205426E+03    0.24866E-07   -0.14301E-09  3272   0.702E-05    0.517E-05
DAV:  20    -0.677623205435E+03   -0.89822E-08   -0.55736E-10  3176   0.350E-05
   1 F= -.67762321E+03 E0= -.67762321E+03  d E =-.267204E-15
./CHG
./CHGCAR
./REPORT
