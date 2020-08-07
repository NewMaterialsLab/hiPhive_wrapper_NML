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
DAV:   1     0.138132547049E+04    0.13813E+04   -0.19081E+05  5152   0.127E+03
DAV:   2    -0.537671702822E+03   -0.19190E+04   -0.18241E+04  6088   0.187E+02
DAV:   3    -0.688407455235E+03   -0.15074E+03   -0.14774E+03  6280   0.455E+01
DAV:   4    -0.692687736253E+03   -0.42803E+01   -0.42444E+01  6176   0.926E+00
DAV:   5    -0.692840328982E+03   -0.15259E+00   -0.15215E+00  6280   0.166E+00    0.239E+01
DAV:   6    -0.684514978733E+03    0.83254E+01   -0.56195E+00  5888   0.292E+00    0.142E+01
DAV:   7    -0.680988201115E+03    0.35268E+01   -0.10910E+01  5776   0.396E+00    0.152E+00
DAV:   8    -0.681047416377E+03   -0.59215E-01   -0.97884E-01  5936   0.147E+00    0.588E-01
DAV:   9    -0.681068689453E+03   -0.21273E-01   -0.98929E-02  6048   0.461E-01    0.277E-01
DAV:  10    -0.681071242523E+03   -0.25531E-02   -0.90103E-03  6040   0.133E-01    0.102E-01
DAV:  11    -0.681072547656E+03   -0.13051E-02   -0.20230E-03  5800   0.668E-02    0.351E-02
DAV:  12    -0.681072622753E+03   -0.75097E-04   -0.41735E-04  6168   0.286E-02    0.177E-02
DAV:  13    -0.681072647937E+03   -0.25184E-04   -0.10175E-04  5800   0.152E-02    0.561E-03
DAV:  14    -0.681072654373E+03   -0.64356E-05   -0.10975E-05  6192   0.438E-03    0.170E-03
DAV:  15    -0.681072656335E+03   -0.19627E-05   -0.14686E-06  6200   0.202E-03    0.693E-04
DAV:  16    -0.681072656183E+03    0.15229E-06   -0.30868E-07  5984   0.847E-04    0.272E-04
DAV:  17    -0.681072656191E+03   -0.76870E-08   -0.46606E-08  5192   0.307E-04
   1 F= -.68107266E+03 E0= -.68107266E+03  d E =-.199987E-24
./CHG
./CHGCAR
./REPORT
