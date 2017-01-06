
% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.19' ;
TITLE                     (idx, [1: 10])  = 'MSR2G-ENRU' ;
DATE                      (idx, [1: 24])  = 'Fri Jan  6 14:29:44 2017' ;

% Run parameters:

POP                       (idx, 1)        = 2000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1483734584 ;
MPI_TASKS                 (idx, 1)        = 4 ;
MPI_MODE                  (idx, 1)        = 1 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz' ;
CPU_MHZ                   (idx, 1)        = 23.0 ;
AVAIL_MEM                 (idx, 1)        = 7888.5 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 49])  = '/home/lindsayad/serpent/core/xsdata/xsdir_serpent' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Delta-tracking parameters:

DT_THRESH                 (idx, 1)        = 9.00000E-01 ;
DT_FRAC                   (idx, 1)        = 9.98521E-01 ;
DT_EFF                    (idx, 1)        = 9.08943E-01 ;
MIN_MACROXS               (idx, 1)        = 1.41877E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 8.81700E+00 ;
RUNNING_TIME              (idx, 1)        = 2.42252E+00 ;
CPU_USAGE                 (idx, 1)        = 3.63961 ;
INIT_TIME                 (idx, 1)        = 1.70367E-01 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 2.25185E+00 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 2.66667E-04 ;
CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_NEUTRONS           (idx, 1)        = 1000000 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00000E+03 0.00000 ];
MEMSIZE                   (idx, 1)        = 21.3;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Energy grid parameters:

