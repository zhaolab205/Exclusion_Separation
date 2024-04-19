clear,clc
%% PSSEvS discovery/replication
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'GM_mask.nii');
load('Con_Plc\Con_dataset_Ex_Sep.mat');%sep_Ex
load('Con_Plc\Plc_dataset_Ex_Sep.mat');%sep_com
reaction1 = double(Con_dataset_Ex_Sep.dat'*PSSEvS.dat);reaction2 = double(Plc_dataset_Ex_Sep.dat'*PSSEvS.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Ex_Sep.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Ex_Sep.Y > 0), 'color', [69 76 160]/255);
%% PSSEaS discovery/replication
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\GM_mask.nii');
load('Con_Plc\Con_dataset_Ex_Sep.mat');%sep_Ex
load('Con_Plc\Plc_dataset_Ex_Sep.mat');%sep_Ex
reaction1 = double(Con_dataset_Ex_Sep.dat'*PSSEaS.dat);reaction2 = double(Plc_dataset_Ex_Sep.dat'*PSSEaS.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Ex_Sep.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Ex_Sep.Y > 0), 'color', [69 76 160]/255);
% save(['Con_Plc\SVM_Acc_Ex_Sep'], 'PSSES_Con', 'PSSES_Plc','-v7.3');