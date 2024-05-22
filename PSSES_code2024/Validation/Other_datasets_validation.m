%% Dis-Ex vs in
clear,clc%
load('Con_Plc\Con_dataset_Ex_In.mat');
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% PINES = fmri_data('Validation\Rating_Weights_LOSO_2.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
reaction1 = double(Con_dataset_Ex_In.dat'*PSSEaS.dat);reaction2 = double(Con_dataset_Ex_In.dat'*PSSEvS.dat);
reaction3 = double(Con_dataset_Ex_In.dat'*FE_P.dat);
reaction4 = double(Con_dataset_Ex_In.dat'*NS_P.dat);reaction5 = double(Con_dataset_Ex_In.dat'*Re_P.dat);
reaction6 = double(Con_dataset_Ex_In.dat'*Hot_P.dat);reaction7 = double(Con_dataset_Ex_In.dat'*SIIPS1.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Ex_In.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Con_dataset_Ex_In.Y > 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Con_dataset_Ex_In.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Con_dataset_Ex_In.Y < 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Con_dataset_Ex_In.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Con_dataset_Ex_In.Y < 0), 'color', [255 195 0]/255);
ROC7 = roc_plot(reaction7,logical(Con_dataset_Ex_In.Y < 0), 'color', [251 132 2]/255);
%% Rep-Ex vs in
clear,clc
load('Con_Plc\Plc_dataset_Ex_In.mat');%Dis-Ex vs Other
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05

reaction1 = double(Plc_dataset_Ex_In.dat'*PSSEaS.dat);reaction2 = double(Plc_dataset_Ex_In.dat'*PSSEvS.dat);
reaction3 = double(Plc_dataset_Ex_In.dat'*FE_P.dat);
reaction4 = double(Plc_dataset_Ex_In.dat'*NS_P.dat);reaction5 = double(Plc_dataset_Ex_In.dat'*Re_P.dat);
reaction6 = double(Plc_dataset_Ex_In.dat'*Hot_P.dat);reaction7 = double(Plc_dataset_Ex_In.dat'*SIIPS1.dat);
figure
ROC1 = roc_plot(reaction1,logical(Plc_dataset_Ex_In.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Ex_In.Y > 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Plc_dataset_Ex_In.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Plc_dataset_Ex_In.Y < 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Plc_dataset_Ex_In.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Plc_dataset_Ex_In.Y < 0), 'color', [255 195 0]/255);
ROC7 = roc_plot(reaction7,logical(Plc_dataset_Ex_In.Y < 0), 'color', [251 132 2]/255);
%% dis-sep vs com
clear,clc
load('Con_Plc\Con_dataset_Sep_Com.mat');%Dis-Ex vs Other
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05

reaction1 = double(Con_dataset_Sep_Com.dat'*PSSEaS.dat);reaction2 = double(Con_dataset_Sep_Com.dat'*PSSEvS.dat);
reaction3 = double(Con_dataset_Sep_Com.dat'*FE_P.dat);
reaction4 = double(Con_dataset_Sep_Com.dat'*NS_P.dat);reaction5 = double(Con_dataset_Sep_Com.dat'*Re_P.dat);
reaction6 = double(Con_dataset_Sep_Com.dat'*Hot_P.dat);reaction7 = double(Con_dataset_Sep_Com.dat'*SIIPS1.dat);
figure
ROC1 = roc_plot(reaction1,logical(Con_dataset_Sep_Com.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Con_dataset_Sep_Com.Y < 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Con_dataset_Sep_Com.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Con_dataset_Sep_Com.Y < 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Con_dataset_Sep_Com.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Con_dataset_Sep_Com.Y < 0), 'color', [255 195 0]/255);
ROC7 = roc_plot(reaction7,logical(Con_dataset_Sep_Com.Y < 0), 'color', [251 132 2]/255);
%% rep-sep vs com
clear,clc
load('Con_Plc\Plc_dataset_Sep_Com.mat');%Dis-Ex vs Other
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05

reaction1 = double(Plc_dataset_Sep_Com.dat'*PSSEaS.dat);reaction2 = double(Plc_dataset_Sep_Com.dat'*PSSEvS.dat);
reaction3 = double(Plc_dataset_Sep_Com.dat'*FE_P.dat);
reaction4 = double(Plc_dataset_Sep_Com.dat'*NS_P.dat);reaction5 = double(Plc_dataset_Sep_Com.dat'*Re_P.dat);
reaction6 = double(Plc_dataset_Sep_Com.dat'*Hot_P.dat);reaction7 = double(Plc_dataset_Sep_Com.dat'*SIIPS1.dat);
figure
ROC1 = roc_plot(reaction1,logical(Plc_dataset_Sep_Com.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Plc_dataset_Sep_Com.Y < 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Plc_dataset_Sep_Com.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Plc_dataset_Sep_Com.Y < 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Plc_dataset_Sep_Com.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Plc_dataset_Sep_Com.Y < 0), 'color', [255 195 0]/255);
ROC7 = roc_plot(reaction7,logical(Plc_dataset_Sep_Com.Y > 0), 'color', [251 132 2]/255);