ERG_EMIN                  (idx, 1)        = 1.00000E-11 ;
ERG_EMAX                  (idx, 1)        = 2.00000E+01 ;
ERG_TOL                   (idx, 1)        = 0.00000E+00 ;
ERG_NE                    (idx, 1)        = 23789 ;
ERG_NE_INI                (idx, 1)        = 23789 ;
ERG_NE_IMP                (idx, 1)        = 3849 ;
ERG_DIX                   (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
URES_MODE                 (idx, 1)        = 1 ;
URES_DILU_CUT             (idx, 1)        = 0.00000E+00 ;
URES_EMIN                 (idx, 1)        = 1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_ISOTOPES              (idx, 1)        = 7 ;
TOT_TRANSPORT_ISOTOPES    (idx, 1)        = 7 ;
TOT_DECAY_ISOTOPES        (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 179 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Reaction mode counters:

COLLISIONS                (idx, 1)        = 30765022 ;
FISSION_FRACTION          (idx, 1)        = 3.24203E-03 ;
CAPTURE_FRACTION          (idx, 1)        = 3.22607E-03 ;
ELASTIC_FRACTION          (idx, 1)        = 6.04197E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 4.57188E-03 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 3.84761E-01 ;
NXN_FRACTION              (idx, 1)        = 1.91776E-06 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 9.10571E-02 ;

FREEGAS_FRACTION          (idx, 1)        = 1.83260E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.88958E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.96290E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 51070 ;

REA_SAMPLING_EFF          (idx, 1)        = 5.91669E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  9.56367E+01 0.00013 ];
COL_THERM                 (idx, [1:   2]) = [  7.57846E+01 0.00128 ];
COL_TOT                   (idx, [1:   2]) = [  1.35931E+02 0.00063 ];
SLOW_TIME                 (idx, [1:   2]) = [  2.95555E-05 0.00040 ];
THERM_TIME                (idx, [1:   2]) = [  4.18478E-04 0.00142 ];
SLOW_DIST                 (idx, [1:   2]) = [  3.38385E+01 0.00060 ];
THERM_DIST                (idx, [1:   2]) = [  2.36235E+01 0.00090 ];
THERM_FRAC                (idx, [1:   2]) = [  5.86255E-01 0.00088 ];

% Parameters for burnup calculation:

BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 1 ;
BURN_TOT_STEPS            (idx, 1)        = 1 ;
BURNUP                    (idx, 1)        = 0.00000E+00 ;
BURN_DAYS                 (idx, 1)        = 0.00000E+00 ;
ENERGY_OUTPUT             (idx, 1)        = 0.00000E+00 ;
DEP_TTA_CUTOFF            (idx, 1)        = 1.00000E-15 ;
DEP_STABILITY_CUTOFF      (idx, 1)        = 1.00000E-22 ;
DEP_FP_YIELD_CUTOFF       (idx, 1)        = 1.00000E-22 ;
DEP_XS_FRAC_CUTOFF        (idx, 1)        = 0.00000E+00 ;
DEP_XS_ENERGY_CUTOFF      (idx, 1)        = -1.00000E+00 ;
BURN_MATERIALS            (idx, 1)        = 0 ;
FP_NUCLIDES_INCLUDED      (idx, 1)        = 0 ;
FP_NUCLIDES_AVAILABLE     (idx, 1)        = 0 ;
TOT_ACTIVITY              (idx, 1)        = 0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        = 0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        = 0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        = 0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        = 0.00000E+00 ;

% Fission source entropies:

ENTROPY_X                 (idx, [1:   2]) = [  5.94150E-01 0.00090 ];
ENTROPY_Y                 (idx, [1:   2]) = [  5.94340E-01 0.00087 ];
ENTROPY_Z                 (idx, [1:   2]) = [  9.38508E-01 0.00044 ];
ENTROPY_TOT               (idx, [1:   2]) = [  6.82594E-01 0.00041 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [  2.64894E-03 0.66032 ];
SOURCE_Y0                 (idx, [1:   2]) = [  2.88299E-03 0.58742 ];
SOURCE_Z0                 (idx, [1:   2]) = [  5.74149E+01 0.00084 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  9.94153E-01 0.00130 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.93789E-01 0.00074 ];
COL_KEFF                  (idx, [1:   2]) = [  9.95168E-01 0.00127 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.93789E-01 0.00074 ];
ABS_KINF                  (idx, [1:   2]) = [  1.24984E+00 0.00038 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  1.23336E+00 0.00047 ];
ABS_GC_KINF               (idx, [1:   2]) = [  1.27886E+00 0.00039 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [ -2.46114E+02 0.10027 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.27497E-11 0.00074 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.93556E-01 0.00074 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.99356E-01 0.00074 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.95126E-01 0.00058 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.04874E-01 0.00225 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -3.52996E-03 0.53603 ];
TOT_FLUX                  (idx, [1:   2]) = [  3.07411E+02 0.00067 ];
TOT_RR                    (idx, [1:   2]) = [  1.22804E+02 0.00068 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];



% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  3.00089E-04 0.00151 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  3.03073E-05 0.00089 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  3.02764E-04 0.00189 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  3.04924E-05 0.00032 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.36754E+01 0.04637 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.48651E+00 0.00118 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.70845E-01 0.00024 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.63064E-01 0.00078 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.30914E+00 0.00085 ];
SIX_FF_LF                 (idx, [1:   2]) = [  8.52822E-01 0.00050 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.32234E-01 0.00030 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.25090E+00 0.00114 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.94485E-01 0.00127 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 8 ;
BETA_EFF                  (idx, [1:  18]) = [  2.94318E-03 0.02970  2.01076E-04 0.10556  4.63986E-04 0.07503  3.89608E-04 0.08253  6.28238E-04 0.06409  9.80497E-04 0.05365  7.78386E-05 0.16868  1.65368E-04 0.12012  3.65683E-05 0.24145 ];
BETA_ZERO                 (idx, [1:  18]) = [  2.77331E-03 0.00066  1.62899E-04 0.01318  3.34140E-04 0.01317  2.97765E-04 0.01310  4.16740E-04 0.01307  6.28977E-04 0.01307  8.50038E-05 0.01608  1.23163E-04 0.01355  2.42907E-05 0.01423 ];
DECAY_CONSTANT            (idx, [1:  18]) = [  3.03158E-01 0.04179  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 1.9E-09  2.92467E-01 2.7E-09  6.66488E-01 2.7E-09  1.63478E+00 9.3E-10  3.55460E+00 0.0E+00 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 2 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  4.05560E+01 0.00066  2.85991E+01 0.00095  1.19569E+01 0.00096 ];
LEAK                      (idx, [1:   6]) = [  7.07729E-04 0.00614  7.41590E-04 0.00729  6.26834E-04 0.01148 ];
TOTXS                     (idx, [1:   6]) = [  3.15075E-01 9.3E-05  3.10162E-01 0.00013  3.26816E-01 7.1E-05 ];
FISSXS                    (idx, [1:   6]) = [  9.85270E-03 0.00083  3.28988E-03 0.00117  2.55352E-02 0.00037 ];
CAPTXS                    (idx, [1:   6]) = [  9.31915E-03 0.00075  6.00318E-03 0.00140  1.72413E-02 0.00038 ];
ABSXS                     (idx, [1:   6]) = [  1.91718E-02 0.00069  9.29306E-03 0.00098  4.27765E-02 0.00038 ];
RABSXS                    (idx, [1:   6]) = [  1.91663E-02 0.00069  9.28521E-03 0.00098  4.27765E-02 0.00038 ];
ELAXS                     (idx, [1:   6]) = [  2.82353E-01 0.00010  2.81649E-01 0.00014  2.84040E-01 2.7E-05 ];
INELAXS                   (idx, [1:   6]) = [  1.35501E-02 0.00096  1.92195E-02 0.00083  2.87490E-16 0.02282 ];
SCATTXS                   (idx, [1:   6]) = [  2.95903E-01 9.2E-05  3.00869E-01 0.00013  2.84040E-01 2.7E-05 ];
SCATTPRODXS               (idx, [1:   6]) = [  2.95909E-01 9.2E-05  3.00877E-01 0.00013  2.84040E-01 2.7E-05 ];
N2NXS                     (idx, [1:   6]) = [  5.77593E-06 0.01576  8.19046E-06 0.01575  0.00000E+00 0.0E+00 ];
REMXS                     (idx, [1:   6]) = [  1.91663E-02 0.00069  1.08624E-02 0.00108  4.37948E-02 0.00041 ];
NUBAR                     (idx, [1:   6]) = [  2.48790E+00 1.3E-05  2.48850E+00 5.8E-05  2.48771E+00 0.0E+00 ];
NSF                       (idx, [1:   6]) = [  2.45125E-02 0.00083  8.18689E-03 0.00117  6.35242E-02 0.00037 ];
RECIPVEL                  (idx, [1:   6]) = [  7.47649E-07 0.00104  8.76911E-08 0.00115  2.32466E-06 0.00038 ];
FISSE                     (idx, [1:   6]) = [  1.99265E+02 9.9E-08  1.99237E+02 4.2E-07  1.99273E+02 0.0E+00 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CHIP                      (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CHID                      (idx, [1:   4]) = [  1.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.94758E-01 2.4E-05  3.58513E-03 0.00965  5.24233E-03 0.00462  9.96415E-01 3.5E-05 ];
GTRANSFXS                 (idx, [1:   8]) = [  2.99292E-01 0.00013  1.01829E-03 0.00965  1.57716E-03 0.00462  2.83021E-01 4.5E-05 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.94784E-01 2.4E-05  3.58513E-03 0.00965  5.24233E-03 0.00462  9.96415E-01 3.5E-05 ];
GPRODXS                   (idx, [1:   8]) = [  2.99299E-01 0.00013  1.01829E-03 0.00965  1.57716E-03 0.00462  2.83021E-01 4.5E-05 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  2.90751E+02 0.00116  1.54824E+02 0.00154  1.24573E+02 0.00315 ];
DIFFCOEF                  (idx, [1:   6]) = [  5.57410E+00 0.00145  1.68175E+00 0.00188  5.45469E+00 0.00315 ];
TRANSPXS                  (idx, [1:   6]) = [  6.00496E-02 0.00144  1.99606E-01 0.00188  6.23196E-02 0.00315 ];
MUBAR                     (idx, [1:   6]) = [  8.61859E-01 0.00037  3.67442E-01 0.00343  9.31188E-01 0.00075 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [  9.60826E-04 0.00191 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [  7.43048E-01 0.00663  7.78980E-01 0.00776  6.57026E-01 0.01173 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  2.95909E-01 0.00010  3.00872E-01 0.00013  2.83970E-01 0.00021 ];
SCATT1                    (idx, [1:   6]) = [  1.79903E-02 0.00274  2.11680E-02 0.00282  1.03912E-02 0.00819 ];
SCATT2                    (idx, [1:   6]) = [  4.63178E-03 0.00819  6.20698E-03 0.00743  8.65163E-04 0.07849 ];
SCATT3                    (idx, [1:   6]) = [  1.39445E-03 0.02413  1.92071E-03 0.02098  1.31987E-04 0.45000 ];
SCATT4                    (idx, [1:   6]) = [  7.54265E-04 0.03804  1.04261E-03 0.03282  6.29413E-05 0.82881 ];
SCATT5                    (idx, [1:   6]) = [  2.84767E-04 0.09120  3.88816E-04 0.08024  3.62461E-05 1.24683 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  2.97085E-01 0.00020  2.88994E-01 0.00025  3.16425E-01 0.00028 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  1.12210E+00 0.00020  1.15358E+00 0.00025  1.05360E+00 0.00028 ];
P1_MUBAR                  (idx, [1:   6]) = [  6.07997E-02 0.00274  7.03603E-02 0.00283  3.65928E-02 0.00819 ];

% B1 critical spectrum calculation:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_BUCKLING               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FLUX                   (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_TOTXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISSXS                 (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHI                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABSXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_RABSXS                 (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTXS                (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTPRODXS            (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];


% Increase counter:

if (exist('idx', 'var'));
  idx = idx + 1;
else;
  idx = 1;
end;

% Version, title and date:

VERSION                   (idx, [1: 14])  = 'Serpent 1.1.19' ;
TITLE                     (idx, [1: 10])  = 'MSR2G-ENRU' ;
DATE                      (idx, [1: 24])  = 'Fri Jan  6 14:29:44 2017' ;

% Run parameters:

POP                       (idx, 1)        = 2000 ;
CYCLES                    (idx, 1)        = 500 ;
SKIP                      (idx, 1)        = 20 ;
SRC_NORM_MODE             (idx, 1)        = 1 ;
SEED                      (idx, 1)        = 1483734584 ;
MPI_TASKS                 (idx, 1)        = 4 ;
MPI_MODE                  (idx, 1)        = 1 ;
DEBUG                     (idx, 1)        = 0 ;
CPU_TYPE                  (idx, [1: 40])  = 'Intel(R) Core(TM) i5-4200U CPU @ 1.60GHz' ;
CPU_MHZ                   (idx, 1)        = 23.0 ;
AVAIL_MEM                 (idx, 1)        = 7888.5 ;

% File paths:

XS_DATA_FILE_PATH         (idx, [1: 49])  = '/home/lindsayad/serpent/core/xsdata/xsdir_serpent' ;
DECAY_DATA_FILE_PATH      (idx, [1:  3])  = 'N/A' ;
NFY_DATA_FILE_PATH        (idx, [1:  3])  = 'N/A' ;

% Delta-tracking parameters:

DT_THRESH                 (idx, 1)        = 9.00000E-01 ;
DT_FRAC                   (idx, 1)        = 9.98521E-01 ;
DT_EFF                    (idx, 1)        = 9.08943E-01 ;
MIN_MACROXS               (idx, 1)        = 1.41877E-01 ;

% Run statistics:

TOT_CPU_TIME              (idx, 1)        = 8.81700E+00 ;
RUNNING_TIME              (idx, 1)        = 2.42253E+00 ;
CPU_USAGE                 (idx, 1)        = 3.63958 ;
INIT_TIME                 (idx, 1)        = 1.70367E-01 ;
TRANSPORT_CYCLE_TIME      (idx, 1)        = 2.25187E+00 ;
BURNUP_CYCLE_TIME         (idx, 1)        = 0.00000E+00 ;
PROCESS_TIME              (idx, 1)        = 2.66667E-04 ;
CYCLE_IDX                 (idx, 1)        = 500 ;
SOURCE_NEUTRONS           (idx, 1)        = 1000000 ;
MEAN_POP_SIZE             (idx, [1:  2])  = [  2.00000E+03 0.00000 ];
MEMSIZE                   (idx, 1)        = 21.3;
SIMULATION_COMPLETED      (idx, 1)        = 1 ;

% Energy grid parameters:

ERG_EMIN                  (idx, 1)        = 1.00000E-11 ;
ERG_EMAX                  (idx, 1)        = 2.00000E+01 ;
ERG_TOL                   (idx, 1)        = 0.00000E+00 ;
ERG_NE                    (idx, 1)        = 23789 ;
ERG_NE_INI                (idx, 1)        = 23789 ;
ERG_NE_IMP                (idx, 1)        = 3849 ;
ERG_DIX                   (idx, 1)        = 0 ;
USE_DBRC                  (idx, 1)        = 0 ;
URES_MODE                 (idx, 1)        = 1 ;
URES_DILU_CUT             (idx, 1)        = 0.00000E+00 ;
URES_EMIN                 (idx, 1)        = 1.00000E+37 ;
URES_EMAX                 (idx, 1)        = -1.00000E+37 ;
URES_AVAIL                (idx, 1)        = 2 ;
URES_USED                 (idx, 1)        = 0 ;

% Nuclides and reaction channels:

TOT_ISOTOPES              (idx, 1)        = 7 ;
TOT_TRANSPORT_ISOTOPES    (idx, 1)        = 7 ;
TOT_DECAY_ISOTOPES        (idx, 1)        = 0 ;
TOT_REA_CHANNELS          (idx, 1)        = 179 ;
TOT_TRANSMU_REA           (idx, 1)        = 0 ;

% Reaction mode counters:

COLLISIONS                (idx, 1)        = 30765022 ;
FISSION_FRACTION          (idx, 1)        = 3.24203E-03 ;
CAPTURE_FRACTION          (idx, 1)        = 3.22607E-03 ;
ELASTIC_FRACTION          (idx, 1)        = 6.04197E-01 ;
INELASTIC_FRACTION        (idx, 1)        = 4.57188E-03 ;
ALPHA_FRACTION            (idx, 1)        = 0.00000E+00 ;
BOUND_SCATTERING_FRACTION (idx, 1)        = 3.84761E-01 ;
NXN_FRACTION              (idx, 1)        = 1.91776E-06 ;
UNKNOWN_FRACTION          (idx, 1)        = 0.00000E+00 ;
VIRTUAL_FRACTION          (idx, 1)        = 9.10571E-02 ;

FREEGAS_FRACTION          (idx, 1)        = 1.83260E-01 ;
TOTAL_ELASTIC_FRACTION    (idx, 1)        = 9.88958E-01 ;
FISSILE_FISSION_FRACTION  (idx, 1)        = 9.96290E-01 ;
LEAKAGE_REACTIONS         (idx, 1)        = 51070 ;

REA_SAMPLING_EFF          (idx, 1)        = 5.91669E-01 ;

% Slowing-down and thermalization:

COL_SLOW                  (idx, [1:   2]) = [  9.56367E+01 0.00013 ];
COL_THERM                 (idx, [1:   2]) = [  7.57846E+01 0.00128 ];
COL_TOT                   (idx, [1:   2]) = [  1.35931E+02 0.00063 ];
SLOW_TIME                 (idx, [1:   2]) = [  2.95555E-05 0.00040 ];
THERM_TIME                (idx, [1:   2]) = [  4.18478E-04 0.00142 ];
SLOW_DIST                 (idx, [1:   2]) = [  3.38385E+01 0.00060 ];
THERM_DIST                (idx, [1:   2]) = [  2.36235E+01 0.00090 ];
THERM_FRAC                (idx, [1:   2]) = [  5.86255E-01 0.00088 ];

% Parameters for burnup calculation:

BURN_MODE                 (idx, 1)        = 2 ;
BURN_STEP                 (idx, 1)        = 1 ;
BURN_TOT_STEPS            (idx, 1)        = 1 ;
BURNUP                    (idx, 1)        = 0.00000E+00 ;
BURN_DAYS                 (idx, 1)        = 0.00000E+00 ;
ENERGY_OUTPUT             (idx, 1)        = 0.00000E+00 ;
DEP_TTA_CUTOFF            (idx, 1)        = 1.00000E-15 ;
DEP_STABILITY_CUTOFF      (idx, 1)        = 1.00000E-22 ;
DEP_FP_YIELD_CUTOFF       (idx, 1)        = 1.00000E-22 ;
DEP_XS_FRAC_CUTOFF        (idx, 1)        = 0.00000E+00 ;
DEP_XS_ENERGY_CUTOFF      (idx, 1)        = -1.00000E+00 ;
BURN_MATERIALS            (idx, 1)        = 0 ;
FP_NUCLIDES_INCLUDED      (idx, 1)        = 0 ;
FP_NUCLIDES_AVAILABLE     (idx, 1)        = 0 ;
TOT_ACTIVITY              (idx, 1)        = 0.00000E+00 ;
TOT_DECAY_HEAT            (idx, 1)        = 0.00000E+00 ;
TOT_SF_RATE               (idx, 1)        = 0.00000E+00 ;
ACTINIDE_ACTIVITY         (idx, 1)        = 0.00000E+00 ;
ACTINIDE_DECAY_HEAT       (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_ACTIVITY  (idx, 1)        = 0.00000E+00 ;
FISSION_PRODUCT_DECAY_HEAT(idx, 1)        = 0.00000E+00 ;

% Fission source entropies:

ENTROPY_X                 (idx, [1:   2]) = [  5.94150E-01 0.00090 ];
ENTROPY_Y                 (idx, [1:   2]) = [  5.94340E-01 0.00087 ];
ENTROPY_Z                 (idx, [1:   2]) = [  9.38508E-01 0.00044 ];
ENTROPY_TOT               (idx, [1:   2]) = [  6.82594E-01 0.00041 ];

% Fission source centre:

SOURCE_X0                 (idx, [1:   2]) = [  2.64894E-03 0.66032 ];
SOURCE_Y0                 (idx, [1:   2]) = [  2.88299E-03 0.58742 ];
SOURCE_Z0                 (idx, [1:   2]) = [  5.74149E+01 0.00084 ];

% Criticality eigenvalues:

ANA_KEFF                  (idx, [1:   2]) = [  9.94153E-01 0.00130 ];
IMP_KEFF                  (idx, [1:   2]) = [  9.93789E-01 0.00074 ];
COL_KEFF                  (idx, [1:   2]) = [  9.95168E-01 0.00127 ];
ABS_KEFF                  (idx, [1:   2]) = [  9.93789E-01 0.00074 ];
ABS_KINF                  (idx, [1:   2]) = [  1.24984E+00 0.00038 ];
ABS_GC_KEFF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
ABS_GC_KINF               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
IMPL_ALPHA_EIG            (idx, [1:   2]) = [ -2.46114E+02 0.10027 ];
FIXED_ALPHA_EIG           (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
GEOM_ALBEDO               (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];

% Normalized total reaction rates:

TOT_POWER                 (idx, [1:   2]) = [  1.27497E-11 0.00074 ];
TOT_GENRATE               (idx, [1:   2]) = [  9.93556E-01 0.00074 ];
TOT_FISSRATE              (idx, [1:   2]) = [  3.99356E-01 0.00074 ];
TOT_ABSRATE               (idx, [1:   2]) = [  7.95126E-01 0.00058 ];
TOT_LEAKRATE              (idx, [1:   2]) = [  2.04874E-01 0.00225 ];
TOT_LOSSRATE              (idx, [1:   2]) = [  1.00000E+00 0.0E+00 ];
TOT_SRCRATE               (idx, [1:   2]) = [ -3.52996E-03 0.53603 ];
TOT_FLUX                  (idx, [1:   2]) = [  3.07411E+02 0.00067 ];
TOT_RR                    (idx, [1:   2]) = [  1.22804E+02 0.00068 ];
TOT_SOLU_ABSRATE          (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];



% Point-kinetic parameters:

ANA_PROMPT_LIFETIME       (idx, [1:   2]) = [  3.00089E-04 0.00151 ];
IMPL_PROMPT_LIFETIME      (idx, [1:   2]) = [  3.03073E-05 0.00089 ];
ANA_REPROD_TIME           (idx, [1:   2]) = [  3.02764E-04 0.00189 ];
IMPL_REPROD_TIME          (idx, [1:   2]) = [  3.04924E-05 0.00032 ];
DELAYED_EMTIME            (idx, [1:   2]) = [  1.36754E+01 0.04637 ];

% Six-factor formula:

SIX_FF_ETA                (idx, [1:   2]) = [  1.48651E+00 0.00118 ];
SIX_FF_F                  (idx, [1:   2]) = [  9.70845E-01 0.00024 ];
SIX_FF_P                  (idx, [1:   2]) = [  6.63064E-01 0.00078 ];
SIX_FF_EPSILON            (idx, [1:   2]) = [  1.30914E+00 0.00085 ];
SIX_FF_LF                 (idx, [1:   2]) = [  8.52822E-01 0.00050 ];
SIX_FF_LT                 (idx, [1:   2]) = [  9.32234E-01 0.00030 ];
SIX_FF_KINF               (idx, [1:   2]) = [  1.25090E+00 0.00114 ];
SIX_FF_KEFF               (idx, [1:   2]) = [  9.94485E-01 0.00127 ];

% Delayed neutron parameters:

USE_DELNU                 (idx, 1)        = 1 ;
PRECURSOR_GROUPS          (idx, 1)        = 8 ;
BETA_EFF                  (idx, [1:  18]) = [  2.94318E-03 0.02970  2.01076E-04 0.10556  4.63986E-04 0.07503  3.89608E-04 0.08253  6.28238E-04 0.06409  9.80497E-04 0.05365  7.78386E-05 0.16868  1.65368E-04 0.12012  3.65683E-05 0.24145 ];
BETA_ZERO                 (idx, [1:  18]) = [  2.77331E-03 0.00066  1.62899E-04 0.01318  3.34140E-04 0.01317  2.97765E-04 0.01310  4.16740E-04 0.01307  6.28977E-04 0.01307  8.50038E-05 0.01608  1.23163E-04 0.01355  2.42907E-05 0.01423 ];
DECAY_CONSTANT            (idx, [1:  18]) = [  3.03158E-01 0.04179  1.24667E-02 0.0E+00  2.82917E-02 0.0E+00  4.25244E-02 0.0E+00  1.33042E-01 1.9E-09  2.92467E-01 2.7E-09  6.66488E-01 2.7E-09  1.63478E+00 9.3E-10  3.55460E+00 0.0E+00 ];

% Parameters for group constant generation

GC_UNI                    (idx, 1)        = 3 ;
GC_SYM                    (idx, 1)        = 0 ;
GC_NE                     (idx, 1)        = 2 ;
GC_BOUNDS                 (idx, [1:   3]) = [  2.00000E+01  6.25000E-07  1.00000E-11 ];
GC_REMXS_INCLUDE_MULT     (idx, 1)        = 1 ;

% Few-group cross sections:

FLUX                      (idx, [1:   6]) = [  2.66855E+02 0.00069  1.77933E+02 0.00087  8.89222E+01 0.00115 ];
LEAK                      (idx, [1:   6]) = [  6.61843E-04 0.00272  7.09604E-04 0.00331  5.66761E-04 0.00457 ];
TOTXS                     (idx, [1:   6]) = [  4.12306E-01 7.2E-05  3.94468E-01 7.7E-05  4.48004E-01 1.9E-05 ];
FISSXS                    (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CAPTXS                    (idx, [1:   6]) = [  6.75826E-05 0.00132  1.47089E-05 0.00703  1.73330E-04 0.00032 ];
ABSXS                     (idx, [1:   6]) = [  6.75826E-05 0.00132  1.47089E-05 0.00703  1.73330E-04 0.00032 ];
RABSXS                    (idx, [1:   6]) = [  6.75826E-05 0.00132  1.47089E-05 0.00703  1.73330E-04 0.00032 ];
ELAXS                     (idx, [1:   6]) = [  4.12187E-01 7.2E-05  3.94376E-01 7.8E-05  4.47831E-01 1.9E-05 ];
INELAXS                   (idx, [1:   6]) = [  5.17238E-05 0.00621  7.75380E-05 0.00615  2.79148E-15 0.02356 ];
SCATTXS                   (idx, [1:   6]) = [  4.12238E-01 7.2E-05  3.94453E-01 7.7E-05  4.47831E-01 1.9E-05 ];
SCATTPRODXS               (idx, [1:   6]) = [  4.12238E-01 7.2E-05  3.94453E-01 7.7E-05  4.47831E-01 1.9E-05 ];
N2NXS                     (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
REMXS                     (idx, [1:   6]) = [  6.75826E-05 0.00132  3.50410E-03 0.00084  9.50099E-04 0.00347 ];
NUBAR                     (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
NSF                       (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
RECIPVEL                  (idx, [1:   6]) = [  8.68736E-07 0.00099  9.88118E-08 0.00051  2.40875E-06 0.00032 ];
FISSE                     (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Fission spectra:

CHI                       (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CHIP                      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
CHID                      (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

% Group-transfer probabilities and cross sections:

GTRANSFP                  (idx, [1:   8]) = [  9.91154E-01 7.3E-06  1.73454E-03 0.00426  8.84582E-03 0.00082  9.98265E-01 7.4E-06 ];
GTRANSFXS                 (idx, [1:   8]) = [  3.90964E-01 7.5E-05  7.76769E-04 0.00426  3.48939E-03 0.00084  4.47054E-01 2.1E-05 ];

% Group-production probabilities and cross sections:

GPRODP                    (idx, [1:   8]) = [  9.91154E-01 7.3E-06  1.73454E-03 0.00426  8.84582E-03 0.00082  9.98265E-01 7.4E-06 ];
GPRODXS                   (idx, [1:   8]) = [  3.90964E-01 7.5E-05  7.76769E-04 0.00426  3.48939E-03 0.00084  4.47054E-01 2.1E-05 ];

% Diffusion parameters:

DIFFAREA                  (idx, [1:   6]) = [  3.18773E+02 0.00769  2.03533E+02 0.00133  3.05237E+01 0.01083 ];
DIFFCOEF                  (idx, [1:   6]) = [  2.15431E-02 0.00785  7.12890E-01 0.00143  2.84868E-02 0.01041 ];
TRANSPXS                  (idx, [1:   6]) = [  1.77028E+01 0.00999  4.69500E-01 0.00144  1.48891E+01 0.01342 ];
MUBAR                     (idx, [1:   6]) = [ -4.19493E+01 0.01025 -1.90245E-01 0.00903 -3.22466E+01 0.01383 ];

% Material buckling:

MAT_BUCKLING              (idx, [1:   2]) = [ -3.57863E-03 0.00994 ];

% Leakage estimate of diffusion coefficient:

LEAK_DIFFCOEF             (idx, [1:   6]) = [ -2.10845E-01 0.00815 -2.26019E-01 0.00839 -1.80662E-01 0.00901 ];

% PN scattering cross sections:

SCATT0                    (idx, [1:   6]) = [  4.12239E-01 7.2E-05  3.94453E-01 7.7E-05  4.47831E-01 1.9E-05 ];
SCATT1                    (idx, [1:   6]) = [  2.20262E-02 0.00105  2.68009E-02 0.00100  1.24717E-02 0.00333 ];
SCATT2                    (idx, [1:   6]) = [  7.85391E-05 0.22649  2.36620E-03 0.00896 -4.49840E-03 0.00719 ];
SCATT3                    (idx, [1:   6]) = [ -1.28813E-03 0.01148  3.68086E-04 0.04793 -4.59810E-03 0.00570 ];
SCATT4                    (idx, [1:   6]) = [ -2.04024E-03 0.00636 -3.03749E-04 0.05019 -5.51372E-03 0.00431 ];
SCATT5                    (idx, [1:   6]) = [ -1.22687E-03 0.00957  1.29409E-04 0.10893 -3.93941E-03 0.00539 ];

% P1 diffusion parameters:

P1_TRANSPXS               (idx, [1:   6]) = [  3.90280E-01 0.00011  3.67667E-01 0.00011  4.35533E-01 0.00010 ];
P1_DIFFCOEF               (idx, [1:   6]) = [  8.54107E-01 0.00011  9.06639E-01 0.00011  7.65362E-01 0.00010 ];
P1_MUBAR                  (idx, [1:   6]) = [  5.34330E-02 0.00107  6.79454E-02 0.00100  2.78497E-02 0.00333 ];

% B1 critical spectrum calculation:

B1_KINF                   (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_BUCKLING               (idx, [1:   2]) = [  0.00000E+00 0.0E+00 ];
B1_FLUX                   (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_TOTXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_NSF                    (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_FISSXS                 (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_CHI                    (idx, [1:   4]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_ABSXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_RABSXS                 (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_REMXS                  (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_DIFFCOEF               (idx, [1:   6]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTXS                (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];
B1_SCATTPRODXS            (idx, [1:   8]) = [  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00  0.00000E+00 0.0E+00 ];

