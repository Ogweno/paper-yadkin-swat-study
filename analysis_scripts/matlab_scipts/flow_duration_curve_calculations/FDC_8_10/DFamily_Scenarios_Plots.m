%% Load and plot baseline flow CDF's vs each scenario
% use after 'DailyQavg.m'

load Baseline_Ha_SB8.mat
load Baseline_Ha_SB10.mat

load bHa_lud_SB8.mat
load bHa_lud_SB10.mat
load blu_Ha45_SB8.mat
load blu_Ha45_SB10.mat
load LUD_HA45_SB8.mat
load LUD_HA45_SB10.mat

%% Make plots: baselines vs. all together

% subbasin 8 - Muddy River
figure
h0=cdfplot(Baseline_Ha_SB8(:,3))
hold
h1=cdfplot(bHa_lud_SB8(:,3))
h2=cdfplot(blu_Ha45_SB8(:,3))
h3=cdfplot(LUD_Ha45_SB8(:,3))
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
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Flow Duration Curve for All D Scenarios, Muddy River')
savefig('Hadley_all_SB8')
print -dpng -r300 Hadley_all_SB8

% subbasin 10 - South Yadkin River
figure
h0=cdfplot(Baseline_Ha_SB10(:,3))
hold
h1=cdfplot(bHa_lud_SB10(:,3))
h2=cdfplot(blu_Ha45_SB10(:,3))
h3=cdfplot(LUD_Ha45_SB10(:,3))
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
legend('Baseline','Land Use D','Hadley 4.5','Combined D','Location','SouthEast')
title('Flow Duration Curve for All D Scenarios, South Yadkin River')
savefig('Hadley_all_SB10')
print -dpng -r300 Hadley_all_SB10