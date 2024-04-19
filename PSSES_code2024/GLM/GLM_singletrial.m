clc,clear
ExSep = 'ex';%%%%%%%%%%%%%%%%%%ex or sep

    subdirs = dir(fullfile('origin\fmri\data\path\','sub-*'));% read origin fmri data
    onsetdir = ['origin\onsets\data\path\'];
    for i = 1:length(subdirs)     
        name = subdirs(i).name; % 
        if length(name) == 7
            ID = name(5:7);Treatment = name(6:7);
            if str2num(Treatment) < 20 || str2num(Treatment) >= 60
                if ~exist(['out\put\file\path' ExSep '\sub' ID])% mkdir the output
                     mkdir(['out\put\file\path' ExSep '\sub' ID])
                end
                outputdir = ['out\put\file\path' ExSep '\sub' ID];% set output path
                
                matlabbatch = GLM_singletrial_job(ID,onsetdir,ExSep,outputdir);
                spm_jobman('run', matlabbatch);
            end
        end
    end
