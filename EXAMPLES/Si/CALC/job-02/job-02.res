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
DAV:   1     0.138415825835E+04    0.13842E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.536781131332E+03   -0.19209E+04   -0.18265E+04  6104   0.187E+02
DAV:   3    -0.686816387514E+03   -0.15004E+03   -0.14703E+03  6272   0.454E+01
DAV:   4    -0.691129238090E+03   -0.43129E+01   -0.42772E+01  6176   0.930E+00
DAV:   5    -0.691282655985E+03   -0.15342E+00   -0.15301E+00  6328   0.166E+00    0.240E+01
DAV:   6    -0.682787008105E+03    0.84956E+01   -0.58814E+00  5944   0.305E+00    0.143E+01
DAV:   7    -0.679245361046E+03    0.35416E+01   -0.11437E+01  5824   0.408E+00    0.157E+00
DAV:   8    -0.679300809908E+03   -0.55449E-01   -0.11027E+00  5808   0.157E+00    0.638E-01
DAV:   9    -0.679323733793E+03   -0.22924E-01   -0.11018E-01  6104   0.482E-01    0.293E-01
DAV:  10    -0.679326138243E+03   -0.24044E-02   -0.87966E-03  6024   0.131E-01    0.120E-01
DAV:  11    -0.679327746226E+03   -0.16080E-02   -0.26088E-03  5824   0.744E-02    0.408E-02
DAV:  12    -0.679327787001E+03   -0.40775E-04   -0.46224E-04  6160   0.306E-02    0.177E-02
DAV:  13    -0.679327819851E+03   -0.32850E-04   -0.12301E-04  5816   0.161E-02    0.636E-03
DAV:  14    -0.679327823844E+03   -0.39929E-05   -0.10006E-05  6136   0.471E-03    0.204E-03
DAV:  15    -0.679327828074E+03   -0.42300E-05   -0.23964E-06  6048   0.230E-03    0.746E-04
DAV:  16    -0.679327827492E+03    0.58195E-06   -0.21850E-07  6128   0.681E-04    0.373E-04
DAV:  17    -0.679327827286E+03    0.20631E-06   -0.47290E-08  5328   0.328E-04    0.166E-04
DAV:  18    -0.679327827493E+03   -0.20692E-06   -0.95329E-09  3336   0.148E-04    0.700E-05
DAV:  19    -0.679327827444E+03    0.48633E-07   -0.19784E-09  3272   0.745E-05    0.510E-05
DAV:  20    -0.679327827453E+03   -0.91095E-08   -0.28201E-10  3168   0.312E-05
   1 F= -.67932783E+03 E0= -.67932783E+03  d E =-.262500E-27
./CHG
./CHGCAR
./REPORT
