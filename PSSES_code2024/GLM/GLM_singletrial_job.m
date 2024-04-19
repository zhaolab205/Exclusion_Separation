%-----------------------------------------------------------------------
% Job saved on 18-May-2023 21:22:03 by cfg_util (rev $Rev: 7345 $)
% spm SPM - SPM12 (7771)
% cfg_basicio BasicIO - Unknown
% Xiaodong Zhang,Weihua Zhao
%-----------------------------------------------------------------------
function matlabbatch = GLM_singletrial_job(ID,onsetdir,ExSep,outputdir)
        prefix = ['origin\fmri\data\path\' ID '\func\'];
        
        run01=[prefix 's8_sub-' ID '_task-' ExSep '_run-01_space-MNI152NLin2009cAsym_res-2_desc-preproc_bold.nii'];
        run02=[prefix 's8_sub-' ID '_task-' ExSep '_run-02_space-MNI152NLin2009cAsym_res-2_desc-preproc_bold.nii'];
        run03=[prefix 's8_sub-' ID '_task-' ExSep '_run-03_space-MNI152NLin2009cAsym_res-2_desc-preproc_bold.nii'];
        
        onset1 = [onsetdir 'sub' ID '_' ExSep '1.mat'];
        onset2 = [onsetdir 'sub' ID '_' ExSep '2.mat'];
        onset3 = [onsetdir 'sub' ID '_' ExSep '3.mat'];
        covfiles1 = [prefix 'sub-' ID '_task-task-' ExSep '_run-01_nuis_matrix.mat'];
        covfiles2 = [prefix 'sub-' ID '_task-task-' ExSep '_run-02_nuis_matrix.mat'];
        covfiles3 = [prefix 'sub-' ID '_task-task-' ExSep '_run-03_nuis_matrix.mat'];

        matlabbatch{1}.cfg_basicio.file_dir.file_ops.cfg_named_file.name = 'raw';
        matlabbatch{1}.cfg_basicio.file_dir.file_ops.cfg_named_file.files = {
                                                                             {run01}%%%%%%%%%%%%%%
                                                                             {run02}%%%%%%%%%%%%%%%%%%
                                                                             {run03}%%%%%%%%%%%%%%
                                                                             }';
        matlabbatch{2}.spm.stats.fmri_spec.dir = {outputdir};
        matlabbatch{2}.spm.stats.fmri_spec.timing.units = 'secs';
        matlabbatch{2}.spm.stats.fmri_spec.timing.RT = 2;
        matlabbatch{2}.spm.stats.fmri_spec.timing.fmri_t = 36;
        matlabbatch{2}.spm.stats.fmri_spec.timing.fmri_t0 = 18;
        
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).scans(1) = cfg_dep('Named File Selector: raw(1) - Files', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{1}));
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).multi = {onset1};%%%%%%%%%%%%%%%%
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).regress = struct('name', {}, 'val', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).multi_reg = {covfiles1};
        matlabbatch{2}.spm.stats.fmri_spec.sess(1).hpf = 128;
        
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).scans(1) = cfg_dep('Named File Selector: raw(2) - Files', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{2}));
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).multi = {onset2};%%%%%%%%%%%%%%%%%%%%%%
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).regress = struct('name', {}, 'val', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).multi_reg = {covfiles2};
        matlabbatch{2}.spm.stats.fmri_spec.sess(2).hpf = 128;
        
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).scans(1) = cfg_dep('Named File Selector: raw(3) - Files', substruct('.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','files', '{}',{3}));
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).cond = struct('name', {}, 'onset', {}, 'duration', {}, 'tmod', {}, 'pmod', {}, 'orth', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).multi = {onset3};%%%%%%%%%%%%%%%%%%%%%
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).regress = struct('name', {}, 'val', {});
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).multi_reg = {covfiles3};
        matlabbatch{2}.spm.stats.fmri_spec.sess(3).hpf = 128;
        
        matlabbatch{2}.spm.stats.fmri_spec.fact = struct('name', {}, 'levels', {});
        matlabbatch{2}.spm.stats.fmri_spec.bases.hrf.derivs = [0 0];
        matlabbatch{2}.spm.stats.fmri_spec.volt = 1;
        matlabbatch{2}.spm.stats.fmri_spec.global = 'None';
        matlabbatch{2}.spm.stats.fmri_spec.mthresh = 0;
        matlabbatch{2}.spm.stats.fmri_spec.mask = {'E:\PAIN\Control_group_artical\VIES\Data\rGM_mask(2mm).nii'};
        matlabbatch{2}.spm.stats.fmri_spec.cvi = 'AR(1)';
        
        matlabbatch{3}.spm.stats.fmri_est.spmmat(1) = cfg_dep('fMRI model specification: SPM.mat File', substruct('.','val', '{}',{2}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
        matlabbatch{3}.spm.stats.fmri_est.write_residuals = 0;
        matlabbatch{3}.spm.stats.fmri_est.method.Classical = 1;
        matlabbatch{4}.spm.stats.con.spmmat(1) = cfg_dep('Model estimation: SPM.mat File', substruct('.','val', '{}',{3}, '.','val', '{}',{1}, '.','val', '{}',{1}), substruct('.','spmmat'));
        for trail = 1:60
                matlabbatch{4}.spm.stats.con.consess{trail}.tcon.name = num2str(trail);
                matlabbatch{4}.spm.stats.con.consess{trail}.tcon.weights = generateVector(trail);
                matlabbatch{4}.spm.stats.con.consess{trail}.tcon.sessrep = 'none';  
        end
        matlabbatch{4}.spm.stats.con.delete = 0;
end