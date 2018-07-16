clear all

run('Import_Discharge_8_10.m')
FlowOutAll=[MONd,YEARd,RCHd,FLOW_OUTcms];

run('Import_Precip_8_10.m')
PrecipAll=[MONp,YEARp,RCHp,PRECIPmm];

Area8=661010000;
Area10=789850000;

ts=load('ts.csv');

%Stats=[8,1,0,0,0,0,0,0,0;10,1,0,0,0,0,0,0,0];
% pre-allocates space for matrix of watershed stats
% Column headings: reach  time(daily)  min  max  mean  median  stdev  10thPct  90thPct

%% Reach 8
% create reach 8 matrices
% monthly
Month8m=MONd(1933:2184);
Year8m=YEARd(1933:2184);
RCH8m=RCHd(1933:2184);
FlowOut8m=FLOW_OUTcms(1933:2184)*1000*24*3600*30/Area8; %convert flow out from m^3/sec to mm/yr
Precip8m=PRECIPmm(1933:2184);
RR8m=FlowOut8m./Precip8m;
Reach8m=[ts,Month8m,Year8m,RCH8m,FlowOut8m,Precip8m,RR8m];
Reach8m=sortrows(Reach8m,1);
figure
plot(Reach8m(:,1),Reach8m(:,7))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Monthly Runoff Ratio in Subbasin 8')
%savefig('RR_8_monthly')
%print -dpng -r300 RR_8_monthly

% yearly
Month8y=MONd(1912:1932);
Year8y=YEARd(1912:1932);
RCH8y=RCHd(1912:1932);
FlowOut8y=FLOW_OUTcms(1912:1932)*1000*24*3600*365/Area8; %convert flow out from m^3/sec to mm/yr
Precip8y=PRECIPmm(1912:1932);
RR8y=FlowOut8y./Precip8y;
Reach8y=[Month8y,Year8y,RCH8y,FlowOut8y,Precip8y,RR8y];
figure
plot(Reach8y(:,2),Reach8y(:,6))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Yearly Runoff Ratio in Subbasin 8')
%savefig('RR_8_yearly')
%print -dpng -r300 RR_8_yearly


%% Reach 10
% create reach 10 matrices
% monthly
Month10m=MONd(2479:2730);
Year10m=YEARd(2479:2730);
RCH10m=RCHd(2479:2730);
FlowOut10m=FLOW_OUTcms(2479:2730)*1000*24*3600*30/Area10; %convert flow out from m^3/sec to mm/yr
Precip10m=PRECIPmm(2479:2730);
RR10m=FlowOut10m./Precip10m;
Reach10m=[ts,Month10m,Year10m,RCH10m,FlowOut10m,Precip10m,RR10m];
Reach10m=sortrows(Reach10m,1);
figure
plot(Reach10m(:,1),Reach10m(:,7))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Monthly Runoff Ratio in Subbasin 10')
%savefig('RR_10_monthly')
%print -dpng -r300 RR_10_monthly

% yearly
Month10y=MONd(2458:2478);
Year10y=YEARd(2458:2478);
RCH10y=RCHd(2458:2478);
FlowOut10y=FLOW_OUTcms(2458:2478)*1000*24*3600*365/Area10; %convert flow out from m^3/sec to mm/yr
Precip10y=PRECIPmm(2458:2478);
RR10y=FlowOut10y./Precip10y;
Reach10y=[Month10y,Year10y,RCH10y,FlowOut10y,Precip10y,RR10y];
figure
plot(Reach10y(:,2),Reach10y(:,6))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Yearly Runoff Ratio in Subbasin 10')
%savefig('RR_10_yearly')
%print -dpng -r300 RR_10_yearly
