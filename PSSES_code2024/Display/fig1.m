%% fig 1b
time_axis = 0:382;
line1_x = ones(size(time_axis));line1_y = flip(time_axis);
line2_x = 35 * ones(size(time_axis));line2_y = flip(time_axis);
line3_x = 70 * ones(size(time_axis));line3_y = flip(time_axis);
line4_x = 105 * ones(size(time_axis));line4_y = flip(time_axis);
line5_x = 140 * ones(size(time_axis));line5_y = flip(time_axis);
line6_x = 175 * ones(size(time_axis));line6_y = flip(time_axis);
onset_points1 = cell2mat(onsets(1))+10;
onset_points2 = cell2mat(onsets(2))+10;
onset_points3 = cell2mat(onsets(3))+10;
onset_points4 = cell2mat(onsets(4))+10;
onset_points5 = cell2mat(onsets(5))+10;
onset_points6 = cell2mat(onsets(6))-1;
triangle_height = 30;
triangle_base = 10;
figure;
hold on;
for i = 1:length(onset_points1)
    onset_x = 1; % rating1
    onset_y = 382 - onset_points1(i);
    x_triangle = [onset_x, onset_x, onset_x + triangle_height, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base, onset_y + triangle_base/2, onset_y];
    fill(x_triangle, y_triangle,[107 190 114]/255, 'EdgeColor', 'none'); 
end
plot(line1_x, line1_y, 'Color',[107 190 114]/255, 'LineWidth', 2);
for i = 1:length(onset_points2)
    onset_x = 35; % rating2
    onset_y = 382 - onset_points2(i); 
    x_triangle = [onset_x, onset_x, onset_x + triangle_height, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base, onset_y + triangle_base/2, onset_y];
    fill(x_triangle, y_triangle, [55 183 158]/255, 'EdgeColor', 'none');
end
plot(line2_x, line2_y, 'Color',[55 183 158]/255, 'LineWidth', 2);
for i = 1:length(onset_points3)
    onset_x = 70; % rating3
    onset_y = 382 - onset_points3(i);
    x_triangle = [onset_x, onset_x, onset_x + triangle_height, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base, onset_y + triangle_base/2, onset_y];  
    fill(x_triangle, y_triangle, [47 141 146]/255, 'EdgeColor', 'none'); 
end
plot(line3_x, line3_y,'Color', [47 141 146]/255, 'LineWidth', 2);
for i = 1:length(onset_points4)
    onset_x = 105; % rating4
    onset_y = 382 - onset_points4(i);
    x_triangle = [onset_x, onset_x, onset_x + triangle_height, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base, onset_y + triangle_base/2, onset_y];  
    fill(x_triangle, y_triangle, [69 76 160]/255, 'EdgeColor', 'none'); 
end
plot(line4_x, line4_y,'Color', [69 76 160]/255, 'LineWidth', 2);
for i = 1:length(onset_points5)
    onset_x = 140; % rating5
    onset_y = 382 - onset_points5(i);
    x_triangle = [onset_x, onset_x, onset_x + triangle_height, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base, onset_y + triangle_base/2, onset_y];  
    fill(x_triangle, y_triangle, [73 46 87]/255, 'EdgeColor', 'none');
end
plot(line5_x, line5_y,'Color', [73 46 87]/255, 'LineWidth', 2);
triangle_height2 = 30;
triangle_base2 = 4;
for i = 1:length(onset_points6)
    onset_x = 175; % response
    onset_y = 382 - onset_points6(i); 
    x_triangle = [onset_x, onset_x, onset_x + triangle_height2, onset_x];
    y_triangle = [onset_y, onset_y + triangle_base2, onset_y + triangle_base2/2, onset_y];  
    fill(x_triangle, y_triangle, [0 0 0]/255, 'EdgeColor', 'none');
end
plot(line6_x, line6_y,'Color',[0 0 0]/255, 'LineWidth', 2);
hold off;
axis equal;