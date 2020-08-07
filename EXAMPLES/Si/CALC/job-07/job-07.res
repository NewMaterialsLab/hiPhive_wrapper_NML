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
DAV:   1     0.138398912584E+04    0.13840E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.536072202923E+03   -0.19201E+04   -0.18263E+04  6120   0.187E+02
DAV:   3    -0.685511716121E+03   -0.14944E+03   -0.14641E+03  6304   0.454E+01
DAV:   4    -0.689720493876E+03   -0.42088E+01   -0.41734E+01  6184   0.921E+00
DAV:   5    -0.689865661702E+03   -0.14517E+00   -0.14474E+00  6264   0.165E+00    0.240E+01
DAV:   6    -0.681335414298E+03    0.85302E+01   -0.59678E+00  5912   0.305E+00    0.143E+01
DAV:   7    -0.677794834085E+03    0.35406E+01   -0.11442E+01  5840   0.408E+00    0.158E+00
DAV:   8    -0.677848941078E+03   -0.54107E-01   -0.11307E+00  5808   0.158E+00    0.628E-01
DAV:   9    -0.677870686935E+03   -0.21746E-01   -0.10431E-01  6048   0.474E-01    0.290E-01
DAV:  10    -0.677873066848E+03   -0.23799E-02   -0.89057E-03  6040   0.132E-01    0.117E-01
DAV:  11    -0.677874575608E+03   -0.15088E-02   -0.25092E-03  5760   0.726E-02    0.419E-02
DAV:  12    -0.677874606588E+03   -0.30981E-04   -0.47236E-04  6144   0.314E-02    0.182E-02
DAV:  13    -0.677874639295E+03   -0.32707E-04   -0.13142E-04  5768   0.164E-02    0.562E-03
DAV:  14    -0.677874640138E+03   -0.84268E-06   -0.87717E-06  6128   0.475E-03    0.236E-03
DAV:  15    -0.677874645230E+03   -0.50919E-05   -0.31222E-06  5984   0.255E-03    0.684E-04
DAV:  16    -0.677874644729E+03    0.50073E-06   -0.18847E-07  6224   0.637E-04    0.404E-04
DAV:  17    -0.677874644381E+03    0.34830E-06   -0.54453E-08  5504   0.343E-04    0.164E-04
DAV:  18    -0.677874644542E+03   -0.16110E-06   -0.86556E-09  3328   0.145E-04    0.743E-05
DAV:  19    -0.677874644529E+03    0.13459E-07   -0.21374E-09  3208   0.739E-05    0.535E-05
DAV:  20    -0.677874644535E+03   -0.62100E-08   -0.29484E-10  3168   0.337E-05
   1 F= -.67787464E+03 E0= -.67787464E+03  d E =-.219672E-16
./CHG
./CHGCAR
./REPORT
