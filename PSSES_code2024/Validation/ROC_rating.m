%% PSSEvS discovery
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'GM_mask.nii');
load('Con_Plc\Con_dataset_R1.mat');%sep_Ex
load('Con_Plc\Con_dataset_R2.mat');%sep_Ex
load('Con_Plc\Con_dataset_R3.mat');%sep_Ex
load('Con_Plc\Con_dataset_R4.mat');%sep_Ex
load('Con_Plc\Con_dataset_R5.mat');%sep_Ex
reaction1 = double(Con_dataset_R1.dat'*PSSEvS.dat);reaction2 = double(Con_dataset_R2.dat'*PSSEvS.dat);reaction3 = double(Con_dataset_R3.dat'*PSSEvS.dat);
reaction4 = double(Con_dataset_R4.dat'*PSSEvS.dat);reaction5 = double(Con_dataset_R5.dat'*PSSEvS.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_R1.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Con_dataset_R2.Y > 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Con_dataset_R3.Y > 0), 'color', [47 141 146]/255);
ROC4 = roc_plot(reaction4,logical(Con_dataset_R4.Y > 0), 'color', [69 76 160]/255);
ROC5 = roc_plot(reaction5, logical(Con_dataset_R5.Y > 0), 'color', [73 46 87]/255);

%% PSSEvS replication
PSSES = fmri_data('Pattern\PSSEvS.nii', 'GM_mask.nii');
load('Con_Plc\Plc_dataset_R1.mat');%sep_Ex
load('Con_Plc\Plc_dataset_R2.mat');%sep_Ex
load('Con_Plc\Plc_dataset_R3.mat');%sep_Ex
load('Con_Plc\Plc_dataset_R4.mat');%sep_Ex
load('Con_Plc\Plc_dataset_R5.mat');%sep_Ex
reaction1 = double(Plc_dataset_R1.dat'*PSSES.dat);reaction2 = double(Plc_dataset_R2.dat'*PSSES.dat);reaction3 = double(Plc_dataset_R3.dat'*PSSES.dat);
reaction4 = double(Plc_dataset_R4.dat'*PSSES.dat);reaction5 = double(Plc_dataset_R5.dat'*PSSES.dat);
figure
ROC1 = roc_plot(reaction1,logical(Plc_dataset_R1.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_R2.Y > 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Plc_dataset_R3.Y > 0), 'color', [47 141 146]/255);
ROC4 = roc_plot(reaction4,logical(Plc_dataset_R4.Y > 0), 'color', [69 76 160]/255);
ROC5 = roc_plot(reaction5, logical(Plc_dataset_R5.Y > 0), 'color', [73 46 87]/255);
