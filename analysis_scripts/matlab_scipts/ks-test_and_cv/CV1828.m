%% To calculate coefficient of variation (CV)
% CV = Stdev/mean

load Bsln_MI_statsavg.mat  % load file
StatsAvg_bslnMI=StatsAvg;  % rename to scenario-specific names
load Bsln_CS_statsavg.mat  
StatsAvg_bslnCS=StatsAvg;
load Bsln_HA_statsavg.mat  
StatsAvg_bslnHa=StatsAvg;

load bbMI_lua_statsavg.mat
StatsAvg_lua=StatsAvg;
load bCS_lub_statsavg.mat
StatsAvg_lub=StatsAvg;
load bCS_luc_statsavg.mat
StatsAvg_luc=StatsAvg;
load bHa_lud_statsavg.mat
StatsAvg_lud=StatsAvg;

load blu_MI85_statsavg.mat
StatsAvg_MI85=StatsAvg;
load blu_CS85_statsavg.mat
StatsAvg_CS85=StatsAvg;
load blu_CS45_statsavg.mat
StatsAvg_CS45=StatsAvg;
load blu_Ha45_statsavg.mat
StatsAvg_Ha45=StatsAvg;

load LUA_MI85_statsavg.mat 
StatsAvg_FA=StatsAvg;
load LUB_CS85_statsavg.mat 
StatsAvg_FB=StatsAvg;
load LUC_CS45_statsavg.mat 
StatsAvg_FC=StatsAvg;
load LUD_HA45_statsavg.mat 
StatsAvg_FD=StatsAvg;

%% Calculate CV values and put in a matrix 
% baseline scenarios subbasin 8
[cv_mi]=(StatsAvg_bslnMI(1,7)/StatsAvg_bslnMI(1,5))
[cv_cs]=(StatsAvg_bslnCS(1,7)/StatsAvg_bslnCS(1,5)) 
[cv_ha]=(StatsAvg_bslnHa(1,7)/StatsAvg_bslnHa(1,5))

%land use only scenarios subbasin 8
[cvlu1]=(StatsAvg_lua(1,7)/StatsAvg_lua(1,5))  
[cvlu2]=(StatsAvg_lub(1,7)/StatsAvg_lub(1,5)) 
[cvlu3]=(StatsAvg_luc(1,7)/StatsAvg_luc(1,5))  
[cvlu4]=(StatsAvg_lud(1,7)/StatsAvg_lud(1,5)) 

%climate change only scenarios subbasin 8
[cvcc1]=(StatsAvg_MI85(1,7)/StatsAvg_MI85(1,5))
[cvcc2]=(StatsAvg_CS85(1,7)/StatsAvg_CS85(1,5))
[cvcc3]=(StatsAvg_CS45(1,7)/StatsAvg_CS45(1,5))  
[cvcc4]=(StatsAvg_Ha45(1,7)/StatsAvg_Ha45(1,5))  

%combined/future scenarios Subbasin 8
[cvf1]=(StatsAvg_FA(1,7)/StatsAvg_FA(1,5)) 
[cvf2]=(StatsAvg_FB(1,7)/StatsAvg_FB(1,5)) 
[cvf3]=(StatsAvg_FC(1,7)/StatsAvg_FC(1,5)) 
[cvf4]=(StatsAvg_FD(1,7)/StatsAvg_FD(1,5)) 

% baseline scenarios subbasin 28
[cv_mi2]=(StatsAvg_bslnMI(2,7)/StatsAvg_bslnMI(2,5))
[cv_cs2]=(StatsAvg_bslnCS(2,7)/StatsAvg_bslnCS(2,5)) 
[cv_ha2]=(StatsAvg_bslnHa(2,7)/StatsAvg_bslnHa(2,5))

%land use only scenarios subbasin 28
[cvlu5]=(StatsAvg_lua(2,7)/StatsAvg_lua(2,5))  
[cvlu6]=(StatsAvg_lub(2,7)/StatsAvg_lub(2,5)) 
[cvlu7]=(StatsAvg_luc(2,7)/StatsAvg_luc(2,5))  
[cvlu8]=(StatsAvg_lud(2,7)/StatsAvg_lud(2,5)) 

%climate change only scenarios subbasin 28
[cvcc5]=(StatsAvg_MI85(2,7)/StatsAvg_MI85(2,5))
[cvcc6]=(StatsAvg_CS85(2,7)/StatsAvg_CS85(2,5))
[cvcc7]=(StatsAvg_CS45(2,7)/StatsAvg_CS45(2,5))  
[cvcc8]=(StatsAvg_Ha45(2,7)/StatsAvg_Ha45(2,5))

%combined/future scenarios Subbasin 28
[cvf5]=(StatsAvg_FA(2,7)/StatsAvg_FA(2,5)) 
[cvf6]=(StatsAvg_FB(2,7)/StatsAvg_FB(2,5)) 
[cvf7]=(StatsAvg_FC(2,7)/StatsAvg_FC(2,5)) 
[cvf8]=(StatsAvg_FD(2,7)/StatsAvg_FD(2,5)) 

%% matrix to hold everything, 
%columns: Family, Scenario, CV Value Subbasin
%Family: 1=A 2=B 3=C 4=D
%Scenario: 0=baseline 1=LU only, 2=climate only, 3=combined
Matrix = [1 0 cv_mi 18;2 0 cv_cs 18;4 0 cv_ha 18;
    1 1 cvlu1 18;2 1 cvlu2 18;3 1 cvlu3 18;4 1 cvlu4 18;
    1 2 cvcc1 18;2 2 cvcc2 18;3 2 cvcc3 18;4 2 cvcc4 18;
    1 3 cvf1 18;2 3 cvf2 18;3 3 cvf3 18;4 3 cvf4 18;
    1 0 cv_mi2 28;2 0 cv_cs2 28;4 0 cv_ha2 28;
    1 1 cvlu5 28;2 1 cvlu6 28;3 1 cvlu7 28;4 1 cvlu8 28;
    1 2 cvcc5 28;2 2 cvcc6 28;3 2 cvcc7 28;4 2 cvcc8 28;
    1 3 cvf5 28;2 3 cvf6 28;3 3 cvf7 28;4 3 cvf8 28;];

