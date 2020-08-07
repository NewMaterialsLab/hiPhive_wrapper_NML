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
DAV:   1     0.138657657952E+04    0.13866E+04   -0.19084E+05  5152   0.127E+03
DAV:   2    -0.535855726928E+03   -0.19224E+04   -0.18296E+04  6128   0.187E+02
DAV:   3    -0.685031847354E+03   -0.14918E+03   -0.14615E+03  6304   0.454E+01
DAV:   4    -0.689230061438E+03   -0.41982E+01   -0.41628E+01  6176   0.919E+00
DAV:   5    -0.689376816411E+03   -0.14675E+00   -0.14634E+00  6344   0.164E+00    0.240E+01
DAV:   6    -0.680780160268E+03    0.85967E+01   -0.60793E+00  5856   0.306E+00    0.143E+01
DAV:   7    -0.677228263247E+03    0.35519E+01   -0.11547E+01  5816   0.408E+00    0.159E+00
DAV:   8    -0.677281253636E+03   -0.52990E-01   -0.11209E+00  5816   0.156E+00    0.632E-01
DAV:   9    -0.677303814095E+03   -0.22560E-01   -0.10361E-01  6128   0.471E-01    0.285E-01
DAV:  10    -0.677306363335E+03   -0.25492E-02   -0.90178E-03  5992   0.133E-01    0.110E-01
DAV:  11    -0.677307835936E+03   -0.14726E-02   -0.22723E-03  5792   0.701E-02    0.394E-02
DAV:  12    -0.677307889468E+03   -0.53532E-04   -0.44180E-04  6112   0.298E-02    0.180E-02
DAV:  13    -0.677307919922E+03   -0.30455E-04   -0.11875E-04  5760   0.159E-02    0.568E-03
DAV:  14    -0.677307923204E+03   -0.32820E-05   -0.77411E-06  6120   0.402E-03    0.196E-03
DAV:  15    -0.677307927236E+03   -0.40316E-05   -0.19605E-06  6064   0.207E-03    0.682E-04
DAV:  16    -0.677307926653E+03    0.58303E-06   -0.16921E-07  6096   0.596E-04    0.302E-04
DAV:  17    -0.677307926523E+03    0.13044E-06   -0.29354E-08  3856   0.269E-04    0.130E-04
DAV:  18    -0.677307926655E+03   -0.13249E-06   -0.79121E-09  3320   0.136E-04    0.684E-05
DAV:  19    -0.677307926615E+03    0.40085E-07   -0.16162E-09  3216   0.724E-05    0.551E-05
DAV:  20    -0.677307926617E+03   -0.21300E-08   -0.50023E-10  3184   0.366E-05
   1 F= -.67730793E+03 E0= -.67730793E+03  d E =-.909534E-24
./CHG
./CHGCAR
./REPORT
