%% Load and plot baseline flow CDF's vs each scenario
% use after 'DailyQavg.m'

load Baseline_CS_SB8.mat
load Baseline_CS_SB10.mat

load bCS_lub_SB8.mat
load bCS_lub_SB10.mat
load blu_CS85_SB8.mat
load blu_CS85_SB10.mat
load LUB_CS85_SB8.mat
load LUB_CS85_SB10.mat 

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Baseline_CS_SB8_w=[Baseline_CS_SB8(336:366,:);Baseline_CS_SB8(1:60,:)]; %DFJ
bCS_lub_SB8_w=[bCS_lub_SB8(336:366,:);bCS_lub_SB8(1:60,:)] %DJF
blu_CS85_SB8_w=[blu_CS85_SB8(336:366,:);blu_CS85_SB8(1:60,:)] %DJF
LUB_CS85_SB8_w=[LUB_CS85_SB8(336:366,:);LUB_CS85_SB8(1:60,:)] %DJF

Baseline_CS_SB10_w=[Baseline_CS_SB10(336:366,:);Baseline_CS_SB10(1:60,:)]; 
bCS_lub_SB10_w=[bCS_lub_SB10(336:366,:);bCS_lub_SB10(1:60,:)] 
blu_CS85_SB10_w=[blu_CS85_SB10(336:366,:);blu_CS85_SB10(1:60,:)] 
LUB_CS85_SB10_w=[LUB_CS85_SB10(336:366,:);LUB_CS85_SB10(1:60,:)] 

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 8, Muddy River
figure
%h0=cdfplot(Baseline_CS_SB8(61:152,3)) %MAM
%h0=cdfplot(Baseline_CS_SB8(153:244,3)) %JJA
h0=cdfplot(Baseline_CS_SB8(245:335,3)) %SON
%h0=cdfplot(Baseline_CS_SB8_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_lub_SB8(61:152,3)) %MAM
%h2=cdfplot(blu_CS85_SB8(61:152,3))
%h3=cdfplot(LUB_CS85_SB8(61:152,3))
%h1=cdfplot(bCS_lub_SB8(153:244,3)) %JJA
%h2=cdfplot(blu_CS85_SB8(153:244,3))
%h3=cdfplot(LUB_CS85_SB8(153:244,3))
h1=cdfplot(bCS_lub_SB8(245:335,3)) %SON
h2=cdfplot(blu_CS85_SB8(245:335,3))
h3=cdfplot(LUB_CS85_SB8(245:335,3))
%h1=cdfplot(bCS_lub_SB8_w(:,3)) %DJF
%h2=cdfplot(blu_CS85_SB8_w(:,3))
%h3=cdfplot(LUB_CS85_SB8_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Fall (SON) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Combined B','Location','SouthEast')
title('Fall Flow Duration Curve for All B Scenarios, Muddy River')
savefig('CSIRO85_seasonalSON_SB8')
print -dpng -r300 CSIRO85_seasonalSON_SB8

% subbasin 10, South Yadkin River
figure
%h0=cdfplot(Baseline_CS_SB10(61:152,3)) %MAM
%h0=cdfplot(Baseline_CS_SB10(153:244,3)) %JJA
h0=cdfplot(Baseline_CS_SB10(245:335,3)) %SON
%h0=cdfplot(Baseline_CS_SB10_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_lub_SB10(61:152,3)) %MAM
%h2=cdfplot(blu_CS85_SB10(61:152,3))
%h3=cdfplot(LUB_CS85_SB10(61:152,3))
%h1=cdfplot(bCS_lub_SB10(153:244,3)) %JJA
%h2=cdfplot(blu_CS85_SB10(153:244,3))
%h3=cdfplot(LUB_CS85_SB10(153:244,3))
h1=cdfplot(bCS_lub_SB10(245:335,3)) %SON
h2=cdfplot(blu_CS85_SB10(245:335,3))
h3=cdfplot(LUB_CS85_SB10(245:335,3))
%h1=cdfplot(bCS_lub_SB10_w(:,3)) %DJF
%h2=cdfplot(blu_CS85_SB10_w(:,3))
%h3=cdfplot(LUB_CS85_SB10_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Fall (SON) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Combined B','Location','SouthEast')
title('Fall Flow Duration Curve for all B Scenarios, S. Yadkin River')
savefig('CSIRO85_seasonalSON_SB10')
print -dpng -r300 CSIRO85_seasonalSON_SB10