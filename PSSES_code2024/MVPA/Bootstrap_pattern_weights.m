load('Con_Plc\Con_dataset_Ex.mat');

[~, stats_boot] = predict(Con_dataset_Ex,  'algorithm_name', 'cv_svm', 'nfolds', 1, 'error_type', 'mcr','useparallel', 0,...
    'bootweights',1,'savebootweights',1,'bootsamples', 10000);
% Here, we replaced weight values with Z values
stats_boot_1=stats_boot;
stats_boot_1.weight_obj.dat=stats_boot_1.WTS.wZ';
data_threshold = threshold(stats_boot_1.weight_obj, .05, 'fdr');

write(data_threshold,'thresh','fname', 'PSSE_FDR_05.nii'); 