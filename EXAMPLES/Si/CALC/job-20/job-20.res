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
DAV:   1     0.138782082749E+04    0.13878E+04   -0.19086E+05  5152   0.127E+03
DAV:   2    -0.534287819134E+03   -0.19221E+04   -0.18280E+04  6104   0.187E+02
DAV:   3    -0.684644463704E+03   -0.15036E+03   -0.14729E+03  6304   0.455E+01
DAV:   4    -0.688938389030E+03   -0.42939E+01   -0.42582E+01  6168   0.929E+00
DAV:   5    -0.689091369916E+03   -0.15298E+00   -0.15259E+00  6376   0.167E+00    0.241E+01
DAV:   6    -0.680379304492E+03    0.87121E+01   -0.63948E+00  5904   0.317E+00    0.143E+01
DAV:   7    -0.676836755608E+03    0.35425E+01   -0.11861E+01  5744   0.414E+00    0.163E+00
DAV:   8    -0.676883274391E+03   -0.46519E-01   -0.11952E+00  5824   0.162E+00    0.662E-01
DAV:   9    -0.676907594995E+03   -0.24321E-01   -0.11567E-01  6072   0.497E-01    0.293E-01
DAV:  10    -0.676910125291E+03   -0.25303E-02   -0.92500E-03  6128   0.136E-01    0.120E-01
DAV:  11    -0.676911785050E+03   -0.16598E-02   -0.27410E-03  5728   0.762E-02    0.425E-02
DAV:  12    -0.676911820901E+03   -0.35851E-04   -0.48655E-04  6112   0.314E-02    0.183E-02
DAV:  13    -0.676911857116E+03   -0.36214E-04   -0.13235E-04  5808   0.167E-02    0.606E-03
DAV:  14    -0.676911858474E+03   -0.13579E-05   -0.92592E-06  6096   0.446E-03    0.241E-03
DAV:  15    -0.676911863723E+03   -0.52491E-05   -0.26436E-06  6000   0.234E-03    0.728E-04
DAV:  16    -0.676911863211E+03    0.51193E-06   -0.19559E-07  6224   0.658E-04    0.405E-04
DAV:  17    -0.676911862942E+03    0.26872E-06   -0.51168E-08  5512   0.329E-04    0.150E-04
DAV:  18    -0.676911863076E+03   -0.13427E-06   -0.69772E-09  3336   0.124E-04    0.749E-05
DAV:  19    -0.676911863079E+03   -0.27539E-08   -0.16728E-09  3272   0.697E-05
   1 F= -.67691186E+03 E0= -.67691186E+03  d E =-.125350E-15
./CHG
./CHGCAR
./REPORT
