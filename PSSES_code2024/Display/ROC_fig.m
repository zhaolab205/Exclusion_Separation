function [ACC,ACC_p] = ROC_fig(SVME,nii_data_Ex_Sep)
reaction = double(nii_data_Ex_Sep.dat'*SVME.dat);%/1000
label_array = nii_data_Ex_Sep.Y;
figure
ROC = roc_plot(reaction,logical(label_array > 0), 'color', 'r');
ACC(1,1) = ROC.accuracy;
ACC_p(1,1) = ROC.accuracy_p;
end