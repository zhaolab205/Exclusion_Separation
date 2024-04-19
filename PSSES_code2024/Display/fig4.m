%% fig 4A

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
%% V1re-ex vs sep
clear,clc
load('Validation\Validation_Think.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii');
reaction1 = double(Validation_Think.dat'*PSSEaS.dat);
reaction2 = double(Validation_Think.dat'*FE_P.dat);
reaction3 = double(Validation_Think.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(Validation_Think.Y < 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(Validation_Think.Y > 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(Validation_Think.Y > 0), 'color', [69 76 160]/255);
%% V2fe-ex vs sep
clear,clc
load('Validation\vicarious_pain_dataset\affective_vicarious_pain_clean.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask.nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');
reaction1 = double(affective_vicarious_pain.dat'*PSSEaS.dat);
reaction2 = double(affective_vicarious_pain.dat'*FE_P.dat);
reaction3 = double(affective_vicarious_pain.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(affective_vicarious_pain.Y < 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(affective_vicarious_pain.Y > 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(affective_vicarious_pain.Y > 0), 'color', [69 76 160]/255);
%% V2ns-ex vs sep
clear,clc
load('Validation\vicarious_pain_dataset\physical_vicarious_pain_clean.mat');
PSSEaS = fmri_data('Pattern\PSSEaS.nii', 'Validation\mask.nii');
FE_P = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');
NS_P = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Validation\mask.nii');
reaction1 = double(physical_vicarious_pain.dat'*PSSEaS.dat);
reaction2 = double(physical_vicarious_pain.dat'*FE_P.dat);
reaction3 = double(physical_vicarious_pain.dat'*NS_P.dat);
figure
ROC1 = roc_plot(reaction1,logical(physical_vicarious_pain.Y < 0), 'color', [107 190 114]/255);
hold on
ROC2 = roc_plot(reaction2,logical(physical_vicarious_pain.Y > 0), 'color', [55 183 158]/255);
ROC3 = roc_plot(reaction3,logical(physical_vicarious_pain.Y > 0), 'color', [69 76 160]/255);


%% fig 4B
clear,clc
load('New_Dis_ex_mediation.mat');
% PSSEaS --> PHPain -->  dis Ex Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_PSSEaS_rating,Dis_Rating, Dis_GEPain_rating, 'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  dis Ex Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_PSSEaS_rating, Dis_Rating, Dis_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
load('New_Rep_ex_mediation.mat');
% PSSEaS --> PHPain -->  repEx Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_PSSEaS_rating, Rep_Rating, Rep_GEPain_rating, 'plots', 'verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  repEx Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_PSSEaS_rating, Rep_Rating, Rep_REPain_rating, 'plots', 'verbose', 'boot', 'bootsamples', 10000, 'doCIs');

%%
load('New_Dis_sep_mediation.mat');
%  PSSEaS --> PHPain -->  dis sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_sep_PSSEaS_rating,Dis_sep_Rating, Dis_sep_GEPain_rating, 'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  dis sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_sep_PSSEaS_rating, Dis_sep_Rating, Dis_sep_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
load('New_Rep_sep_mediation.mat');
% PSSEaS --> PHPain -->  rep sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_sep_PSSEaS_rating, Rep_sep_Rating, Rep_sep_GEPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  rep sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_sep_PSSEaS_rating, Rep_sep_Rating, Rep_sep_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
