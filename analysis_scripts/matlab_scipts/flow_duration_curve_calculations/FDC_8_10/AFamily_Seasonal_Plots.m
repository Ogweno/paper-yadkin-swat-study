%% Load and plot baseline flow CDF's vs each scenario
% use after 'DailyQavg.m'

load Baseline_MI_SB8.mat
load Baseline_MI_SB10.mat

load bbMI_lua_SB8.mat
load bbMI_lua_SB10.mat 
load blu_MI85_SB8.mat
load blu_MI85_SB10.mat
load LUA_MI85_SB8.mat
load LUA_MI85_SB10.mat 

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Baseline_MI_SB8_w=[Baseline_MI_SB8(336:366,:);Baseline_MI_SB8(1:60,:)]; %DFJ
bbMI_lua_SB8_w=[bbMI_lua_SB8(336:366,:);bbMI_lua_SB8(1:60,:)] %DJF
blu_MI85_SB8_w=[blu_MI85_SB8(336:366,:);blu_MI85_SB8(1:60,:)] %DJF
LUA_MI85_SB8_w=[LUA_MI85_SB8(336:366,:);LUA_MI85_SB8(1:60,:)] %DJF

Baseline_MI_SB10_w=[Baseline_MI_SB10(336:366,:);Baseline_MI_SB10(1:60,:)]; 
bbMI_lua_SB10_w=[bbMI_lua_SB10(336:366,:);bbMI_lua_SB10(1:60,:)] %DJF
blu_MI85_SB10_w=[blu_MI85_SB10(336:366,:);blu_MI85_SB10(1:60,:)] %DJF
LUA_MI85_SB10_w=[LUA_MI85_SB10(336:366,:);LUA_MI85_SB10(1:60,:)] %DJF

%% Make plots: baselines vs. MIROC 8.5 together

% subbasin 8, Muddy River
figure
h0=cdfplot(Baseline_MI_SB8(61:152,3)) %MAM
%h0=cdfplot(Baseline_MI_SB8(153:244,3)) %JJA
%h0=cdfplot(Baseline_MI_SB8(245:335,3)) %SON
%h0=cdfplot(Baseline_MI_SB8_w(:,3))    %DJF
hold
h1=cdfplot(bbMI_lua_SB8(61:152,3)) %MAM
h2=cdfplot(blu_MI85_SB8(61:152,3))
h3=cdfplot(LUA_MI85_SB8(61:152,3))
%h1=cdfplot(bbMI_lua_SB8(153:244,3)) %JJA
%h2=cdfplot(blu_MI85_SB8(153:244,3))
%h3=cdfplot(LUA_MI85_SB8(153:244,3))
%h1=cdfplot(bbMI_lua_SB8(245:335,3)) %SON
%h2=cdfplot(blu_MI85_SB8(245:335,3))
%h3=cdfplot(LUA_MI85_SB8(245:335,3))
%h1=cdfplot(bbMI_lua_SB8_w(:,3)) %DJF
%h2=cdfplot(blu_MI85_SB8_w(:,3))
%h3=cdfplot(LUA_MI85_SB8_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use A','MIROC 8.5','Combined A','Location','SouthEast')
title('Spring Flow Duration Curve for All A Scenarios, Muddy River')
savefig('MIROC85_seasonalMAM_SB8')
print -dpng -r300 MIROC85_seasonalMAM_SB8

% subbasin 10, South Yadkin River
figure
h0=cdfplot(Baseline_MI_SB10(61:152,3)) %MAM
%h0=cdfplot(Baseline_MI_SB10(153:244,3)) %JJA
%h0=cdfplot(Baseline_MI_SB10(245:335,3)) %SON
%h0=cdfplot(Baseline_MI_SB10_w(:,3))    %DJF
hold
h1=cdfplot(bbMI_lua_SB10(61:152,3)) %MAM
h2=cdfplot(blu_MI85_SB10(61:152,3))
h3=cdfplot(LUA_MI85_SB10(61:152,3))
%h1=cdfplot(bbMI_lua_SB10(153:244,3)) %JJA
%h2=cdfplot(blu_MI85_SB10(153:244,3))
%h3=cdfplot(LUA_MI85_SB10(153:244,3))
%h1=cdfplot(bbMI_lua_SB10(245:335,3)) %SON
%h2=cdfplot(blu_MI85_SB10(245:335,3))
%h3=cdfplot(LUA_MI85_SB10(245:335,3))
%h1=cdfplot(bbMI_lua_SB10_w(:,3)) %DJF
%h2=cdfplot(blu_MI85_SB10_w(:,3))
%h3=cdfplot(LUA_MI85_SB10_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use A','MIROC 8.5','Combined A','Location','SouthEast')
title('Spring Flow Duration Curve for All A Scenarios, S. Yadkin River')
savefig('MIROC85_seasonalMAM_SB10')
print -dpng -r300 MIROC85_seasonalMAM_SB10