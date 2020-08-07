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
DAV:   1     0.138371614977E+04    0.13837E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.535716418880E+03   -0.19194E+04   -0.18254E+04  6112   0.187E+02
DAV:   3    -0.685657548054E+03   -0.14994E+03   -0.14687E+03  6296   0.454E+01
DAV:   4    -0.689880141514E+03   -0.42226E+01   -0.41879E+01  6184   0.921E+00
DAV:   5    -0.690026547872E+03   -0.14641E+00   -0.14600E+00  6304   0.165E+00    0.240E+01
DAV:   6    -0.681428127070E+03    0.85984E+01   -0.61351E+00  5960   0.316E+00    0.143E+01
DAV:   7    -0.677906848715E+03    0.35213E+01   -0.11798E+01  5888   0.416E+00    0.162E+00
DAV:   8    -0.677957268213E+03   -0.50419E-01   -0.12219E+00  5800   0.166E+00    0.680E-01
DAV:   9    -0.677980782687E+03   -0.23514E-01   -0.12471E-01  6040   0.512E-01    0.309E-01
DAV:  10    -0.677983213207E+03   -0.24305E-02   -0.97768E-03  6056   0.138E-01    0.130E-01
DAV:  11    -0.677985003939E+03   -0.17907E-02   -0.30413E-03  5768   0.799E-02    0.432E-02
DAV:  12    -0.677985044777E+03   -0.40838E-04   -0.54385E-04  6128   0.332E-02    0.198E-02
DAV:  13    -0.677985083665E+03   -0.38888E-04   -0.15064E-04  5768   0.177E-02    0.774E-03
DAV:  14    -0.677985087505E+03   -0.38398E-05   -0.11504E-05  6112   0.519E-03    0.256E-03
DAV:  15    -0.677985092600E+03   -0.50954E-05   -0.31616E-06  6088   0.259E-03    0.778E-04
DAV:  16    -0.677985092296E+03    0.30440E-06   -0.32074E-07  6144   0.801E-04    0.468E-04
DAV:  17    -0.677985092003E+03    0.29307E-06   -0.59634E-08  5600   0.392E-04    0.191E-04
DAV:  18    -0.677985092253E+03   -0.25008E-06   -0.14990E-08  3376   0.188E-04    0.794E-05
DAV:  19    -0.677985092202E+03    0.50546E-07   -0.27254E-09  3272   0.880E-05    0.565E-05
DAV:  20    -0.677985092216E+03   -0.13444E-07   -0.50745E-10  3168   0.399E-05    0.493E-05
DAV:  21    -0.677985092211E+03    0.50823E-08   -0.17357E-10  3152   0.222E-05
   1 F= -.67798509E+03 E0= -.67798509E+03  d E =-.141461E-27
./CHG
./CHGCAR
./REPORT
