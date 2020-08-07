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
DAV:   1     0.138333540439E+04    0.13833E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.536509465879E+03   -0.19198E+04   -0.18264E+04  6120   0.187E+02
DAV:   3    -0.686182535597E+03   -0.14967E+03   -0.14668E+03  6304   0.454E+01
DAV:   4    -0.690346962224E+03   -0.41644E+01   -0.41308E+01  6200   0.918E+00
DAV:   5    -0.690489767387E+03   -0.14281E+00   -0.14242E+00  6296   0.163E+00    0.240E+01
DAV:   6    -0.681923751405E+03    0.85660E+01   -0.61008E+00  5936   0.313E+00    0.142E+01
DAV:   7    -0.678406509730E+03    0.35172E+01   -0.11671E+01  5904   0.412E+00    0.161E+00
DAV:   8    -0.678455011354E+03   -0.48502E-01   -0.11802E+00  5776   0.162E+00    0.667E-01
DAV:   9    -0.678478689762E+03   -0.23678E-01   -0.11903E-01  6048   0.505E-01    0.302E-01
DAV:  10    -0.678481069444E+03   -0.23797E-02   -0.94232E-03  6024   0.135E-01    0.126E-01
DAV:  11    -0.678482777350E+03   -0.17079E-02   -0.28807E-03  5776   0.778E-02    0.434E-02
DAV:  12    -0.678482802957E+03   -0.25607E-04   -0.49074E-04  6128   0.321E-02    0.183E-02
DAV:  13    -0.678482841367E+03   -0.38409E-04   -0.14342E-04  5832   0.171E-02    0.637E-03
DAV:  14    -0.678482842809E+03   -0.14423E-05   -0.11161E-05  6096   0.530E-03    0.248E-03
DAV:  15    -0.678482848279E+03   -0.54697E-05   -0.35357E-06  5992   0.271E-03    0.820E-04
DAV:  16    -0.678482847703E+03    0.57582E-06   -0.25103E-07  6240   0.745E-04    0.481E-04
DAV:  17    -0.678482847412E+03    0.29116E-06   -0.68958E-08  5928   0.390E-04    0.167E-04
DAV:  18    -0.678482847551E+03   -0.13989E-06   -0.11773E-08  3312   0.158E-04    0.869E-05
DAV:  19    -0.678482847570E+03   -0.18012E-07   -0.21226E-09  3216   0.810E-05    0.548E-05
DAV:  20    -0.678482847562E+03    0.73687E-08   -0.38382E-10  3152   0.333E-05
   1 F= -.67848285E+03 E0= -.67848285E+03  d E =-.916719E-28
./CHG
./CHGCAR
./REPORT
