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