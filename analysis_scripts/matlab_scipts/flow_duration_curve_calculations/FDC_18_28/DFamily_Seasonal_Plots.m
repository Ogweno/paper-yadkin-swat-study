%% Load and plot baseline flow CDF's vs each scenario
% use after 'FlowReach1828.m' and 'Reach1828_FlowOut.m' and DailyQavg.m

load Bsln_HA_SB18.mat
load Bsln_HA_SB28.mat

load bHa_lud_SB18.mat
load bHa_lud_SB28.mat
load blu_Ha45_SB18.mat
load blu_Ha45_SB28.mat
load LUD_HA45_SB18.mat
load LUD_HA45_SB28.mat

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Bsln_HA_SB18_w=[Bsln_HA_SB18(336:366,:);Bsln_HA_SB18(1:60,:)]; %DFJ
bHa_lud_SB18_w=[bHa_lud_SB18(336:366,:);bHa_lud_SB18(1:60,:)] %DJF
blu_Ha45_SB18_w=[blu_Ha45_SB18(336:366,:);blu_Ha45_SB18(1:60,:)] %DJF
LUD_HA45_SB18_w=[LUD_HA45_SB18(336:366,:);LUD_HA45_SB18(1:60,:)] %DJF

Bsln_HA_SB28_w=[Bsln_HA_SB28(336:366,:);Bsln_HA_SB28(1:60,:)]; 
bHa_lud_SB28_w=[bHa_lud_SB28(336:366,:);bHa_lud_SB28(1:60,:)] %DJF
blu_Ha45_SB28_w=[blu_Ha45_SB28(336:366,:);blu_Ha45_SB28(1:60,:)] %DJF
LUD_HA45_SB28_w=[LUD_HA45_SB28(336:366,:);LUD_HA45_SB28(1:60,:)] %DJF

%% Make plots: baselines vs. D/Hadley 4.5 together

% subbasin 18 
figure
h0=cdfplot(Bsln_HA_SB18(61:152,3)) %MAM
%h0=cdfplot(Bsln_HA_SB18(153:244,3)) %JJA
%h0=cdfplot(Bsln_HA_SB18(245:335,3)) %SON
%h0=cdfplot(Bsln_HA_SB18_w(:,3))    %DJF
hold 
h1=cdfplot(bHa_lud_SB18(61:152,3)) %MAM
h2=cdfplot(blu_Ha45_SB18(61:152,3)) 
h3=cdfplot(LUD_HA45_SB18(61:152,3))
%h1=cdfplot(bHa_lud_SB18(153:244,3)) %JJA
%h2=cdfplot(blu_Ha45_SB18(153:244,3))
%h3=cdfplot(LUD_HA45_SB18(153:244,3))
%h1=cdfplot(bHa_lud_SB18(245:335,3)) %SON
%h2=cdfplot(blu_Ha45_SB18(245:335,3))
%h3=cdfplot(LUD_HA45_SB18(245:335,3))
%h1=cdfplot(bHa_lud_SB18_w(:,3)) %DJF
%h2=cdfplot(blu_Ha45_SB18_w(:,3))
%h3=cdfplot(LUD_HA45_SB18_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/s]')
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Seasonal Flow Duration Curve for D Scenarios, Uwharrie River')
savefig('DFamily_seasonalMAM_SB18')
print -dpng -r300 DFamily_seasonalMAM_SB18

% subbasin 28 daily
figure
h0=cdfplot(Bsln_HA_SB28(61:152,3)) %MAM
%h0=cdfplot(Bsln_HA_SB28(153:244,3)) %JJA
%h0=cdfplot(Bsln_HA_SB28(245:335,3)) %SON
%h0=cdfplot(Bsln_HA_SB28_w(:,3))      %DJF
hold 
h1=cdfplot(bHa_lud_SB28(61:152,3)) %MAM
h2=cdfplot(blu_Ha45_SB28(61:152,3)) 
h3=cdfplot(LUD_HA45_SB28(61:152,3))
%h1=cdfplot(bHa_lud_SB28(153:244,3)) %JJA
%h2=cdfplot(blu_Ha45_SB28(153:244,3))
%h3=cdfplot(LUD_HA45_SB28(153:244,3))
%h1=cdfplot(bHa_lud_SB28(245:335,3)) %SON
%h2=cdfplot(blu_Ha45_SB28(245:335,3))
%h3=cdfplot(LUD_HA45_SB28(245:335,3))
%h1=cdfplot(bHa_lud_SB28_w(:,3)) %DJF
%h2=cdfplot(blu_Ha45_SB28_w(:,3))
%h3=cdfplot(LUD_HA45_SB28_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Spring (MAM) Probablity of Exceedance')
xlabel('Daily flow [m^3/s]')
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Seasonal Flow Duration Curve for D Scenarios, Yadkin River')
savefig('DFamily_seasonalMAM_SB28')
print -dpng -r300 DFamily_seasonalMAM_SB28