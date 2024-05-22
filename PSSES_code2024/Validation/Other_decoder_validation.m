
%% V1re-ex vs sep
clear,clc
load('Validation\Validation_Think.mat');%Dis-Ex vs Other
PSSE = fmri_data('Pattern\PSSE.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% G_P = fmri_data('Validation\General_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
reaction1 = double(Validation_Think.dat'*PSSE.dat);reaction2 = double(Validation_Think.dat'*PSSS.dat);
reaction3 = double(Validation_Think.dat'*PSSEaS.dat);reaction4 = double(Validation_Think.dat'*PSSEvS.dat);
reaction5 = double(Validation_Think.dat'*FE_P.dat);reaction6 = double(Validation_Think.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Validation_Think.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Validation_Think.Y < 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Validation_Think.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Validation_Think.Y > 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Validation_Think.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Validation_Think.Y > 0), 'color', [255 195 0]/255);
%% V1tnt-ex vs sep
% % % clear,clc
% % % load('Validation\Validation_TNT.mat');%Dis-Ex vs Other
% % % PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% % % FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% % % NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% % % Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% % % % G_P = fmri_data('Validation\General_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% % % reaction1 = double(Validation_TNT.dat'*PSSEaS.dat);% reaction2 = double(Validation_TNT.dat'*PSSS.dat);
% % % reaction2 = double(Validation_TNT.dat'*FE_P.dat);
% % % reaction3 = double(Validation_TNT.dat'*NS_P.dat);
% % % reaction4 = double(Validation_TNT.dat'*Hot_P.dat);
% % % figure
% % % ROC1 = roc_plot(reaction1,logical(Validation_TNT.Y > 0), 'color', [107 190 114]/255);%, 'plotmethod', 'observed'
% % % hold on
% % % ROC2 = roc_plot(reaction2,logical(Validation_TNT.Y < 0), 'color', [55 183 158]/255);
% % % ROC3 = roc_plot(reaction3,logical(Validation_TNT.Y < 0), 'color', [69 76 160]/255);
% % % ROC4 = roc_plot(reaction4, logical(Validation_TNT.Y < 0), 'color', [73 46 87]/255);
%% V2fe-ex vs sep
clear,clc
load('Validation\vicarious_pain_dataset\affective_vicarious_pain_clean.mat');%Dis-Ex vs Other
PSSE = fmri_data('Pattern\PSSE.nii', 'Validation\mask.nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Validation\mask.nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask.nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Validation\mask.nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');%_FDR_05
% Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% G_P = fmri_data('Validation\General_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
reaction1 = double(affective_vicarious_pain.dat'*PSSE.dat);reaction2 = double(affective_vicarious_pain.dat'*PSSS.dat);
reaction3 = double(affective_vicarious_pain.dat'*PSSEaS.dat);reaction4 = double(affective_vicarious_pain.dat'*PSSEvS.dat);
reaction5 = double(affective_vicarious_pain.dat'*FE_P.dat);reaction6 = double(affective_vicarious_pain.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(affective_vicarious_pain.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(affective_vicarious_pain.Y < 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(affective_vicarious_pain.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(affective_vicarious_pain.Y > 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(affective_vicarious_pain.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(affective_vicarious_pain.Y > 0), 'color', [255 195 0]/255);
% ROC4 = roc_plot(reaction4, logical(affective_vicarious_pain.Y > 0), 'color', [73 46 87]/255);
%% V2ns-ex vs sep
clear,clc
load('Validation\vicarious_pain_dataset\physical_vicarious_pain_clean.mat');%Dis-Ex vs Other
PSSE = fmri_data('Pattern\PSSE.nii', 'Validation\mask.nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Validation\mask.nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask.nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Validation\mask.nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');%_FDR_05
% Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% G_P = fmri_data('Validation\General_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
reaction1 = double(physical_vicarious_pain.dat'*PSSE.dat);reaction2 = double(physical_vicarious_pain.dat'*PSSS.dat);
reaction3 = double(physical_vicarious_pain.dat'*PSSEaS.dat);reaction4 = double(physical_vicarious_pain.dat'*PSSEvS.dat);
reaction5 = double(physical_vicarious_pain.dat'*FE_P.dat);reaction6 = double(physical_vicarious_pain.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(physical_vicarious_pain.Y > 0), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(physical_vicarious_pain.Y < 0), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(physical_vicarious_pain.Y < 0), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(physical_vicarious_pain.Y > 0), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(physical_vicarious_pain.Y > 0), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(physical_vicarious_pain.Y > 0), 'color', [255 195 0]/255);
% ROC4 = roc_plot(reaction4, logical(physical_vicarious_pain.Y > 0), 'color', [73 46 87]/255);
%%  Disgust
clear,clc
load('Validation\Discovery_dataset_disgust.mat');%Dis-Ex vs Other
PSSE = fmri_data('Pattern\PSSE.nii', 'Validation\mask_Disgust.nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Validation\mask_Disgust.nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask_Disgust.nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Validation\mask_Disgust.nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_Disgust.nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_Disgust.nii');%_FDR_05
% Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
% G_P = fmri_data('Validation\General_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
reaction1 = double(Discovery.dat'*PSSE.dat);reaction2 = double(Discovery.dat'*PSSS.dat);
reaction3 = double(Discovery.dat'*PSSEaS.dat);reaction4 = double(Discovery.dat'*PSSEvS.dat);
reaction5 = double(Discovery.dat'*FE_P.dat);reaction6 = double(Discovery.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Discovery.Y < 3), 'color', [144 201 231]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(Discovery.Y > 3), 'color', [33 158 188]/255);
ROC3 = roc_plot(reaction3,logical(Discovery.Y > 3), 'color', [19 103 131]/255);
ROC4 = roc_plot(reaction4, logical(Discovery.Y < 3), 'color', [2 48 74]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(Discovery.Y > 3), 'color', [1 53 101]/255);
ROC6 = roc_plot(reaction6,logical(Discovery.Y > 3), 'color', [255 195 0]/255);

%%
clear,clc%
load('Validation\bmrk3_6levels_pain_dataset.mat');

% fmri_dat = fmri_data;fmri_dat.dat = Discovery.mask.dat  ;fmri_dat.volInfo = Discovery.volInfo;
% write(fmri_dat, 'fname', ['Validation\mask_Disgust.nii']);
PSSE = fmri_data('Pattern\VIFS.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Validation\mask_pain_dataset.nii');%_FDR_05
PSSE_dat = PSSE.dat(~image_obj.removed_voxels);PSSS_dat = PSSS.dat(~image_obj.removed_voxels);PSSEvS_dat = PSSEvS.dat(~image_obj.removed_voxels);
PSSEaS_dat = PSSEaS.dat(~image_obj.removed_voxels);FE_P_dat = FE_P.dat(~image_obj.removed_voxels);NS_P_dat = NS_P.dat(~image_obj.removed_voxels);
Re_P_dat = Re_P.dat(~image_obj.removed_voxels);Hot_P_dat = Hot_P.dat(~image_obj.removed_voxels);
% SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05

reaction1 = double(image_obj.dat'*PSSE_dat);reaction2 = double(image_obj.dat'*PSSS_dat);
reaction3 = double(image_obj.dat'*PSSEvS_dat);
reaction4 = double(image_obj.dat'*PSSEaS_dat);reaction5 = double(image_obj.dat'*FE_P_dat);
reaction6 = double(image_obj.dat'*NS_P_dat); reaction7 = double(image_obj.dat'*Re_P_dat);reaction8 = double(image_obj.dat'*Hot_P_dat);
figure
ROC1 = roc_plot(reaction1,logical(image_obj.Y > 100), 'color', [107 190 114]/255);%, 'plotmethod', 'observed'
a=reaction4(logical(image_obj.Y > 100));b=reaction4(logical(image_obj.Y < 100));
hold on
ROC2 = roc_plot(reaction2,logical(image_obj.Y > 100), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(image_obj.Y < 100), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(image_obj.Y < 100), 'color', [73 46 87]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(image_obj.Y > 100), 'color', [0 0 0]/255);
ROC6 = roc_plot(reaction6,logical(image_obj.Y > 100), 'color', [50 50 50]/255);
ROC7 = roc_plot(reaction7,logical(image_obj.Y > 100), 'color', [100 100 100]/255);
ROC8 = roc_plot(reaction8,logical(image_obj.Y > 100), 'color', [150 150 150]/255);
%%
clear,clc%
load('Validation\bmrk3_6levels_pain_dataset.mat');

% fmri_dat = fmri_data;fmri_dat.dat = image_obj.mask.dat  ;fmri_dat.volInfo = image_obj.volInfo;
% write(fmri_dat, 'fname', ['Validation\mask_pain_dataset.nii']);
PSSE = fmri_data('Pattern\PSSE.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
PSSS = fmri_data('Pattern\PSSS.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
PSSEvS = fmri_data('Pattern\PSSEvS.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
Re_P = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
PSSE_dat = PSSE.dat;PSSS_dat = PSSS.dat;PSSEvS_dat = PSSEvS.dat;
PSSEaS_dat = PSSEaS.dat;FE_P_dat = FE_P.dat;NS_P_dat = NS_P.dat;
Re_P_dat = Re_P.dat;
% SIIPS1 = fmri_data('Validation\rnonnoc_v11_4_137subjmap_weighted_mean.nii', 'Data\rGM_mask(2mm).nii');%_FDR_05
Hot_P = fmri_data('Validation\rdpsp_hot_vs_others_weights_final.nii', 'Validation\mask_pain_dataset_Lucy.nii');%_FDR_05
reaction1 = double(image.dat'*PSSE_dat);reaction2 = double(image.dat'*PSSS_dat);
reaction3 = double(image.dat'*PSSEvS_dat);
reaction4 = double(image.dat'*PSSEaS_dat);reaction5 = double(image.dat'*FE_P_dat);
reaction6 = double(image.dat'*NS_P_dat); reaction7 = double(image.dat'*Re_P_dat);reaction8 = double(image.dat'*Hot_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(image.Y > 100), 'color', [107 190 114]/255);%, 'plotmethod', 'observed'
hold on
ROC2 = roc_plot(reaction2,logical(image.Y > 100), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(image.Y < 100), 'color', [69 76 160]/255);
ROC4 = roc_plot(reaction4, logical(image.Y < 100), 'color', [73 46 87]/255);%legend('Rating 5');
ROC5 = roc_plot(reaction5,logical(image.Y > 100), 'color', [0 0 0]/255);
ROC6 = roc_plot(reaction6,logical(image.Y > 100), 'color', [50 50 50]/255);
ROC7 = roc_plot(reaction7,logical(image.Y > 100), 'color', [100 100 100]/255);
ROC8 = roc_plot(reaction8,logical(image.Y > 100), 'color', [100 100 100]/255);
