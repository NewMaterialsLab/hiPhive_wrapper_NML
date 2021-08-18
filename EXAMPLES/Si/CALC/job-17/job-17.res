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
DAV:   1     0.138430192364E+04    0.13843E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.536532389400E+03   -0.19208E+04   -0.18276E+04  6120   0.187E+02
DAV:   3    -0.686061447896E+03   -0.14953E+03   -0.14655E+03  6328   0.454E+01
DAV:   4    -0.690250283694E+03   -0.41888E+01   -0.41546E+01  6168   0.919E+00
DAV:   5    -0.690396570478E+03   -0.14629E+00   -0.14589E+00  6344   0.164E+00    0.240E+01
DAV:   6    -0.681938201405E+03    0.84584E+01   -0.58935E+00  5912   0.301E+00    0.142E+01
DAV:   7    -0.678401892487E+03    0.35363E+01   -0.11152E+01  5856   0.402E+00    0.155E+00
DAV:   8    -0.678458222753E+03   -0.56330E-01   -0.10511E+00  5856   0.151E+00    0.624E-01
DAV:   9    -0.678480826514E+03   -0.22604E-01   -0.10330E-01  6032   0.467E-01    0.276E-01
DAV:  10    -0.678483400785E+03   -0.25743E-02   -0.85051E-03  6032   0.130E-01    0.108E-01
DAV:  11    -0.678484828108E+03   -0.14273E-02   -0.22103E-03  5832   0.698E-02    0.353E-02
DAV:  12    -0.678484915476E+03   -0.87367E-04   -0.44309E-04  6160   0.296E-02    0.187E-02
DAV:  13    -0.678484942094E+03   -0.26618E-04   -0.11034E-04  5776   0.157E-02    0.685E-03
DAV:  14    -0.678484949012E+03   -0.69183E-05   -0.11225E-05  6184   0.451E-03    0.171E-03
DAV:  15    -0.678484951622E+03   -0.26099E-05   -0.14520E-06  6264   0.203E-03    0.699E-04
DAV:  16    -0.678484951326E+03    0.29556E-06   -0.28216E-07  5976   0.795E-04    0.320E-04
DAV:  17    -0.678484951238E+03    0.88425E-07   -0.47568E-08  5384   0.322E-04    0.160E-04
DAV:  18    -0.678484951381E+03   -0.14357E-06   -0.96577E-09  3344   0.162E-04    0.781E-05
DAV:  19    -0.678484951318E+03    0.63073E-07   -0.25690E-09  3256   0.817E-05    0.550E-05
DAV:  20    -0.678484951329E+03   -0.10352E-07   -0.41345E-10  3168   0.346E-05    0.522E-05
DAV:  21    -0.678484951328E+03    0.86766E-09   -0.11947E-10  3152   0.230E-05
   1 F= -.67848495E+03 E0= -.67848495E+03  d E =-.204676E-13
./CHG
./CHGCAR
./REPORT