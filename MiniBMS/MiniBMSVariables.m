%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% MiniBMS Variables
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% BATTERY

% Number of module temperature sensors
NrTMdulSnsr_C = uint8(3);

% Number of cells
NrCells_C = uint8(3);

% Battery table data
Em = [2.8 3.228 3.284 3.361 3.408 3.427 3.472 3.477 3.493 3.504 3.516 3.528 3.537 3.545 3.555 3.561 3.566 3.576 3.587 3.589 3.594 3.6 3.608 3.61 3.616 3.619 3.626 3.632 3.637 3.64 3.645 3.646 3.652 3.655 3.658 3.661 3.664 3.668 3.673 3.678 3.68 3.681 3.686 3.692 3.699 3.702 3.705 3.71 3.717 3.723 3.728 3.733 3.735 3.742 3.749 3.755 3.761 3.768 3.773 3.78 3.791 3.798 3.798 3.814 3.818 3.825 3.841 3.846 3.855 3.863 3.877 3.885 3.894 3.907 3.919 3.926 3.935 3.944 3.954 3.964 3.974 3.988 3.998 4.014 4.029 4.034 4.047 4.065 4.074 4.086 4.097 4.131 4.126 4.138 4.15 4.18 4.174 4.187 4.207 4.231 4.221];
CapLUTBp = [0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.1 0.11 0.12 0.13 0.14 0.15 0.16 0.17 0.18 0.19 0.2 0.21 0.22 0.23 0.24 0.25 0.26 0.27 0.28 0.29 0.3 0.31 0.32 0.33 0.34 0.35 0.36 0.37 0.38 0.39 0.4 0.41 0.42 0.43 0.44 0.45 0.46 0.47 0.48 0.49 0.5 0.51 0.52 0.53 0.54 0.55 0.56 0.57 0.58 0.59 0.6 0.61 0.62 0.63 0.64 0.65 0.66 0.67 0.68 0.69 0.7 0.71 0.72 0.73 0.74 0.75 0.76 0.77 0.78 0.79 0.8 0.81 0.82 0.83 0.84 0.85 0.86 0.87 0.88 0.89 0.9 0.91 0.92 0.93 0.94 0.95 0.96 0.97 0.98 0.99 1];
RInt = [0.008846 0.009319 0.009027 0.00847 0.01032 0.01314;0.006389 0.006554 0.005553 0.005525 0.006043 0.007805;0.004364 0.004101 0.00406 0.003452 0.003846 0.004517;0.002031 0.002563 0.002532 0.00246 0.002716 0.003047;0.001443 0.001825 0.001795 0.001778 0.001924 0.002234;0.0005603 0.0007192 0.0006887 0.0007557 0.0007355 0.001014;0.001028 0.001338 0.001 0.001536 0.001546 0.002789];
BattTempBp = [243.1 253.1 263.1 273.1 283.1 298.1 313.1]*0.1;
CapSOCBp = [0 0.2 0.4 0.6 0.8 1];

%% BMS

% Sample time
BMS_TiSample_C = single(0.1);

% Fault enable table
BMS_ModeEnaFltChk = [0 100 110 111 115 120 130 140 200 211 220 230 255];
BMS_EnaFltSts = [1 1 1 1 1 1 1 1 0 0 0 0 0];
%% CELL VOLTAGE MONITORING

% Cell under-voltage fault thresholds
CVM_VCellMinCutoffTh_P = single(3.26);
CVM_VCellMinDrtdTh_P = single(3);
CVM_VCellMinWarnTh_P = single(2.8);

% Cell under-voltage fault debouncer max and min counter values
CVM_DMaxVCellMinCutoff_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMinCutoff_P = -int16(0.5/BMS_TiSample_C);
CVM_DMaxVCellMinDrtd_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMinDrtd_P = -int16(0.5/BMS_TiSample_C);
CVM_DMaxVCellMinWarn_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMinWarn_P = -int16(0.5/BMS_TiSample_C);

% Cell over-voltage fault thresholds
CVM_VCellMaxCutoffTh_P = single(4.22);
CVM_VCellMaxDrtdTh_P = single(4.15);
CVM_VCellMaxWarnTh_P = single(4.1);

% Cell over-voltage fault debouncer max and min counter values
CVM_DMaxVCellMaxCutoff_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMaxCutoff_P = -int16(0.5/BMS_TiSample_C);
CVM_DMaxVCellMaxDrtd_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMaxDrtd_P = -int16(0.5/BMS_TiSample_C);
CVM_DMaxVCellMaxWarn_P = int16(0.5/BMS_TiSample_C);
CVM_DMinVCellMaxWarn_P = -int16(0.5/BMS_TiSample_C);

%% MODULE TEMPERATURE MONITORING

% Module under-temperature fault thresholds
MTM_TMdulMinCutoffTh_P = single(-20);
MTM_TMdulMinDrtdTh_P = single(0);
MTM_TMdulMinWarnTh_P = single(5);

% Module under-temperature fault debouncer max and min counter values
MTM_DMaxTMdulMinCutoff_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMinCutoff_P = -int16(0.5/BMS_TiSample_C);
MTM_DMaxTMdulMinDrtd_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMinDrtd_P = -int16(0.5/BMS_TiSample_C);
MTM_DMaxTMdulMinWarn_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMinWarn_P = -int16(0.5/BMS_TiSample_C);

% Module over-temperature fault thresholds
MTM_TMdulMaxCutoffTh_P = single(55);
MTM_TMdulMaxDrtdTh_P = single(52.5);
MTM_TMdulMaxWarnTh_P = single(50);

% Module over-temperature fault debouncer max and min counter values
MTM_DMaxTMdulMaxCutoff_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMaxCutoff_P = -int16(0.5/BMS_TiSample_C);
MTM_DMaxTMdulMaxDrtd_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMaxDrtd_P = -int16(0.5/BMS_TiSample_C);
MTM_DMaxTMdulMaxWarn_P = int16(0.5/BMS_TiSample_C);
MTM_DMinTMdulMaxWarn_P = -int16(0.5/BMS_TiSample_C);

%% BATTERY OPERATION MODE

% Contactor connect and disconnect wait times
BM_TiCtctrCnct_P = single(1)/BMS_TiSample_C;
BM_TiCtctrDCnct_P = single(1)/BMS_TiSample_C;

%% BATTERY PARAMETER CALCULATION

% Total charge in battery
BPC_BattTotalCharge_P  = single(48);

% Total energy in battery
BPC_BattTotalEnergy_P = BPC_BattTotalCharge_P * single(NrCells_C) * CVM_VCellMaxCutoffTh_P;

%% FAULT CODES

NrCutoff_C = uint8(3);
NrDrtd_C = uint8(2);
NrWarn_C = uint8(1);
NrNoFlt_C = uint8(0);
