
% overlay = 'E:\PAIN\mns_mask\MNI152_T1_1mm.nii\MNI152_T1_1mm.nii';
% o2 = fmridisplay('overlay',overlay);
obj = fmri_data('Pattern\PSSEaS.nii', 'Data\rGM_mask(2mm).nii')
obj = fmri_data('Validation\FE_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii')
obj = fmri_data('Validation\NS_vicarious_pain_pattern_unthresholded.nii', 'Data\rGM_mask(2mm).nii')
obj = fmri_data('Validation\rdpsp_rejection_vs_others_weights_final.nii', 'Data\rGM_mask(2mm).nii')
obj_new = apply_mask(obj, 'Validation\neurosynth\empathy_association-test_z_FDR_0.01_mask.nii');
 write(obj_new, 'fname', 'Validation\neurosynth\REPain.nii');
 
clear 
obj = fmri_data('Validation\neurosynth\PSSEaS.nii', 'Validation\ROI\INS_mask.nii')
cl1=region(obj);
obj = fmri_data('Validation\neurosynth\FEPain.nii', 'Validation\ROI\INS_mask.nii')
cl2=region(obj);
obj = fmri_data('Validation\neurosynth\NSPain.nii', 'Validation\ROI\INS_mask.nii')
cl3=region(obj);
obj = fmri_data('Validation\neurosynth\REPain.nii','Validation\ROI\INS_mask.nii')
cl4=region(obj);
% o2 = montage(o2, 'coronal', 'slice_range', [35 37], 'tworow','spacing', 1);%Y
% o2 = addblobs(o2,cl,'color',[
%      0.0461    0.3833    0.5912
%     0.2461    0.5833    0.7912
%     0.4000    0.7608    0.6471
%     0.6706    0.8667    0.6431
%     0.9020    0.9608    0.5961]) 
% o2 = legend (o2)
%%  colormap
% threshold based on extent of 10 vox or greater
num_vox_per_cluster = cat(1, cl1.numVox);
% cl1(num_vox_per_cluster < 10) = [];
% Print a table, and return clusters with names attached in the cl structure
% This will separate positive and negative-valued voxels in each region
[clpos, clneg] = table(cl1);
% new_cl_with_labels = [clpos clneg];
num_vox_per_cluster = cat(1, cl2.numVox);[clpos, clneg] = table(cl2);
num_vox_per_cluster = cat(1, cl3.numVox);[clpos, clneg] = table(cl3);
num_vox_per_cluster = cat(1, cl4.numVox);[clpos, clneg] = table(cl4);

for i =1:length(cl1)
    a(i,1:3) = cl1(1, i).mm_center;
    a(i,5:7) = cl4(1, i).mm_center;
end 

for i =1:length(cl2)
    a(i,9:11) = cl2(1, i).mm_center;
    a(i,13:15) = cl3(1, i).mm_center;
end 

figure;
ROI_num = [4] % rec:10 dmpfc:28 pag: l_cere:1 r_c:4 pcu:32 l_i:15
info = roi_contour_map([cl1(ROI_num+1) cl2(ROI_num) cl3(ROI_num) cl4(ROI_num+1)], 'cluster', 'colorbar','color',[
     0.0461    0.3833    0.5912
    0.2461    0.5833    0.7912
    0.4000    0.7608    0.6471
    0.6706    0.8667    0.6431
    0.9020    0.9608    0.5961]); %

clear corr p
A = cl1(ROI_num+1).val;
B = cl4(ROI_num+1).val;
B_interp = interp1(1:length(B), B, linspace(1, length(B), length(A)))';
[corr,p] = corr(A, B_interp)

ddddd = [0.7837;0.3282;0.0063];
FDR(:,1) = mafdr(ddddd, 'BHFDR','T')



