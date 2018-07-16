%% Load and plot baseline flow CDF's vs each scenario
% use after 'FlowReach1828.m' and 'Reach1828_FlowOut.m' and DailyQavg.m

load Bsln_CS_SB18.mat
load Bsln_CS_SB28.mat

load bCS_lub_SB18.mat
load bCS_lub_SB28.mat
load blu_CS85_SB18.mat
load blu_CS85_SB28.mat
load LUB_CS85_SB18.mat
load LUB_CS85_SB28.mat 

%% Create a winter matrix for each scenario; Use before winter (DFJ) season

Bsln_CS_SB18_w=[Bsln_CS_SB18(336:366,:);Bsln_CS_SB18(1:60,:)]; %DFJ
bCS_lub_SB18_w=[bCS_lub_SB18(336:366,:);bCS_lub_SB18(1:60,:)] %DJF
blu_CS85_SB18_w=[blu_CS85_SB18(336:366,:);blu_CS85_SB18(1:60,:)] %DJF
LUB_CS85_SB18_w=[LUB_CS85_SB18(336:366,:);LUB_CS85_SB18(1:60,:)] %DJF

Bsln_CS_SB28_w=[Bsln_CS_SB28(336:366,:);Bsln_CS_SB28(1:60,:)]; 
bCS_lub_SB28_w=[bCS_lub_SB28(336:366,:);bCS_lub_SB28(1:60,:)] 
blu_CS85_SB28_w=[blu_CS85_SB28(336:366,:);blu_CS85_SB28(1:60,:)] 
LUB_CS85_SB28_w=[LUB_CS85_SB28(336:366,:);LUB_CS85_SB28(1:60,:)] 

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 18 
figure
%h0=cdfplot(Bsln_CS_SB18(61:152,3)) %MAM
%h0=cdfplot(Bsln_CS_SB18(153:244,3)) %JJA
%h0=cdfplot(Bsln_CS_SB18(245:335,3)) %SON
h0=cdfplot(Bsln_CS_SB18_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_LUB_SB18(61:152,3)) %MAM
%h2=cdfplot(blu_CS85_SB18(61:152,3))
%h3=cdfplot(LUB_CS85_SB18(61:152,3))
%h1=cdfplot(bCS_LUB_SB18(153:244,3)) %JJA
%h2=cdfplot(blu_CS85_SB18(153:244,3))
%h3=cdfplot(LUB_CS85_SB18(153:244,3))
%h1=cdfplot(bCS_LUB_SB18(245:335,3)) %SON
%h2=cdfplot(blu_CS85_SB18(245:335,3))
%h3=cdfplot(LUB_CS85_SB18(245:335,3))
h1=cdfplot(bCS_lub_SB18_w(:,3)) %DJF
h2=cdfplot(blu_CS85_SB18_w(:,3))
h3=cdfplot(LUB_CS85_SB18_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0.8 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Winter (DJF) Probablity of Exceedance')
xlabel('Daily flow out [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Land Use B/CSIRO 8.5','Location','SouthEast')
title('Seasonal Flow Duration Curve for All LU B/CS8.5 Scenarios,  Subbasin 18')
savefig('CSIRO85_seasonalDJF_SB18')
print -dpng -r300 CSIRO85_seasonalDJF_SB18

% subbasin 28 daily
figure
%h0=cdfplot(Bsln_CS_SB28(61:152,3)) %MAM
%h0=cdfplot(Bsln_CS_SB28(153:244,3)) %JJA
%h0=cdfplot(Bsln_CS_SB28(245:335,3)) %SON
h0=cdfplot(Bsln_CS_SB28_w(:,3))    %DJF
hold
%h1=cdfplot(bCS_LUB_SB28(61:152,3)) %MAM
%h2=cdfplot(blu_CS85_SB28(61:152,3))
%h3=cdfplot(LUB_CS85_SB28(61:152,3))
%h1=cdfplot(bCS_LUB_SB28(153:244,3)) %JJA
%h2=cdfplot(blu_CS85_SB28(153:244,3))
%h3=cdfplot(LUB_CS85_SB28(153:244,3))
%h1=cdfplot(bCS_LUB_SB28(245:335,3)) %SON
%h2=cdfplot(blu_CS85_SB28(245:335,3))
%h3=cdfplot(LUB_CS85_SB28(245:335,3))
h1=cdfplot(bCS_lub_SB28_w(:,3)) %DJF
h2=cdfplot(blu_CS85_SB28_w(:,3))
h3=cdfplot(LUB_CS85_SB28_w(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0.8 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Average Summer (DJF) Probablity of Exceedance')
xlabel('Daily flow out [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Land Use B/CSIRO 8.5','Location','SouthEast')
title('Seasonal Flow Duration Curve for All LU B/CS8.5 Scenarios,  Subbasin 28')
savefig('CSIRO85_seasonalDJF_SB28')
print -dpng -r300 CSIRO85_seasonalDJF_SB28