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
DAV:   1     0.138418588982E+04    0.13842E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537066510778E+03   -0.19213E+04   -0.18275E+04  6120   0.187E+02
DAV:   3    -0.686446683928E+03   -0.14938E+03   -0.14635E+03  6288   0.454E+01
DAV:   4    -0.690651057557E+03   -0.42044E+01   -0.41697E+01  6184   0.920E+00
DAV:   5    -0.690797621343E+03   -0.14656E+00   -0.14618E+00  6328   0.165E+00    0.240E+01
DAV:   6    -0.682323370720E+03    0.84743E+01   -0.58656E+00  5896   0.300E+00    0.143E+01
DAV:   7    -0.678783091516E+03    0.35403E+01   -0.11247E+01  5776   0.402E+00    0.156E+00
DAV:   8    -0.678837379012E+03   -0.54287E-01   -0.10253E+00  5880   0.151E+00    0.619E-01
DAV:   9    -0.678860724275E+03   -0.23345E-01   -0.10456E-01  6080   0.469E-01    0.277E-01
DAV:  10    -0.678863245824E+03   -0.25215E-02   -0.84815E-03  6096   0.130E-01    0.110E-01
DAV:  11    -0.678864744404E+03   -0.14986E-02   -0.23043E-03  5736   0.703E-02    0.370E-02
DAV:  12    -0.678864808418E+03   -0.64014E-04   -0.40572E-04  6136   0.282E-02    0.176E-02
DAV:  13    -0.678864837695E+03   -0.29277E-04   -0.10745E-04  5792   0.155E-02    0.543E-03
DAV:  14    -0.678864841661E+03   -0.39667E-05   -0.79013E-06  6152   0.382E-03    0.173E-03
DAV:  15    -0.678864844940E+03   -0.32785E-05   -0.14261E-06  6128   0.184E-03    0.621E-04
DAV:  16    -0.678864844309E+03    0.63110E-06   -0.18839E-07  6064   0.623E-04    0.254E-04
DAV:  17    -0.678864844409E+03   -0.10003E-06   -0.20072E-08  3584   0.219E-04    0.114E-04
DAV:  18    -0.678864844489E+03   -0.80039E-07   -0.55595E-09  3328   0.120E-04    0.617E-05
DAV:  19    -0.678864844439E+03    0.49844E-07   -0.11750E-09  3288   0.606E-05    0.492E-05
DAV:  20    -0.678864844437E+03    0.22465E-08   -0.37138E-10  3176   0.302E-05
   1 F= -.67886484E+03 E0= -.67886484E+03  d E =-.291952E-29
./CHG
./CHGCAR
./REPORT
