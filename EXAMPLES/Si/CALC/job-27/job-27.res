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
DAV:   1     0.138332214616E+04    0.13833E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.536152694597E+03   -0.19195E+04   -0.18257E+04  6104   0.187E+02
DAV:   3    -0.686160264561E+03   -0.15001E+03   -0.14691E+03  6296   0.454E+01
DAV:   4    -0.690486166155E+03   -0.43259E+01   -0.42902E+01  6184   0.930E+00
DAV:   5    -0.690636319712E+03   -0.15015E+00   -0.14975E+00  6352   0.165E+00    0.240E+01
DAV:   6    -0.682162499488E+03    0.84738E+01   -0.58426E+00  5904   0.303E+00    0.142E+01
DAV:   7    -0.678622887074E+03    0.35396E+01   -0.11352E+01  5960   0.408E+00    0.156E+00
DAV:   8    -0.678682245846E+03   -0.59359E-01   -0.11349E+00  5760   0.158E+00    0.633E-01
DAV:   9    -0.678703198739E+03   -0.20953E-01   -0.10595E-01  6080   0.481E-01    0.299E-01
DAV:  10    -0.678705690012E+03   -0.24913E-02   -0.10036E-02  5928   0.137E-01    0.111E-01
DAV:  11    -0.678707105712E+03   -0.14157E-02   -0.23173E-03  5832   0.711E-02    0.401E-02
DAV:  12    -0.678707161553E+03   -0.55841E-04   -0.51470E-04  6176   0.330E-02    0.191E-02
DAV:  13    -0.678707192347E+03   -0.30794E-04   -0.13564E-04  5768   0.170E-02    0.658E-03
DAV:  14    -0.678707198358E+03   -0.60110E-05   -0.13361E-05  6184   0.530E-03    0.213E-03
DAV:  15    -0.678707201574E+03   -0.32166E-05   -0.27433E-06  6080   0.265E-03    0.814E-04
DAV:  16    -0.678707201412E+03    0.16258E-06   -0.38518E-07  5968   0.923E-04    0.378E-04
DAV:  17    -0.678707201232E+03    0.17930E-06   -0.68528E-08  6104   0.409E-04    0.196E-04
DAV:  18    -0.678707201427E+03   -0.19464E-06   -0.17482E-08  3512   0.214E-04    0.891E-05
DAV:  19    -0.678707201358E+03    0.69002E-07   -0.35826E-09  3264   0.972E-05    0.578E-05
DAV:  20    -0.678707201379E+03   -0.20873E-07   -0.68881E-10  3160   0.436E-05    0.516E-05
DAV:  21    -0.678707201375E+03    0.34779E-08   -0.19832E-10  3152   0.278E-05
   1 F= -.67870720E+03 E0= -.67870720E+03  d E =-.263287E-16
./CHG
./CHGCAR
./REPORT
