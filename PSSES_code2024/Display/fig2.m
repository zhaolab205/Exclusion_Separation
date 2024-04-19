%% Fig2B surface plot (CanlabCore)
VIES_thresholded = fmri_data('Pattern\Haufe_pattern_exsep.nii', 'Data\rGM_mask(2mm).nii');
surface(VIES_thresholded); % equivalent to 'surface(VIDS_thresholded,'left_cutaway');'

%% Fig2B axial/saggital/coronal maps (CanlabCore)
VIES_thresholded = fmri_data('Pattern\Haufe_pattern_exvsep.nii', 'Data\rGM_mask(2mm).nii');
o2 = fmridisplay;
% specifying 'z=axial'/'x=saggital'/'y=coronal' and slice_range you want to visualize for corresponding maps, like;
o2 = montage(o2, 'saggital', 'slice_range', [10 30], 'spacing', 1); % for z=53, similar coding; 
o2=addblobs(o2,region(VIES_thresholded));
snapnow

%% Fig 2d
clear
nii_path = ['Pattern\Haufe_pattern_sep_mask.nii';'Pattern\Haufe_pattern_eex_mask.nii'];
patt =  fmri_data(nii_path, 'Data\rGM_mask(2mm).nii');
patt.image_names = {'PSSS';'PSSE'};
clear nii_path_2
path = '246Region\24';
subj = dir(fullfile(path,'*.nii'));num = 0;
for i = 24:-1:17
            num = num+1;
            nii_path_2(num,:) = fullfile([path '\' subj(i).name]);
end
modgen = fmri_data(nii_path_2, 'Data\rGM_mask(2mm).nii');
%modgen.image_names = {'Default';'Frontoparietal';'Limbic';'Ventral Attention';'Dorsal Attention';'Somatomotor';'Visual'};
% Colors
n = length(patt.image_names);
patt_colors={ [102 102 153]/255 [147 112 219]/255 [1 0.6 0.2] [0 0.6 0.4] [0 0.4 1]}' ;%[8,69,148]/255
modgen_colors = {[8,48,107]/255 [8,81,156]/255 [33,113,181]/255 [66,146,198]/255 [107,174,214]/255 [158,202,225]/255 [198,219,239]/255 [222,235,247]/255 ...
   [0.6 0 0] [0.6 0.2 0] [0.6 0.4 0] [0.6 0.6 0] [0.6 0.8 0] [0.6 1 0.2] [0.6 1 0.2] [0.6 1 0.4]}; % % n = 8
% Create river plot and save
[layer1, layer2, ribbons, sim_matrix] = riverplot(patt, 'layer2', modgen, 'colors1', patt_colors, 'colors2', modgen_colors, 'pos');
riverplot_toggle_lines(ribbons);
cols=[%[8,69,148]/255
    [102 102 153]/255
    [147 112 219]/255
    1 0.6 0.2
    0 0.6 0.4
    0 0.4 1];
piedata=abs(sim_matrix); % is already positive in this case
piedata(piedata==0) = 0.00001;

figtitle=sprintf('Mini_pies_modgencompact.png');
create_figure(figtitle)
for i = 1:size(piedata,1)
    subplot(1,size(piedata,1),i)
    h = wani_pie(piedata(i,:)./sum(piedata(i,:))*100, 'cols',cols, 'notext');
end