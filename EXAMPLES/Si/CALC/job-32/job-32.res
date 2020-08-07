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
DAV:   1     0.138433323306E+04    0.13843E+04   -0.19082E+05  5152   0.127E+03
DAV:   2    -0.537006609443E+03   -0.19213E+04   -0.18274E+04  6120   0.187E+02
DAV:   3    -0.686623995607E+03   -0.14962E+03   -0.14661E+03  6264   0.454E+01
DAV:   4    -0.690940751016E+03   -0.43168E+01   -0.42804E+01  6184   0.929E+00
DAV:   5    -0.691094023595E+03   -0.15327E+00   -0.15288E+00  6352   0.166E+00    0.240E+01
DAV:   6    -0.682532343289E+03    0.85617E+01   -0.61214E+00  5880   0.309E+00    0.143E+01
DAV:   7    -0.679003683200E+03    0.35287E+01   -0.11522E+01  5872   0.409E+00    0.159E+00
DAV:   8    -0.679054905030E+03   -0.51222E-01   -0.11348E+00  5744   0.157E+00    0.645E-01
DAV:   9    -0.679078030308E+03   -0.23125E-01   -0.10820E-01  6096   0.481E-01    0.287E-01
DAV:  10    -0.679080619814E+03   -0.25895E-02   -0.92371E-03  5976   0.134E-01    0.113E-01
DAV:  11    -0.679082125615E+03   -0.15058E-02   -0.23623E-03  5816   0.716E-02    0.382E-02
DAV:  12    -0.679082196881E+03   -0.71265E-04   -0.46110E-04  6152   0.306E-02    0.186E-02
DAV:  13    -0.679082229356E+03   -0.32475E-04   -0.12414E-04  5720   0.164E-02    0.642E-03
DAV:  14    -0.679082234472E+03   -0.51162E-05   -0.97943E-06  6168   0.433E-03    0.190E-03
DAV:  15    -0.679082238059E+03   -0.35874E-05   -0.18243E-06  6128   0.210E-03    0.716E-04
DAV:  16    -0.679082237521E+03    0.53782E-06   -0.25472E-07  6056   0.729E-04    0.320E-04
DAV:  17    -0.679082237458E+03    0.63897E-07   -0.36548E-08  4504   0.290E-04    0.157E-04
DAV:  18    -0.679082237640E+03   -0.18243E-06   -0.10056E-08  3328   0.162E-04    0.754E-05
DAV:  19    -0.679082237566E+03    0.74315E-07   -0.23376E-09  3176   0.795E-05    0.545E-05
DAV:  20    -0.679082237573E+03   -0.70359E-08   -0.47201E-10  3152   0.367E-05
   1 F= -.67908224E+03 E0= -.67908224E+03  d E =-.247544E-30
./CHG
./CHGCAR
./REPORT
