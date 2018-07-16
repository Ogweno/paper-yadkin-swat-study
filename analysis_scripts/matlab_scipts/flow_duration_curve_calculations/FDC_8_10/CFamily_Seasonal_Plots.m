%% Load and plot baseline flow CDF's vs each scenario
% use after 'DailyQavg.m'

load Baseline_CS_SB8.mat
load Baseline_CS_SB10.mat

load bCS_luc_SB8.mat
load bCS_luc_SB10.mat
load blu_CS45_SB8.mat
load blu_CS45_SB10.mat
load LUC_CS45_SB8.mat
load LUC_CS45_SB10.mat

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Baseline_CS_SB8_w=[Baseline_CS_SB8(336:366,:);Baseline_CS_SB8(1:60,:)]; %DFJ
bCS_luc_SB8_w=[bCS_luc_SB8(336:366,:);bCS_luc_SB8(1:60,:)] %DJF
blu_CS45_SB8_w=[blu_CS45_SB8(336:366,:);blu_CS45_SB8(1:60,:)] %DJF
LUC_CS45_SB8_w=[LUC_CS45_SB8(336:366,:);LUC_CS45_SB8(1:60,:)] %DJF

Baseline_CS_SB10_w=[Baseline_CS_SB10(336:366,:);Baseline_CS_SB10(1:60,:)]; 
bCS_luc_SB10_w=[bCS_luc_SB10(336:366,:);bCS_luc_SB10(1:60,:)] %DJF
blu_CS45_SB10_w=[blu_CS45_SB10(336:366,:);blu_CS45_SB10(1:60,:)] %DJF
LUC_CS45_SB10_w=[LUC_CS45_SB10(336:366,:);LUC_CS45_SB10(1:60,:)] %DJF 

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 8 Muddy River
figure
%h0=cdfplot(Baseline_CS_SB8(61:152,3)) %MAM
%h0=cdfplot(Baseline_CS_SB8(153:244,3)) %JJA
%h0=cdfplot(Baseline_CS_SB8(245:335,3)) %SON
h0=cdfplot(Baseline_CS_SB8_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_luc_SB8(61:152,3)) %MAM
%h2=cdfplot(blu_CS45_SB8(61:152,3))
%h3=cdfplot(LUC_CS45_SB8(61:152,3))
%h1=cdfplot(bCS_luc_SB8(153:244,3)) %JJA
%h2=cdfplot(blu_CS45_SB8(153:244,3))
%h3=cdfplot(LUC_CS45_SB8(153:244,3))
%h1=cdfplot(bCS_luc_SB8(245:335,3)) %SON
%h2=cdfplot(blu_CS45_SB8(245:335,3))
%h3=cdfplot(LUC_CS45_SB8(245:335,3))
h1=cdfplot(bCS_luc_SB8_w(:,3)) %DJF
h2=cdfplot(blu_CS45_SB8_w(:,3))
h3=cdfplot(LUC_CS45_SB8_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Winter (DJF) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Winter Flow Duration Curve for All C Scenarios, Muddy River')
savefig('CSIRO45_seasonalDJF_SB8')
print -dpng -r300 CSIRO45_seasonalDJF_SB8

% subbasin 10 daily
figure
%h0=cdfplot(Baseline_CS_SB10(61:152,3)) %MAM
%h0=cdfplot(Baseline_CS_SB10(153:244,3)) %JJA
%h0=cdfplot(Baseline_CS_SB10(245:335,3)) %SON
h0=cdfplot(Baseline_CS_SB10_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_luc_SB10(61:152,3)) %MAM
%h2=cdfplot(blu_CS45_SB10(61:152,3))
%h3=cdfplot(LUC_CS45_SB10(61:152,3))
%h1=cdfplot(bCS_luc_SB10(153:244,3)) %JJA
%h2=cdfplot(blu_CS45_SB10(153:244,3))
%h3=cdfplot(LUC_CS45_SB10(153:244,3))
%h1=cdfplot(bCS_luc_SB10(245:335,3)) %SON
%h2=cdfplot(blu_CS45_SB10(245:335,3))
%h3=cdfplot(LUC_CS45_SB10(245:335,3))
h1=cdfplot(bCS_luc_SB10_w(:,3)) %DJF
h2=cdfplot(blu_CS45_SB10_w(:,3))
h3=cdfplot(LUC_CS45_SB10_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Winter (DJF) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Winter Flow Duration Curve for All C Scenarios, South Yadkin River')
savefig('CSIRO45_seasonalDJF_SB10')
print -dpng -r300 CSIRO45_seasonalDJF_SB10