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
DAV:   1     0.138310629757E+04    0.13831E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.537022309177E+03   -0.19201E+04   -0.18261E+04  6104   0.187E+02
DAV:   3    -0.686976689378E+03   -0.14995E+03   -0.14696E+03  6304   0.454E+01
DAV:   4    -0.691237302590E+03   -0.42606E+01   -0.42255E+01  6144   0.924E+00
DAV:   5    -0.691386943041E+03   -0.14964E+00   -0.14922E+00  6352   0.165E+00    0.240E+01
DAV:   6    -0.682936485445E+03    0.84505E+01   -0.58158E+00  5920   0.302E+00    0.142E+01
DAV:   7    -0.679396063599E+03    0.35404E+01   -0.11298E+01  5888   0.406E+00    0.155E+00
DAV:   8    -0.679455415681E+03   -0.59352E-01   -0.10901E+00  5792   0.155E+00    0.635E-01
DAV:   9    -0.679477638878E+03   -0.22223E-01   -0.10916E-01  6056   0.477E-01    0.287E-01
DAV:  10    -0.679480218048E+03   -0.25792E-02   -0.89537E-03  5960   0.133E-01    0.113E-01
DAV:  11    -0.679481733715E+03   -0.15157E-02   -0.23812E-03  5872   0.723E-02    0.363E-02
DAV:  12    -0.679481819233E+03   -0.85519E-04   -0.46759E-04  6168   0.303E-02    0.195E-02
DAV:  13    -0.679481849340E+03   -0.30106E-04   -0.12110E-04  5760   0.164E-02    0.755E-03
DAV:  14    -0.679481857548E+03   -0.82086E-05   -0.13157E-05  6176   0.488E-03    0.182E-03
DAV:  15    -0.679481859914E+03   -0.23654E-05   -0.16923E-06  6232   0.223E-03    0.727E-04
DAV:  16    -0.679481859732E+03    0.18188E-06   -0.34940E-07  6000   0.872E-04    0.385E-04
DAV:  17    -0.679481859647E+03    0.85152E-07   -0.58357E-08  5656   0.387E-04    0.169E-04
DAV:  18    -0.679481859811E+03   -0.16428E-06   -0.16739E-08  3568   0.202E-04    0.818E-05
DAV:  19    -0.679481859738E+03    0.72494E-07   -0.28984E-09  3272   0.889E-05    0.576E-05
DAV:  20    -0.679481859752E+03   -0.13992E-07   -0.52051E-10  3152   0.410E-05    0.516E-05
DAV:  21    -0.679481859754E+03   -0.14734E-08   -0.21988E-10  3152   0.257E-05
   1 F= -.67948186E+03 E0= -.67948186E+03  d E =-.256809E-22
./CHG
./CHGCAR
./REPORT
