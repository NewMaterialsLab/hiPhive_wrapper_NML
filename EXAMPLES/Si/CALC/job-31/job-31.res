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
DAV:   1     0.138429637189E+04    0.13843E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.536630314041E+03   -0.19209E+04   -0.18267E+04  6104   0.187E+02
DAV:   3    -0.686723052730E+03   -0.15009E+03   -0.14704E+03  6280   0.455E+01
DAV:   4    -0.691032146095E+03   -0.43091E+01   -0.42732E+01  6192   0.928E+00
DAV:   5    -0.691184739553E+03   -0.15259E+00   -0.15214E+00  6288   0.167E+00    0.240E+01
DAV:   6    -0.682723447926E+03    0.84613E+01   -0.59034E+00  5912   0.302E+00    0.143E+01
DAV:   7    -0.679192998017E+03    0.35304E+01   -0.11211E+01  5864   0.403E+00    0.156E+00
DAV:   8    -0.679247480842E+03   -0.54483E-01   -0.10702E+00  5824   0.153E+00    0.617E-01
DAV:   9    -0.679269841579E+03   -0.22361E-01   -0.10307E-01  6072   0.468E-01    0.282E-01
DAV:  10    -0.679272373225E+03   -0.25316E-02   -0.85851E-03  6000   0.130E-01    0.110E-01
DAV:  11    -0.679273842461E+03   -0.14692E-02   -0.22845E-03  5800   0.697E-02    0.373E-02
DAV:  12    -0.679273906527E+03   -0.64065E-04   -0.42031E-04  6168   0.291E-02    0.181E-02
DAV:  13    -0.679273934205E+03   -0.27678E-04   -0.11026E-04  5704   0.154E-02    0.561E-03
DAV:  14    -0.679273937754E+03   -0.35491E-05   -0.79793E-06  6168   0.405E-03    0.184E-03
DAV:  15    -0.679273941438E+03   -0.36842E-05   -0.17364E-06  6032   0.200E-03    0.640E-04
DAV:  16    -0.679273941015E+03    0.42357E-06   -0.18713E-07  6072   0.627E-04    0.299E-04
DAV:  17    -0.679273940855E+03    0.15975E-06   -0.26953E-08  3760   0.272E-04    0.141E-04
DAV:  18    -0.679273940964E+03   -0.10865E-06   -0.10703E-08  3336   0.151E-04    0.801E-05
DAV:  19    -0.679273940929E+03    0.34453E-07   -0.19094E-09  3248   0.884E-05    0.573E-05
DAV:  20    -0.679273940948E+03   -0.18721E-07   -0.84117E-10  3184   0.428E-05    0.525E-05
DAV:  21    -0.679273940951E+03   -0.30559E-08   -0.15451E-10  3152   0.234E-05
   1 F= -.67927394E+03 E0= -.67927394E+03  d E =-.128106E-36
./CHG
./CHGCAR
./REPORT
