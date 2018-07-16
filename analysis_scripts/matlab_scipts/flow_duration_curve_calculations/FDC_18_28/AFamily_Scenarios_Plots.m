%% Load and plot baseline flow CDF's vs each scenario
% use after 'FlowReach1828.m' and 'Reach1828_FlowOut.m' and DailyQavg.m

load Bsln_MI_SB18.mat
load Bsln_MI_SB28.mat

load bbMI_LUA_SB18.mat
load bbMI_LUA_SB28.mat
load blu_MI85_SB18.mat
load blu_MI85_SB28.mat
load LUA_MI85_SB18.mat
load LUA_MI85_SB28.mat

%% Make plots: baselines vs. all together

% subbasin 18 
figure
h0=cdfplot(Bsln_MI_SB18(:,3))
hold
h1=cdfplot(bbMI_lua_SB18(:,3))
h2=cdfplot(blu_MI85_SB18(:,3))
h3=cdfplot(LUA_MI85_SB18(:,3))
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
title('Flow Duration Curve for All A Scenarios, Uwharrie River')
savefig('AFamily_all_SB18')
print -dpng -r300 AFamily_all_SB18

% subbasin 28 daily
figure
h0=cdfplot(Bsln_MI_SB28(:,3))
hold
h1=cdfplot(bbMI_LUA_SB28(:,3))
h2=cdfplot(blu_MI85_SB28(:,3))
h3=cdfplot(LUA_MI85_SB28(:,3))
%h4=cdfplot(blu_CS45_SB18(:,3))
%h5=cdfplot(LUB_CS85_SB18(:,3))
%h6=cdfplot(LUC_CS45_SB18(:,3))
%h7=cdfplot(blu_Ha45_28(:,3))
%h8=cdfplot(blu_MI85_28(:,3))
%h9=cdfplot(LUA_MI85_28(:,3))
%h10=cdfplot(LUB_CS85_28(:,3))
%h11=cdfplot(LUC_CS45_28(:,3))
%h12=cdfplot(LUD_HA45_28(:,3))
set(h0,'Color',[0 0 0.8],'LineWidth',2)
set(h1,'Color',[0.8 0.8 0],'LineWidth',2)
set(h2,'Color',[0 0.8 0],'LineWidth',2)
set(h3,'Color',[0.8 0 0],'LineWidth',2)
%set(h4,'Color',[0.8 0 0.8],'LineWidth',2)
%set(h5,'Color',[0 0.8 0.8],'LineWidth',2)
%set(h6,'Color',[0.4 0.4 0.4],'LineWidth',2)
%set(h7,'Color',[0 0.4 0],'LineWidth',2)
%set(h8,'Color',[0.4 0 0],'LineWidth',2)
%set(h9,'Color',[0 0 0.4],'LineWidth',2)
%set(h10,'Color',[0.4 0.4 0],'LineWidth',2)
%set(h11,'Color',[0 0.4 0.4],'LineWidth',2)
%set(h12,'Color',[0.4 0 0.4],'LineWidth',2)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','6 Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
legend('Baseline','Land Use A','MIROC 8.5','Combined A','Location','SouthEast')
title('Flow Duration Curve for All A Scenarios, Yadkin River')
savefig('AFamily_all_SB28')
print -dpng -r300 AFamily_all_SB28