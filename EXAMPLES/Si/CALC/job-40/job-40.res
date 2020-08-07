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
DAV:   1     0.138325059542E+04    0.13833E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.535843448622E+03   -0.19191E+04   -0.18243E+04  6088   0.187E+02
DAV:   3    -0.686896663472E+03   -0.15105E+03   -0.14804E+03  6328   0.455E+01
DAV:   4    -0.691124453760E+03   -0.42278E+01   -0.41954E+01  6200   0.921E+00
DAV:   5    -0.691265965769E+03   -0.14151E+00   -0.14112E+00  6328   0.163E+00    0.240E+01
DAV:   6    -0.682803837329E+03    0.84621E+01   -0.59193E+00  5912   0.303E+00    0.142E+01
DAV:   7    -0.679282696633E+03    0.35211E+01   -0.11259E+01  5856   0.403E+00    0.157E+00
DAV:   8    -0.679335446928E+03   -0.52750E-01   -0.10412E+00  5832   0.152E+00    0.638E-01
DAV:   9    -0.679359362888E+03   -0.23916E-01   -0.11031E-01  6080   0.476E-01    0.276E-01
DAV:  10    -0.679361758667E+03   -0.23958E-02   -0.78128E-03  6048   0.127E-01    0.118E-01
DAV:  11    -0.679363376131E+03   -0.16175E-02   -0.25156E-03  5752   0.728E-02    0.358E-02
DAV:  12    -0.679363465541E+03   -0.89410E-04   -0.41052E-04  6152   0.285E-02    0.177E-02
DAV:  13    -0.679363494871E+03   -0.29330E-04   -0.10879E-04  5776   0.156E-02    0.655E-03
DAV:  14    -0.679363500476E+03   -0.56051E-05   -0.93281E-06  6128   0.410E-03    0.174E-03
DAV:  15    -0.679363503666E+03   -0.31897E-05   -0.13412E-06  6248   0.183E-03    0.661E-04
DAV:  16    -0.679363503137E+03    0.52892E-06   -0.23295E-07  6000   0.700E-04    0.286E-04
DAV:  17    -0.679363503198E+03   -0.61353E-07   -0.27343E-08  3920   0.251E-04    0.132E-04
DAV:  18    -0.679363503304E+03   -0.10540E-06   -0.68254E-09  3328   0.132E-04    0.665E-05
DAV:  19    -0.679363503253E+03    0.50222E-07   -0.15173E-09  3272   0.669E-05    0.534E-05
DAV:  20    -0.679363503252E+03    0.11842E-08   -0.42049E-10  3176   0.330E-05
   1 F= -.67936350E+03 E0= -.67936350E+03  d E =-.200056E-14
./CHG
./CHGCAR
./REPORT
