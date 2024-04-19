%% fig 3e
X=[0.27818295,-0.12582810,0.89291918,-0.32237315,0.46088108,-0.095218308,-0.068391085,1.2427763,0.20924693,-0.21705358,0.065089427,-0.19902840,-0.037608188,-0.31333998,0.25720936;
0.32740295,0.60774648,-0.050351042,-0.50334007,0.51106429,-0.14945833,-0.25381708,0.12782422,-0.022163860,-0.27460256,-0.088603653,-0.074888512,0.12383513,-0.14057857,0.38814911;
-0.18039156,-0.092215680,0.28030598,-0.14181162,0.26264906,-0.049061298,-0.21487953,0.19076359,0.086049601,-0.29298010,-0.16615944,0.42148185,-0.10875084,-0.054397721,0.48042265];% 24region
X = (X - min(min(X))) / (max(max(X)) - min(min(X)));% normalized_data
RC=radarChart(X,'Type','Patch');
% RC.PropName={'Amy','BG','Hip','IPL','ITG','MTG','OrG','Pcu','PhG','PoG','SFG','SPL','Thal','pSTS'};
RC.ClassName={'PSSE','PSSS'};
RC=RC.draw();
RC.legend();
colorList=[
    107 190 114;
    69 76 160;
    66 146 198;
    ]./255;   %color / class
for n=1:RC.ClassNum
    RC.setPatchN(n,'FaceColor',colorList(n,:),'EdgeColor',colorList(n,:))
end
RC.setBkg('FaceColor','none')
RC.setPropLabel('FontSize',20,'FontName','Arial','Color',[0,0,0])

%% fig 3b
clear
load('colors.mat')
[~, ~, raw] = xlsread('PSSEaS.xlsx');
words = repmat(' ', length(raw), 25);
for i = 1:length(raw)
    words(i,:) = [cell2mat(raw(i,1)) blanks(25-length(cell2mat(raw(i,1))))];
end
sizes = cell2mat(raw(1:length(raw),2));
figure
wordcloud(words, sizes, 'Color',colors(1:length(raw),:));
set(gcf, 'Color', 'w');
