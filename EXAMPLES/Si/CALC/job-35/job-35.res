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
DAV:   1     0.138382080673E+04    0.13838E+04   -0.19083E+05  5152   0.127E+03
DAV:   2    -0.537430936832E+03   -0.19213E+04   -0.18270E+04  6120   0.187E+02
DAV:   3    -0.687065051140E+03   -0.14963E+03   -0.14663E+03  6296   0.454E+01
DAV:   4    -0.691258415795E+03   -0.41934E+01   -0.41593E+01  6184   0.920E+00
DAV:   5    -0.691404550773E+03   -0.14613E+00   -0.14573E+00  6312   0.164E+00    0.240E+01
DAV:   6    -0.682901653954E+03    0.85029E+01   -0.60599E+00  5920   0.308E+00    0.143E+01
DAV:   7    -0.679382883665E+03    0.35188E+01   -0.11373E+01  5808   0.406E+00    0.158E+00
DAV:   8    -0.679433277805E+03   -0.50394E-01   -0.10824E+00  5824   0.155E+00    0.647E-01
DAV:   9    -0.679457908802E+03   -0.24631E-01   -0.11503E-01  6088   0.485E-01    0.280E-01
DAV:  10    -0.679460267398E+03   -0.23586E-02   -0.78554E-03  6104   0.128E-01    0.123E-01
DAV:  11    -0.679461974002E+03   -0.17066E-02   -0.27272E-03  5728   0.755E-02    0.364E-02
DAV:  12    -0.679462057771E+03   -0.83769E-04   -0.41754E-04  6184   0.290E-02    0.177E-02
DAV:  13    -0.679462090519E+03   -0.32748E-04   -0.11385E-04  5744   0.158E-02    0.632E-03
DAV:  14    -0.679462094936E+03   -0.44165E-05   -0.90188E-06  6136   0.420E-03    0.190E-03
DAV:  15    -0.679462098834E+03   -0.38981E-05   -0.16520E-06  6120   0.189E-03    0.659E-04
DAV:  16    -0.679462098126E+03    0.70741E-06   -0.18248E-07  6056   0.610E-04    0.286E-04
DAV:  17    -0.679462098211E+03   -0.84430E-07   -0.25268E-08  3728   0.246E-04    0.107E-04
DAV:  18    -0.679462098281E+03   -0.70153E-07   -0.59010E-09  3328   0.119E-04    0.629E-05
DAV:  19    -0.679462098238E+03    0.42744E-07   -0.11975E-09  3232   0.635E-05    0.500E-05
DAV:  20    -0.679462098230E+03    0.84219E-08   -0.41564E-10  3200   0.317E-05
   1 F= -.67946210E+03 E0= -.67946210E+03  d E =-.109877E-20
./CHG
./CHGCAR
./REPORT