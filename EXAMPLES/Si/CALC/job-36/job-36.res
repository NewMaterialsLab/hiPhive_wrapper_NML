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
DAV:   1     0.138348062331E+04    0.13835E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.537626756485E+03   -0.19211E+04   -0.18271E+04  6128   0.187E+02
DAV:   3    -0.686767597667E+03   -0.14914E+03   -0.14613E+03  6264   0.453E+01
DAV:   4    -0.690965782205E+03   -0.41982E+01   -0.41635E+01  6176   0.921E+00
DAV:   5    -0.691112772825E+03   -0.14699E+00   -0.14658E+00  6304   0.165E+00    0.240E+01
DAV:   6    -0.682633351163E+03    0.84794E+01   -0.58671E+00  5888   0.303E+00    0.142E+01
DAV:   7    -0.679099178208E+03    0.35342E+01   -0.11365E+01  5896   0.406E+00    0.156E+00
DAV:   8    -0.679155046329E+03   -0.55868E-01   -0.10891E+00  5784   0.156E+00    0.634E-01
DAV:   9    -0.679177564633E+03   -0.22518E-01   -0.10868E-01  6064   0.479E-01    0.291E-01
DAV:  10    -0.679179948026E+03   -0.23834E-02   -0.89058E-03  6032   0.132E-01    0.116E-01
DAV:  11    -0.679181494600E+03   -0.15466E-02   -0.24984E-03  5784   0.729E-02    0.394E-02
DAV:  12    -0.679181546258E+03   -0.51658E-04   -0.46140E-04  6120   0.303E-02    0.182E-02
DAV:  13    -0.679181578027E+03   -0.31769E-04   -0.12107E-04  5776   0.162E-02    0.647E-03
DAV:  14    -0.679181582947E+03   -0.49197E-05   -0.10062E-05  6160   0.444E-03    0.194E-03
DAV:  15    -0.679181586693E+03   -0.37461E-05   -0.19049E-06  6104   0.213E-03    0.717E-04
DAV:  16    -0.679181586144E+03    0.54909E-06   -0.25254E-07  6056   0.724E-04    0.327E-04
DAV:  17    -0.679181586028E+03    0.11586E-06   -0.39382E-08  4824   0.302E-04    0.160E-04
DAV:  18    -0.679181586208E+03   -0.17989E-06   -0.11082E-08  3400   0.168E-04    0.746E-05
DAV:  19    -0.679181586140E+03    0.67770E-07   -0.22753E-09  3288   0.786E-05    0.551E-05
DAV:  20    -0.679181586150E+03   -0.96261E-08   -0.40961E-10  3208   0.356E-05
   1 F= -.67918159E+03 E0= -.67918159E+03  d E =-.588633E-17
./CHG
./CHGCAR
./REPORT
