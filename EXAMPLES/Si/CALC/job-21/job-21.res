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
DAV:   1     0.138358416171E+04    0.13836E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.535860176921E+03   -0.19194E+04   -0.18253E+04  6096   0.187E+02
DAV:   3    -0.686399409772E+03   -0.15054E+03   -0.14756E+03  6328   0.455E+01
DAV:   4    -0.690590777886E+03   -0.41914E+01   -0.41583E+01  6184   0.919E+00
DAV:   5    -0.690734248120E+03   -0.14347E+00   -0.14307E+00  6296   0.164E+00    0.240E+01
DAV:   6    -0.682220398414E+03    0.85138E+01   -0.59680E+00  5920   0.303E+00    0.142E+01
DAV:   7    -0.678686034678E+03    0.35344E+01   -0.11375E+01  5776   0.406E+00    0.158E+00
DAV:   8    -0.678740026066E+03   -0.53991E-01   -0.11216E+00  5808   0.156E+00    0.616E-01
DAV:   9    -0.678761098323E+03   -0.21072E-01   -0.10128E-01  6128   0.471E-01    0.289E-01
DAV:  10    -0.678763676851E+03   -0.25785E-02   -0.97550E-03  5976   0.138E-01    0.107E-01
DAV:  11    -0.678765063383E+03   -0.13865E-02   -0.22615E-03  5848   0.703E-02    0.391E-02
DAV:  12    -0.678765122125E+03   -0.58742E-04   -0.48017E-04  6096   0.312E-02    0.191E-02
DAV:  13    -0.678765154159E+03   -0.32034E-04   -0.12451E-04  5752   0.164E-02    0.576E-03
DAV:  14    -0.678765158388E+03   -0.42298E-05   -0.95276E-06  6208   0.434E-03    0.194E-03
DAV:  15    -0.678765161850E+03   -0.34615E-05   -0.19639E-06  6104   0.217E-03    0.686E-04
DAV:  16    -0.678765161500E+03    0.34936E-06   -0.23475E-07  6096   0.707E-04    0.317E-04
DAV:  17    -0.678765161333E+03    0.16786E-06   -0.39814E-08  4840   0.311E-04    0.157E-04
DAV:  18    -0.678765161477E+03   -0.14390E-06   -0.10252E-08  3416   0.160E-04    0.748E-05
DAV:  19    -0.678765161434E+03    0.42950E-07   -0.22311E-09  3280   0.779E-05    0.529E-05
DAV:  20    -0.678765161453E+03   -0.18990E-07   -0.42855E-10  3192   0.363E-05    0.481E-05
DAV:  21    -0.678765161449E+03    0.30705E-08   -0.17079E-10  3152   0.242E-05
   1 F= -.67876516E+03 E0= -.67876516E+03  d E =-.174651E-24
./CHG
./CHGCAR
./REPORT