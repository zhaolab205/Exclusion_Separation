
%% Discovery-Ex vs in
clear,clc%

load('Con_Plc\Con_dataset_Ex_In.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');
reaction1 = double(Con_dataset_Ex_In.dat'*PSSEaS.dat);reaction2 = double(Con_dataset_Ex_In.dat'*FE_P.dat);
reaction3 = double(Con_dataset_Ex_In.dat'*NS_P.dat);
reaction4 = double(Con_dataset_Ex_In.dat'*Re_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Ex_In.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Con_dataset_Ex_In.Y < 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Con_dataset_Ex_In.Y < 0), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(Con_dataset_Ex_In.Y > 0), 'color', [73 46 87]/255);
%% Replication-Ex vs in
clear,clc
load('Con_Plc\Plc_dataset_Ex_In.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');
reaction1 = double(Plc_dataset_Ex_In.dat'*PSSEaS.dat);reaction2 = double(Plc_dataset_Ex_In.dat'*FE_P.dat);
reaction3 = double(Plc_dataset_Ex_In.dat'*NS_P.dat);
reaction4 = double(Plc_dataset_Ex_In.dat'*Re_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Plc_dataset_Ex_In.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Ex_In.Y < 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Plc_dataset_Ex_In.Y < 0), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(Plc_dataset_Ex_In.Y > 0), 'color', [73 46 87]/255);
%% dis-sep vs com
clear,clc
load('Con_Plc\Con_dataset_Sep_Com.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');
reaction1 = double(Con_dataset_Sep_Com.dat'*PSSEaS.dat);reaction2 = double(Con_dataset_Sep_Com.dat'*FE_P.dat);
reaction3 = double(Con_dataset_Sep_Com.dat'*NS_P.dat);
reaction4 = double(Con_dataset_Sep_Com.dat'*Re_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Sep_Com.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Con_dataset_Sep_Com.Y < 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Con_dataset_Sep_Com.Y < 0), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(Con_dataset_Sep_Com.Y > 0), 'color', [73 46 87]/255);
%% rep-sep vs com
clear,clc

load('Con_Plc\Plc_dataset_Sep_Com.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');
reaction1 = double(Plc_dataset_Sep_Com.dat'*PSSEaS.dat);reaction2 = double(Plc_dataset_Sep_Com.dat'*FE_P.dat);
reaction3 = double(Plc_dataset_Sep_Com.dat'*NS_P.dat);
reaction4 = double(Plc_dataset_Sep_Com.dat'*Re_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Plc_dataset_Sep_Com.Y > 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Sep_Com.Y < 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Plc_dataset_Sep_Com.Y < 0), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(Plc_dataset_Sep_Com.Y > 0), 'color', [73 46 87]/255);

