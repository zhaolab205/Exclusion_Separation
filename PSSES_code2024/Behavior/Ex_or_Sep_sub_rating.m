clear
path = 'Ex_Sep_behave\';%%%%%%%%%
subdirs = dir(fullfile(path,'*.csv'));%
Ex_Sep_all = cell(21*44,5);
n =0;
for i =4 1:length(subdirs)
    name = subdirs(i).name;
    file = dir(fullfile([path '\' subdirs(i).name]));
    [~, ~, raw] = xlsread([path subdirs(i).name]);
        num_type = 0;Arousal_Valence = cell(44,5);
        num_distance = 0;num_sim = 0;
        for row = 1:size(raw,1)
           for col = 1: size(raw,2)
               content = cell2mat(raw(row,col));
               if content == 888
                   num_type = num_type+1;
                   Arousal_Valence(num_type,5) = (raw(row,1));Arousal_Valence(num_type,2) = raw(row,col+1);
                   Arousal_Valence(num_type,1) = {name(1:3)};
               end
               if content == 777
                   num_distance = num_distance+1;
                   Arousal_Valence(num_distance,3) = (raw(row,col+1));
               end
               if content == 666
                   num_sim = num_sim+1;
                   Arousal_Valence(num_sim,4) = raw(row,col+1); 
               end
           end
        end
    Ex_Sep_all((i-1)*44+1:(i)*44,1:5) = Arousal_Valence;
end

xlswrite('Ex_Sep_all.xlsx',Ex_Sep_all);
save(['Ex_Sep_all'],'Ex_Sep_all','-v7.3');

[~, ~, material] = xlsread('condi.xlsx');
Ex_Sep_table = cell(21,44); Distance_table = cell(21,44); Similar_table = cell(21,44); 
for material_num = 1:44
    disp(material_num);
    for sub_all_num = 1:21
        for Ex_Sep_all_col = 1:924
            for Ex_Sep_all_row = 1:5
                if str2num(cell2mat(Ex_Sep_all(Ex_Sep_all_col,1)))==cell2mat(material(sub_all_num,2)) && strcmp(Ex_Sep_all(Ex_Sep_all_col,5),material(material_num,1))
                    Ex_Sep_table(sub_all_num,material_num) = Ex_Sep_all(Ex_Sep_all_col,2);
                    Distance_table(sub_all_num,material_num) = Ex_Sep_all(Ex_Sep_all_col,3);
                    Similar_table(sub_all_num,material_num) = {(cell2mat(Ex_Sep_all(Ex_Sep_all_col,4))+0.75)/0.25};
                end
            end
        end
    end
end
save(['Three_ques'],'Ex_Sep_table','Distance_table','Similar_table','-v7.3');





