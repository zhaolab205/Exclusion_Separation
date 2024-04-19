clear,clc
load('New_Dis_ex_mediation.mat');
% PSSEaS --> PHPain -->  dis Ex Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_PSSEaS_rating,Dis_Rating, Dis_GEPain_rating, 'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  dis Ex Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_PSSEaS_rating, Dis_Rating, Dis_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
load('New_Rep_ex_mediation.mat');
% PSSEaS --> PHPain -->  repEx Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_PSSEaS_rating, Rep_Rating, Rep_GEPain_rating, 'plots', 'verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  repEx Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_PSSEaS_rating, Rep_Rating, Rep_REPain_rating, 'plots', 'verbose', 'boot', 'bootsamples', 10000, 'doCIs');

%%
load('New_Dis_sep_mediation.mat');
%  PSSEaS --> PHPain -->  dis sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_sep_PSSEaS_rating,Dis_sep_Rating, Dis_sep_GEPain_rating, 'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  dis sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Dis_sep_PSSEaS_rating, Dis_sep_Rating, Dis_sep_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
load('New_Rep_sep_mediation.mat');
% PSSEaS --> PHPain -->  rep sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_sep_PSSEaS_rating, Rep_sep_Rating, Rep_sep_GEPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
% PSSEaS --> REPain -->  rep sep Rating
[paths, toplevelstats, indlevelstats] = mediation(Rep_sep_PSSEaS_rating, Rep_sep_Rating, Rep_sep_REPain_rating,'plots','verbose', 'boot', 'bootsamples', 10000, 'doCIs');
