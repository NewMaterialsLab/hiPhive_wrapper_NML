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
DAV:   1     0.138576656626E+04    0.13858E+04   -0.19084E+05  5152   0.127E+03
DAV:   2    -0.535327742257E+03   -0.19211E+04   -0.18272E+04  6112   0.187E+02
DAV:   3    -0.685297340760E+03   -0.14997E+03   -0.14690E+03  6296   0.455E+01
DAV:   4    -0.689631780952E+03   -0.43344E+01   -0.42990E+01  6192   0.931E+00
DAV:   5    -0.689784280970E+03   -0.15250E+00   -0.15208E+00  6320   0.166E+00    0.240E+01
DAV:   6    -0.681211474625E+03    0.85728E+01   -0.61323E+00  5912   0.308E+00    0.143E+01
DAV:   7    -0.677675529473E+03    0.35359E+01   -0.11465E+01  5816   0.408E+00    0.159E+00
DAV:   8    -0.677725382867E+03   -0.49853E-01   -0.11248E+00  5816   0.156E+00    0.635E-01
DAV:   9    -0.677748639325E+03   -0.23256E-01   -0.10584E-01  6088   0.474E-01    0.281E-01
DAV:  10    -0.677751154138E+03   -0.25148E-02   -0.83448E-03  6056   0.129E-01    0.116E-01
DAV:  11    -0.677752712065E+03   -0.15579E-02   -0.25160E-03  5728   0.730E-02    0.386E-02
DAV:  12    -0.677752766057E+03   -0.53992E-04   -0.43033E-04  6136   0.296E-02    0.180E-02
DAV:  13    -0.677752797993E+03   -0.31936E-04   -0.11901E-04  5792   0.160E-02    0.569E-03
DAV:  14    -0.677752800322E+03   -0.23285E-05   -0.82934E-06  6112   0.420E-03    0.206E-03
DAV:  15    -0.677752804877E+03   -0.45548E-05   -0.21609E-06  6072   0.215E-03    0.695E-04
DAV:  16    -0.677752804208E+03    0.66858E-06   -0.17889E-07  6096   0.628E-04    0.309E-04
DAV:  17    -0.677752804055E+03    0.15348E-06   -0.38973E-08  4656   0.295E-04    0.133E-04
DAV:  18    -0.677752804177E+03   -0.12198E-06   -0.66613E-09  3320   0.125E-04    0.683E-05
DAV:  19    -0.677752804144E+03    0.32414E-07   -0.16021E-09  3232   0.667E-05    0.538E-05
DAV:  20    -0.677752804147E+03   -0.27521E-08   -0.32957E-10  3160   0.293E-05
   1 F= -.67775280E+03 E0= -.67775280E+03  d E =-.227189E-27
./CHG
./CHGCAR
./REPORT
