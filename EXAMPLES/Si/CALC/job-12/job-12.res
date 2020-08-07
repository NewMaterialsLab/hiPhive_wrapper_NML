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
DAV:   1     0.138283911165E+04    0.13828E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.536609650521E+03   -0.19194E+04   -0.18259E+04  6112   0.187E+02
DAV:   3    -0.686424885170E+03   -0.14982E+03   -0.14680E+03  6272   0.454E+01
DAV:   4    -0.690668436911E+03   -0.42436E+01   -0.42080E+01  6176   0.924E+00
DAV:   5    -0.690818680682E+03   -0.15024E+00   -0.14984E+00  6320   0.165E+00    0.240E+01
DAV:   6    -0.682338415197E+03    0.84803E+01   -0.59632E+00  5896   0.304E+00    0.142E+01
DAV:   7    -0.678812657391E+03    0.35258E+01   -0.11247E+01  5864   0.404E+00    0.157E+00
DAV:   8    -0.678866187214E+03   -0.53530E-01   -0.10550E+00  5816   0.152E+00    0.641E-01
DAV:   9    -0.678889976284E+03   -0.23789E-01   -0.10543E-01  6120   0.466E-01    0.272E-01
DAV:  10    -0.678892410857E+03   -0.24346E-02   -0.76411E-03  6000   0.126E-01    0.113E-01
DAV:  11    -0.678893956080E+03   -0.15452E-02   -0.24028E-03  5816   0.718E-02    0.350E-02
DAV:  12    -0.678894046385E+03   -0.90306E-04   -0.39870E-04  6160   0.282E-02    0.180E-02
DAV:  13    -0.678894076073E+03   -0.29688E-04   -0.10762E-04  5792   0.155E-02    0.632E-03
DAV:  14    -0.678894081891E+03   -0.58179E-05   -0.91185E-06  6128   0.411E-03    0.168E-03
DAV:  15    -0.678894084885E+03   -0.29943E-05   -0.13351E-06  6240   0.178E-03    0.654E-04
DAV:  16    -0.678894084270E+03    0.61485E-06   -0.20779E-07  6048   0.663E-04    0.265E-04
DAV:  17    -0.678894084356E+03   -0.85041E-07   -0.24648E-08  3712   0.240E-04    0.124E-04
DAV:  18    -0.678894084456E+03   -0.10038E-06   -0.58944E-09  3328   0.124E-04    0.655E-05
DAV:  19    -0.678894084402E+03    0.54364E-07   -0.13490E-09  3264   0.640E-05    0.544E-05
DAV:  20    -0.678894084399E+03    0.27831E-08   -0.39946E-10  3176   0.314E-05
   1 F= -.67889408E+03 E0= -.67889408E+03  d E =-.188803E-15
./CHG
./CHGCAR
./REPORT
