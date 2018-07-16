%% Load and plot baseline flow CDF's vs each scenario
% use after 'DailyQavg.m'

load Baseline_Ha_SB8.mat
load Baseline_Ha_SB10.mat

load bHa_lud_SB8.mat
load bHa_lud_SB10.mat
load blu_Ha45_SB8.mat
load blu_Ha45_SB10.mat
load LUD_Ha45_SB8.mat
load LUD_Ha45_SB10.mat

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Baseline_Ha_SB8_w=[Baseline_Ha_SB8(336:366,:);Baseline_Ha_SB8(1:60,:)]; %DFJ
bHa_lud_SB8_w=[bHa_lud_SB8(336:366,:);bHa_lud_SB8(1:60,:)] %DJF
blu_Ha45_SB8_w=[blu_Ha45_SB8(336:366,:);blu_Ha45_SB8(1:60,:)] %DJF
LUD_HA45_SB8_w=[LUD_Ha45_SB8(336:366,:);LUD_Ha45_SB8(1:60,:)] %DJF

Baseline_Ha_SB10_w=[Baseline_Ha_SB10(336:366,:);Baseline_Ha_SB10(1:60,:)]; 
bHa_lud_SB10_w=[bHa_lud_SB10(336:366,:);bHa_lud_SB10(1:60,:)] %DJF
blu_Ha45_SB10_w=[blu_Ha45_SB10(336:366,:);blu_Ha45_SB10(1:60,:)] %DJF
LUD_HA45_SB10_w=[LUD_Ha45_SB10(336:366,:);LUD_Ha45_SB10(1:60,:)] %DJF

%% Make plots: baselines vs. D/Hadley 4.5 together

% subbasin 8, Muddy River
figure
h0=cdfplot(Baseline_Ha_SB8(61:152,3)) %MAM
%h0=cdfplot(Baseline_Ha_SB8(153:244,3)) %JJA
%h0=cdfplot(Baseline_Ha_SB8(245:335,3)) %SON
%h0=cdfplot(Baseline_Ha_SB8_w(:,3))    %DJF
hold 
h1=cdfplot(bHa_lud_SB8(61:152,3)) %MAM
h2=cdfplot(blu_Ha45_SB8(61:152,3)) 
h3=cdfplot(LUD_Ha45_SB8(61:152,3))
%h1=cdfplot(bHa_lud_SB8(153:244,3)) %JJA
%h2=cdfplot(blu_Ha45_SB8(153:244,3))
%h3=cdfplot(LUD_Ha45_SB8(153:244,3))
%h1=cdfplot(bHa_lud_SB8(245:335,3)) %SON
%h2=cdfplot(blu_Ha45_SB8(245:335,3))
%h3=cdfplot(LUD_Ha45_SB8(245:335,3))
%h1=cdfplot(bHa_lud_SB8_w(:,3)) %DJF
%h2=cdfplot(blu_Ha45_SB8_w(:,3))
%h3=cdfplot(LUD_HA45_SB8_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Spring Flow Duration Curve for All D Scenarios, Muddy River')
savefig('Hadley_seasonalMAM_SB8')
print -dpng -r300 Hadley_seasonalMAM_SB8

% subbasin 10 South Yadkin River
figure
h0=cdfplot(Baseline_Ha_SB10(61:152,3)) %MAM
%h0=cdfplot(Baseline_Ha_SB10(153:244,3)) %JJA
%h0=cdfplot(Baseline_Ha_SB10(245:335,3)) %SON
%h0=cdfplot(Baseline_Ha_SB10_w(:,3))      %DJF
hold 
h1=cdfplot(bHa_lud_SB10(61:152,3)) %MAM
h2=cdfplot(blu_Ha45_SB10(61:152,3)) 
h3=cdfplot(LUD_Ha45_SB10(61:152,3))
%h1=cdfplot(bHa_lud_SB10(153:244,3)) %JJA
%h2=cdfplot(blu_Ha45_SB10(153:244,3))
%h3=cdfplot(LUD_Ha45_SB10(153:244,3))
%h1=cdfplot(bHa_lud_SB10(245:335,3)) %SON
%h2=cdfplot(blu_Ha45_SB10(245:335,3))
%h3=cdfplot(LUD_Ha45_SB10(245:335,3))
%h1=cdfplot(bHa_lud_SB10_w(:,3)) %DJF
%h2=cdfplot(blu_Ha45_SB10_w(:,3))
%h3=cdfplot(LUD_HA45_SB10_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Spring Flow Duration Curve for All D Scenarios, S. Yadkin River')
savefig('Hadley_seasonalMAM_SB10')
print -dpng -r300 Hadley_seasonalMAM_SB10