load('Con_Plc\Con_dataset_Ex.mat');

[~, stats] = predict(Con_dataset_Ex,  'algorithm_name', 'cv_svm', 'nfolds', 1, 'error_type', 'mcr');

% Here, we used the script from Keith A. Bush which splits the data into n bricks
% https://github.com/kabush/kablab/blob/master/mvpa/fast_haufe.m
Haufe_pattern = fast_haufe(double(Con_dataset_ExSep.dat'), double(stats.weight_obj.dat), 500);


