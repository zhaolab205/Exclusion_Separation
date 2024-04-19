clear
path='origin\fmri\data\path\';%%%%%%%%%%%%%%%%%%%%
subdirs = dir(fullfile(path,'sub-*'));%read origin fmri data

for i = 1:length(subdirs)   
    name = subdirs(i).name; 
    if length(name) == 7
        ID = name(5:7);Treatment = name(6:7);
        if str2num(Treatment) < 20 || str2num(Treatment) >= 60
            if ~exist(['out\put\file\path' '\sub-' ID])% mkdir the output
                 mkdir(['out\put\file\path' '\sub-' ID])
            end
            prefix = [path 'sub-' ID '\func\'];%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% read func file
            onsetdir = ['origin\onsets\data\path\'];%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% read onsets file
            matlabbatch = GLM_type_job(ID,prefix,onsetdir);
            spm_jobman('run', matlabbatch);
        end
    end
end
