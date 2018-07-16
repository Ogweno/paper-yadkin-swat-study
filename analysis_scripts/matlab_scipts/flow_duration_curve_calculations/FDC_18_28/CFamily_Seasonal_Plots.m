%% Load and plot baseline flow CDF's vs each scenario
% use after 'FlowReach1828.m' and 'Reach1828_FlowOut.m' and DailyQavg.m

load Bsln_CS_SB18.mat
load Bsln_CS_SB28.mat

load bCS_luc_SB18.mat
load bCS_luc_SB28.mat
load blu_CS45_SB18.mat
load blu_CS45_SB28.mat
load LUC_CS45_SB18.mat
load LUC_CS45_SB28.mat

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Bsln_CS_SB18_w=[Bsln_CS_SB18(336:366,:);Bsln_CS_SB18(1:60,:)]; %DFJ
bCS_luc_SB18_w=[bCS_luc_SB18(336:366,:);bCS_luc_SB18(1:60,:)] %DJF
blu_CS45_SB18_w=[blu_CS45_SB18(336:366,:);blu_CS45_SB18(1:60,:)] %DJF
LUC_CS45_SB18_w=[LUC_CS45_SB18(336:366,:);LUC_CS45_SB18(1:60,:)] %DJF

Bsln_CS_SB28_w=[Bsln_CS_SB28(336:366,:);Bsln_CS_SB28(1:60,:)]; 
bCS_luc_SB28_w=[bCS_luc_SB28(336:366,:);bCS_luc_SB28(1:60,:)] %DJF
blu_CS45_SB28_w=[blu_CS45_SB28(336:366,:);blu_CS45_SB28(1:60,:)] %DJF
LUC_CS45_SB28_w=[LUC_CS45_SB28(336:366,:);LUC_CS45_SB28(1:60,:)] %DJF 

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 18 
figure
%h0=cdfplot(Bsln_CS_SB18(61:152,3)) %MAM
%h0=cdfplot(Bsln_CS_SB18(153:244,3)) %JJA
%h0=cdfplot(Bsln_CS_SB18(245:335,3)) %SON
h0=cdfplot(Bsln_CS_SB18_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_luc_SB18(61:152,3)) %MAM
%h2=cdfplot(blu_CS45_SB18(61:152,3))
%h3=cdfplot(LUC_CS45_SB18(61:152,3))
%h1=cdfplot(bCS_luc_SB18(153:244,3)) %JJA
%h2=cdfplot(blu_CS45_SB18(153:244,3))
%h3=cdfplot(LUC_CS45_SB18(153:244,3))
%h1=cdfplot(bCS_luc_SB18(245:335,3)) %SON
%h2=cdfplot(blu_CS45_SB18(245:335,3))
%h3=cdfplot(LUC_CS45_SB18(245:335,3))
h1=cdfplot(bCS_luc_SB18_w(:,3)) %DJF
h2=cdfplot(blu_CS45_SB18_w(:,3))
h3=cdfplot(LUC_CS45_SB18_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Winter (DJF) Probablity of Exceedance')
xlabel('Daily flow [m^3/s]')
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Seasonal Flow Duration Curve for All C Scenarios, Uwharrie River')
savefig('CFamily_seasonalDJF_SB18')
print -dpng -r300 CFamily_seasonalDJF_SB18

% subbasin 28 daily
figure
%h0=cdfplot(Bsln_CS_SB28(61:152,3)) %MAM
%h0=cdfplot(Bsln_CS_SB28(153:244,3)) %JJA
%h0=cdfplot(Bsln_CS_SB28(245:335,3)) %SON
h0=cdfplot(Bsln_CS_SB28_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_luc_SB28(61:152,3)) %MAM
%h2=cdfplot(blu_CS45_SB28(61:152,3))
%h3=cdfplot(LUC_CS45_SB28(61:152,3))
%h1=cdfplot(bCS_luc_SB28(153:244,3)) %JJA
%h2=cdfplot(blu_CS45_SB28(153:244,3))
%h3=cdfplot(LUC_CS45_SB28(153:244,3))
%h1=cdfplot(bCS_luc_SB28(245:335,3)) %SON
%h2=cdfplot(blu_CS45_SB28(245:335,3))
%h3=cdfplot(LUC_CS45_SB28(245:335,3))
h1=cdfplot(bCS_luc_SB28_w(:,3)) %DJF
h2=cdfplot(blu_CS45_SB28_w(:,3))
h3=cdfplot(LUC_CS45_SB28_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Winter (DJF) Probablity of Exceedance')
xlabel('Daily flow [m^3/s]')
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Seasonal Flow Duration Curve for All C Scenarios, Yadkin River')
savefig('CFamily_seasonalDJF_SB28')
print -dpng -r300 CFamily_seasonalDJF_SB28