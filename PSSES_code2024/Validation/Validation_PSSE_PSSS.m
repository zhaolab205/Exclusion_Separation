clear,clc
%% PSSE discovery data
SVME = fmri_data('Pattern\PSSE.nii', 'GM_mask.nii');
load('Con_Plc\Con_dataset_Ex_Sep.mat');%Ex_Sep
SVME_Acc_Ex_Sep = SVM(SVME,Con_dataset_Ex_Sep);
load('Con_Plc\Con_dataset_Ex_In.mat');%Ex_in
SVME_Acc_Ex_In = SVM(SVME,Con_dataset_Ex_In);
load('Con_Plc\Con_dataset_Ex_Com.mat');%Ex_com
SVME_Acc_Ex_Com = SVM(SVME,Con_dataset_Ex_Com);
load('Con_Plc\Con_dataset_Sep_Com.mat');%sep_com
SVME_Acc_Sep_Com = SVM(SVME,Con_dataset_Sep_Com);
%% PSSS discovery data
SVMS = fmri_data('Pattern\PSSS.nii', 'GM_mask.nii');
load('Con_Plc\Con_dataset_Ex_Sep.mat');%sep_Ex
SVMS_Acc_Sep_Ex = SVM(SVMS,Con_dataset_Ex_Sep);
load('Con_Plc\Con_dataset_Sep_Com.mat');%sep_com
SVMS_Acc_Sep_Com = SVM(SVMS,Con_dataset_Sep_Com);
load('Con_Plc\Con_dataset_Sep_In.mat');%Sep_In
SVMS_Acc_Sep_In = SVM(SVMS,Con_dataset_Sep_In);
load('Con_Plc\Con_dataset_Ex_In.mat');%Ex_in
SVMS_Acc_Ex_In = SVM(SVMS,Con_dataset_Ex_In);
% save(['Con_Plc\SVM_Acc_Con'], 'SVME_Acc_Ex_Sep', 'SVME_Acc_Ex_In', 'SVME_Acc_Ex_Com', 'SVME_Acc_Sep_Com',...
%      'SVMS_Acc_Sep_Ex', 'SVMS_Acc_Sep_Com', 'SVMS_Acc_Sep_In', 'SVMS_Acc_Ex_In','-v7.3');
 
clear,clc
%% PSSE replication data
SVME = fmri_data('Con_Plc\PSSE.nii', 'GM_mask.nii');
load('Con_Plc\Plc_dataset_Ex_Sep.mat');%Ex_Sep
SVME_Acc_Ex_Sep = SVM(SVME,Plc_dataset_Ex_Sep);
load('Con_Plc\Plc_dataset_Ex_In.mat');%Ex_in
SVME_Acc_Ex_In = SVM(SVME,Plc_dataset_Ex_In);
load('Con_Plc\Plc_dataset_Ex_Com.mat');%Ex_com
SVME_Acc_Ex_Com = SVM(SVME,Plc_dataset_Ex_Com);
load('Con_Plc\Plc_dataset_Sep_Com.mat');%sep_com
SVME_Acc_Sep_Com = SVM(SVME,Plc_dataset_Sep_Com);
%% PSSS replication data
SVMS = fmri_data('Con_Plc\PSSS.nii', 'GM_mask.nii');
load('Con_Plc\Plc_dataset_Ex_Sep.mat');%sep_Ex
SVMS_Acc_Sep_Ex = SVM(SVMS,Plc_dataset_Ex_Sep);
load('Con_Plc\Plc_dataset_Sep_Com.mat');%sep_com
SVMS_Acc_Sep_Com = SVM(SVMS,Plc_dataset_Sep_Com);
load('Con_Plc\Plc_dataset_Sep_In.mat');%Sep_In
SVMS_Acc_Sep_In = SVM(SVMS,Plc_dataset_Sep_In);
load('Con_Plc\Plc_dataset_Ex_In.mat');%Ex_in
SVMS_Acc_Ex_In = SVM(SVMS,Plc_dataset_Ex_In);
% save(['Con_Plc\SVM_Acc_Plc'], 'SVME_Acc_Ex_Sep', 'SVME_Acc_Ex_In', 'SVME_Acc_Ex_Com', 'SVME_Acc_Sep_Com',...
%      'SVMS_Acc_Sep_Ex', 'SVMS_Acc_Sep_Com', 'SVMS_Acc_Sep_In', 'SVMS_Acc_Ex_In','-v7.3');
 