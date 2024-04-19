clear
load('Con_Plc\Con_dataset_Ex.mat');
svmobj = svm({'C=1', 'optimizer="andre"', kernel('linear')});
dataobj = data('spider data', double(Con_dataset_Ex.dat)', Con_dataset_Ex.Y);
%clear Con_dataset_Ex
[~, svmobj] = train(svmobj, dataobj, loss);
weights = get_w(svmobj)';
bias = svmobj.b0; 
% save('PSSE', 'weights', 'bias', '-v7.3');
% load('PSSE.mat')
fmri_dat = fmri_data;fmri_dat.dat = weights;fmri_dat.volInfo = Con_dataset_Ex.volInfo;fmri_dat.Y = bias;
write(fmri_dat, 'fname', 'Con_Plc\PSSE.nii');
