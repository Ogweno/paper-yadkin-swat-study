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

%% Make plots: baselines vs. CSIRO 4.5 together

% subbasin 8 - Muddy River
figure
h0=cdfplot(Baseline_CS_SB8(:,3))
hold
h1=cdfplot(bCS_luc_SB8(:,3))
h2=cdfplot(blu_CS45_SB8(:,3))
h3=cdfplot(LUC_CS45_SB8(:,3))
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
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Flow Duration Curve for All C Scenarios, Muddy River')
savefig('CSIRO45_all_SB8')
print -dpng -r300 CSIRO45_all_SB8

% subbasin 10 daily  - S. Yadkin River
figure
h0=cdfplot(Baseline_CS_SB10(:,3))
hold
h1=cdfplot(bCS_luc_SB10(:,3))
h2=cdfplot(blu_CS45_SB10(:,3))
h3=cdfplot(LUC_CS45_SB10(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','Six Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use C','CSIRO 4.5','Combined C','Location','SouthEast')
title('Flow Duration Curve for All C Scenarios, South Yadkin River')
savefig('CSIRO45_all_SB10')
print -dpng -r300 CSIRO45_all_SB10