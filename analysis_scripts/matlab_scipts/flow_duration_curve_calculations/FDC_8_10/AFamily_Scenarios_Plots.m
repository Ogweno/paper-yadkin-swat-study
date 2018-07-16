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

%% Make plots: baselines vs. all together

% subbasin 8 
figure
h0=cdfplot(Baseline_MI_SB8(:,3))
hold
h1=cdfplot(bbMI_lua_SB8(:,3))
h2=cdfplot(blu_MI85_SB8(:,3))
h3=cdfplot(LUA_MI85_SB8(:,3))
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
legend('Baseline','Land Use A','MIROC 8.5','Combined A','Location','SouthEast')
title('Flow Duration Curve for All A Scenarios, Muddy River')
savefig('MIROC_all_SB8')
print -dpng -r300 MIROC_all_SB8

% subbasin 10 daily
figure
h0=cdfplot(Baseline_MI_SB10(:,3))
hold
h1=cdfplot(bbMI_lua_SB10(:,3))
h2=cdfplot(blu_MI85_SB10(:,3))
h3=cdfplot(LUA_MI85_SB10(:,3))
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
legend('Baseline','Land Use A','MIROC 8.5','Combined A','Location','SouthEast')
title('Flow Duration Curve for All A Scenarios, South Yadkin River')
savefig('MIROC_all_SB10')
print -dpng -r300 MIROC_all_SB10