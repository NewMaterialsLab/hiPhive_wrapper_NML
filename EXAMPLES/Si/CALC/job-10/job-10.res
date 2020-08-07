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
DAV:   1     0.138415125923E+04    0.13842E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537462294186E+03   -0.19216E+04   -0.18278E+04  6112   0.187E+02
DAV:   3    -0.687343347274E+03   -0.14988E+03   -0.14691E+03  6272   0.454E+01
DAV:   4    -0.691650915445E+03   -0.43076E+01   -0.42722E+01  6192   0.929E+00
DAV:   5    -0.691803246728E+03   -0.15233E+00   -0.15194E+00  6352   0.166E+00    0.240E+01
DAV:   6    -0.683347157656E+03    0.84561E+01   -0.58414E+00  5896   0.301E+00    0.143E+01
DAV:   7    -0.679809408555E+03    0.35377E+01   -0.11277E+01  5824   0.405E+00    0.156E+00
DAV:   8    -0.679866468560E+03   -0.57060E-01   -0.10816E+00  5808   0.154E+00    0.617E-01
DAV:   9    -0.679888301740E+03   -0.21833E-01   -0.10208E-01  6088   0.470E-01    0.286E-01
DAV:  10    -0.679890863545E+03   -0.25618E-02   -0.90570E-03  5968   0.132E-01    0.110E-01
DAV:  11    -0.679892318468E+03   -0.14549E-02   -0.22472E-03  5816   0.695E-02    0.389E-02
DAV:  12    -0.679892372360E+03   -0.53892E-04   -0.43248E-04  6096   0.299E-02    0.175E-02
DAV:  13    -0.679892401072E+03   -0.28713E-04   -0.11499E-04  5792   0.156E-02    0.558E-03
DAV:  14    -0.679892404117E+03   -0.30447E-05   -0.82749E-06  6160   0.430E-03    0.196E-03
DAV:  15    -0.679892408078E+03   -0.39610E-05   -0.21863E-06  6040   0.221E-03    0.678E-04
DAV:  16    -0.679892407657E+03    0.42136E-06   -0.18926E-07  6064   0.631E-04    0.341E-04
DAV:  17    -0.679892407427E+03    0.22939E-06   -0.36455E-08  4456   0.300E-04    0.155E-04
DAV:  18    -0.679892407597E+03   -0.16913E-06   -0.97566E-09  3296   0.154E-04    0.698E-05
DAV:  19    -0.679892407550E+03    0.46506E-07   -0.21263E-09  3176   0.770E-05    0.533E-05
DAV:  20    -0.679892407565E+03   -0.14525E-07   -0.45169E-10  3176   0.365E-05    0.478E-05
DAV:  21    -0.679892407564E+03    0.93860E-09   -0.18284E-10  3168   0.234E-05
   1 F= -.67989241E+03 E0= -.67989241E+03  d E =-.405223E-11
./CHG
./CHGCAR
./REPORT
