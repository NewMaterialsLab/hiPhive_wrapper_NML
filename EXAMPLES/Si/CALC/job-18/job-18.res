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
DAV:   1     0.138281199464E+04    0.13828E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.537798696554E+03   -0.19206E+04   -0.18262E+04  6120   0.187E+02
DAV:   3    -0.687247507234E+03   -0.14945E+03   -0.14653E+03  6304   0.454E+01
DAV:   4    -0.691406973720E+03   -0.41595E+01   -0.41254E+01  6184   0.917E+00
DAV:   5    -0.691554090188E+03   -0.14712E+00   -0.14669E+00  6312   0.165E+00    0.240E+01
DAV:   6    -0.683102159351E+03    0.84519E+01   -0.58736E+00  5904   0.305E+00    0.142E+01
DAV:   7    -0.679587347183E+03    0.35148E+01   -0.11322E+01  5896   0.406E+00    0.157E+00
DAV:   8    -0.679640073025E+03   -0.52726E-01   -0.10890E+00  5808   0.156E+00    0.637E-01
DAV:   9    -0.679663043926E+03   -0.22971E-01   -0.11379E-01  6032   0.489E-01    0.291E-01
DAV:  10    -0.679665467524E+03   -0.24236E-02   -0.87488E-03  6024   0.132E-01    0.121E-01
DAV:  11    -0.679667123104E+03   -0.16556E-02   -0.27225E-03  5784   0.755E-02    0.406E-02
DAV:  12    -0.679667162866E+03   -0.39762E-04   -0.46597E-04  6080   0.304E-02    0.183E-02
DAV:  13    -0.679667195338E+03   -0.32472E-04   -0.12386E-04  5784   0.163E-02    0.635E-03
DAV:  14    -0.679667198252E+03   -0.29139E-05   -0.97859E-06  6064   0.455E-03    0.213E-03
DAV:  15    -0.679667202730E+03   -0.44779E-05   -0.22276E-06  6072   0.220E-03    0.675E-04
DAV:  16    -0.679667202275E+03    0.45458E-06   -0.21010E-07  6048   0.659E-04    0.356E-04
DAV:  17    -0.679667202100E+03    0.17587E-06   -0.41361E-08  5040   0.312E-04    0.153E-04
DAV:  18    -0.679667202259E+03   -0.15955E-06   -0.94603E-09  3312   0.150E-04    0.736E-05
DAV:  19    -0.679667202228E+03    0.30686E-07   -0.21958E-09  3224   0.781E-05    0.528E-05
DAV:  20    -0.679667202241E+03   -0.12247E-07   -0.36901E-10  3192   0.346E-05    0.484E-05
DAV:  21    -0.679667202235E+03    0.58353E-08   -0.13431E-10  3120   0.202E-05
   1 F= -.67966720E+03 E0= -.67966720E+03  d E =-.866589E-14
./CHG
./CHGCAR
./REPORT
