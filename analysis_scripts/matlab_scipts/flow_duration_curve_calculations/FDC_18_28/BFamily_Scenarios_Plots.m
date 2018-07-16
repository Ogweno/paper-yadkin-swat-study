%% Load and plot baseline flow CDF's vs each scenario
% use after 'FlowReach1828.m' and 'Reach1828_FlowOut.m' and DailyQavg.m

load Bsln_CS_SB18.mat
load Bsln_CS_SB28.mat

load bCS_LUB_SB18.mat
load bCS_LUB_SB28.mat
load blu_CS85_SB18.mat
load blu_CS85_SB28.mat
load LUB_CS85_SB18.mat
load LUB_CS85_SB28.mat 

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 18 
figure
h0=cdfplot(Bsln_CS_SB18(:,3))
hold
h1=cdfplot(bCS_LUB_SB18(:,3))
h2=cdfplot(blu_CS85_SB18(:,3))
h3=cdfplot(LUB_CS85_SB18(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','6 Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Combined B','Location','SouthEast')
title('Flow Duration Curve for All B Scenarios, Uwharrie River')
savefig('BFamily_all_SB18')
print -dpng -r300 BFamily_all_SB18

% subbasin 28 daily
figure
h0=cdfplot(Bsln_CS_SB28(:,3))
hold
h1=cdfplot(bCS_LUB_SB28(:,3))
h2=cdfplot(blu_CS85_SB28(:,3))
h3=cdfplot(LUB_CS85_SB28(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','6 Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use B','CSIRO 8.5','Combined B','Location','SouthEast')
title('Flow Duration Curve for All B Scenarios, Yadkin River')
savefig('BFamily_all_SB28')
print -dpng -r300 BFamily_all_SB28