clear,clc
spm('defaults', 'FMRI');
ES = {'ex','sep'};%%%%%%%%%%%%%%%%%%ex and sep
subdirs = dir(fullfile('origin\fmri\data\path\','sub-*'));%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% read origin fmri data
for tepyyy = 1:2
    for i = 1:length(subdirs)   
        name = subdirs(i).name; 
        %disp(name);
        if length(name) == 7
            ID = name(5:7);Treatment = name(6:7);
                ExSep = cell2mat(ES(tepyyy));
                if ~exist(['out\put\file\path' ExSep '\sub' ID])% mkdir the output
                     mkdir(['out\put\file\path' ExSep '\sub' ID])
                end
                outputdir = ['out\put\file\path' ExSep '\sub' ID];% set output path
                disp(name);
                prefix = ['origin\fmri\data\path\' ID '\func\'];%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% read func file
                onsetdir = ['origin\onsets\data\path\'];%%%%%%%%%%%%%%%%%%%%%%%%%%%% read onsets file

                matlabbatch = GLM_Rating15_job(ID,ExSep,outputdir,prefix,onsetdir);
                spm_jobman('run', matlabbatch);
        end
    end
end