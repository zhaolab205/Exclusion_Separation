clear,clc
result =cell(100,122);
single_trial_rating = cell(120,2);
[~, ~, raw_male] = xlsread('behavior\pain\origin\data.xlsx');

single_trial_rating = {};
path_12345 = ['E:\PAIN\Control_group_artical\Ex_Sep\1st_level_sep'];
subj = dir(fullfile(path_12345,'sub*'));sub_num = 0;
num = 0;subname = {};
for i=[220:236,320:336,240:256,340:356,260:277,360:376]
    num = num+1;
    subname(num,1) = {i};
end

single_trial_rating ={};
for mm = [1:103]
    sub_num = sub_num+1;pain_rating_male =[];num_E=0;num_I=0;num_MC=0;num_S=0;num_C=0;num_2C=0;
    pain_rating_male_E = [];pain_rating_male_I = [];pain_rating_male_MC = [];
    pain_rating_male_S = [];pain_rating_male_C = [];pain_rating_male_2C = [];
for k=1:20160
        id = cell2mat(raw_male(k,1));
        if ~isnan(id)
            
             if ismember(str2num(id(4:6)),cell2mat(subname(mm)))
                material_name_male = cell2mat(raw_male(k,9));
                pattern = '\\([^\\]*)\.[^\\.]*$';
                match = regexp(material_name_male, pattern, 'tokens', 'once');
                result = cell2mat(match(1));
                if strcmp(result(1:3),'M_E')% && ~strcmp(result(4),'o')
                    num_E = num_E+1;
                    pain_rating_male_E(num_E,1) = cell2mat(raw_male(k,6));
                elseif strcmp(result(1:3),'M_I')% && ~strcmp(result(4),'o')
                    num_I = num_I+1;
                    pain_rating_male_I(num_I,1) = cell2mat(raw_male(k,6));
                elseif strcmp(result(1:3),'M_C')% && ~strcmp(result(4),'o')
                    num_MC = num_MC+1;
                    pain_rating_male_MC(num_MC,1) = cell2mat(raw_male(k,6));
                elseif strcmp(result(1:3),'2_S')% && ~strcmp(result(4),'o')
                    num_S = num_S+1;
                    pain_rating_male_S(num_S,1) = cell2mat(raw_male(k,6));
                elseif strcmp(result(1:3),'2_C') && strcmp(result(4),'o')
                    num_C = num_C+1;
                    pain_rating_male_C(num_C,1) = cell2mat(raw_male(k,6));
                elseif strcmp(result(1:3),'2_C') && ~strcmp(result(4),'o')
                    num_2C = num_2C+1;
                    pain_rating_male_2C(num_2C,1) = cell2mat(raw_male(k,6));
                end          
            end
        end
end
single_trial_rating{mm,1} = cell2mat(subname(mm));
single_trial_rating{mm,2} = (mean(pain_rating_male_E)+mean(pain_rating_male_S))/2;
single_trial_rating{mm,3} = (mean(pain_rating_male_I)+mean(pain_rating_male_C))/2;
single_trial_rating{mm,4} = (mean(pain_rating_male_MC)+mean(pain_rating_male_2C))/2;
end   
% save(['subj_94_pain'], 'single_trial_rating','-v7.3');


