%%
clear,clc
single_trial_rating = cell(120,3);
group_male = 17;max_male = 67;%%%%%17 33 50 67
group_female = 18;max_female = 68;%%%%%17 33 50 68
[~, ~, raw_male] = xlsread('behavior\arousal\valence\origin\data.xlsx','male');
[~, ~, raw_female] = xlsread('behavior\arousal\valence\origin\data.xlsx','female');
%%
for i = 431:120 %%%%%%%%%%%arousal valence
    valence_male = zeros(group_male,1);valence_female = zeros(group_female,1);
    arousal_rating_male = zeros(group_male,1);arousal_rating_female = zeros(group_female,1);
    valence_rating_male = zeros(group_male,1);valence_rating_female = zeros(group_female,1);
    
    material_name = cell2mat(raw_male(i,1)); 
    pattern = '\\([^\\]*)\.[^\\.]*$';
    match = regexp(material_name, pattern, 'tokens', 'once');
    result = cell2mat(match(1));
    num_male = 0;num_female = 0;
    for j = (max_male-group_male)*120+1:120*max_male%%%%%17 33 50 67
        material_name_male = cell2mat(raw_male(j,1));
        if strcmp(material_name,material_name_male)
            num_male = num_male+1;
            arousal_rating_male(num_male,1) = cell2mat(raw_male(j,2));
            valence_male(num_male,1) = cell2mat(raw_male(j,4));
            valence_rating_male(num_male,1) = cell2mat(raw_male(j,6));
        end
    end
    for j = (max_female-group_female)*120+1:120*max_female%%%%%17 33 50 68
        material_name_female = cell2mat(raw_female(j,1));
        if strcmp(material_name,material_name_female)
            num_female = num_female+1;
            arousal_rating_female(num_female,1) = cell2mat(raw_female(j,2));
            valence_female(num_female,1) = cell2mat(raw_female(j,4));
            valence_rating_female(num_female,1) = cell2mat(raw_female(j,6));
        end
    end
    
    single_trial_rating{i,1} = (result);
    single_trial_rating{i,2} = [arousal_rating_male;arousal_rating_female];
    single_trial_rating{i,3} = [(valence_male).*(valence_rating_male);(valence_female).*(valence_rating_female)];
end
% save('single_trial_rating', 'single_trial_rating', '-v7.3');




