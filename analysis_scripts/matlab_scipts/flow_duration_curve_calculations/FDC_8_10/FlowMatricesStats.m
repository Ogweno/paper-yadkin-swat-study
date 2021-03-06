%% Creates matrices and calculates stats from Excel spreadsheets
% Use this script first along with SB8_10_FlowOut.m 
% Then use DailyQavg.m to create an "average year" 
% Then plot DailyQavg.m outputs using respective climate plot scripts

clear all

run('SB8_10_FlowOut.m')

FloRchYrAll=[MON,DAY,YEAR,RCH,FLOW_OUTcms];

Stats=[8,0,0,0,0,0,0,0;10,0,0,0,0,0,0,0];
% pre-allocates space for matrix of watershed stats
% Column headings: reach  min  max  mean  median  stdev  10thPct  90thPct

%% Subbasin 8
% create subbasin 8 matrices
Month8=MON(1:7670);
Day8=DAY(1:7670);
Year8=YEAR(1:7670);
RCH8=RCH(1:7670);
FlowOut8=FLOW_OUTcms(1:7670);
SB8all=[Month8,Day8,Year8,RCH8,FlowOut8];

% create CDF plot of data and calculate statistics
figure
[h,st]=cdfplot(FlowOut8)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Cumulative Distribution')
xlabel('Daily flow out [m^3/sec]')
title('Empirical CDF for Subbasin 8')
%savefig('CDF_8_day')
%print -dpng -r300 CDF_8_day
Stats(1,2)=st.min;
Stats(1,3)=st.max;
Stats(1,4)=st.mean;
Stats(1,5)=st.median;
Stats(1,6)=st.std;
[f,x]=ecdf(FlowOut8);
q=find(f<=0.1);
Stats(1,7)=x(q(end));
q=find(f>=0.9);
Stats(1,8)=x(q(1));
save('blu_Ha45_stats20yr.mat','Stats')
save('blu_Ha45_SB8all.mat','SB8all')
%% Subbasin 10
% create subbasin 10 matrices
Month10=MON(15341:end);
Day10=DAY(15341:end);
Year10=YEAR(15341:end);
RCH10=RCH(15341:end);
FlowOut10=FLOW_OUTcms(15341:end);
SB10all=[Month10,Day10,Year10,RCH10,FlowOut10];

% create CDF plot of data and calculate statistics
figure
[h,st]=cdfplot(FlowOut10)
set(gca,'Xscale','log')
set(gca,'Yscale','log')
ylabel('Cumulative Distribution')
xlabel('Daily flow out [m^3/sec]')
title('Empirical CDF for Subbasin 10')
%savefig('CDF_10_daily')
%print -dpng -r300 CDF_10_daily
Stats(2,2)=st.min;
Stats(2,3)=st.max;
Stats(2,4)=st.mean;
Stats(2,5)=st.median;
Stats(2,6)=st.std;
[f,x]=ecdf(FlowOut10);
q=find(f<=0.1);
Stats(2,7)=x(q(end));
q=find(f>=0.9);
Stats(2,8)=x(q(1));
save('blu_Ha45_stats20yr.mat','Stats')
save('blu_Ha45_SB10all.mat','SB10all')