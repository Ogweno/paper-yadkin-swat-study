clear all

run('Reach1828_RunoffRatios_D.m')
FlowOutAll=[MONd,YEARd,RCHd,FLOW_OUTcms];

run('Reach1828_RunoffRatios_P.m')
PrecipAll=[MONp,YEARp,RCHp,PRECIPmm];

Area18=1003000000;
Area28=17780000000;

ts=load('ts.csv');

%Stats=[18,1,0,0,0,0,0,0,0;28,1,0,0,0,0,0,0,0];
% pre-allocates space for matrix of watershed stats
% Column headings: reach  time(daily)  min  max  mean  median  stdev  10thPct  90thPct

%% Reach 28
% create reach 28 matrices
% monthly
Month28m=MONd(22:273);
Year28m=YEARd(22:273);
RCH28m=RCHd(22:273);
FlowOut28m=FLOW_OUTcms(22:273)*1000*24*3600*30/Area28; %convert flow out from m^3/sec to mm/month
Precip28m=PRECIPmm(22:273);
RR28m=FlowOut28m./Precip28m;
Reach28m=[ts,Month28m,Year28m,RCH28m,FlowOut28m,Precip28m,RR28m];
Reach28m=sortrows(Reach28m,1);
figure
plot(Reach28m(:,1),Reach28m(:,7))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Monthly Runoff Ratio in Subbasin 28')
savefig('RR_28_monthly')
print -dpng -r300 RR_28_monthly

% yearly
Month28y=MONd(1:21);
Year28y=YEARd(1:21);
RCH28y=RCHd(1:21);
FlowOut28y=FLOW_OUTcms(1:21)*1000*24*3600*365/Area28; %convert flow out from m^3/sec to mm/yr
Precip28y=PRECIPmm(1:21);
RR28y=FlowOut28y./Precip28y;
Reach28y=[Month28y,Year28y,RCH28y,FlowOut28y,Precip28y,RR28y];
figure
plot(Reach28y(:,2),Reach28y(:,6))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
%title('Yearly Runoff Ratio in Subbasin 28')
%savefig('RR_28_yearly')
print -dpng -r300 RR_28_yearly


%% Reach 18
% create reach 18 matrices
% monthly
Month18m=MONd(2752:3003);
Year18m=YEARd(2752:3003);
RCH18m=RCHd(2752:3003);
FlowOut18m=FLOW_OUTcms(2752:3003)*1000*24*3600*30/Area18; %convert flow out from m^3/sec to mm/yr
Precip18m=PRECIPmm(2752:3003);
RR18m=FlowOut18m./Precip18m;
Reach18m=[ts,Month18m,Year18m,RCH18m,FlowOut18m,Precip18m,RR18m];
Reach18m=sortrows(Reach18m,1);
figure
plot(Reach18m(:,1),Reach18m(:,7))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Monthly Runoff Ratio in Subbasin 18')
%savefig('RR_18_monthly')
%print -dpng -r300 RR_18_monthly

% yearly
Month18y=MONd(2731:2751);
Year18y=YEARd(2731:2751);
RCH18y=RCHd(2731:2751);
FlowOut18y=FLOW_OUTcms(2731:2751)*1000*24*3600*365/Area18; %convert flow out from m^3/sec to mm/yr
Precip18y=PRECIPmm(2731:2751);
RR18y=FlowOut18y./Precip18y;
Reach18y=[Month18y,Year18y,RCH18y,FlowOut18y,Precip18y,RR18y];
figure
plot(Reach18y(:,2),Reach18y(:,6))
datetick
axis([-inf inf 0 1])
ylabel('Runoff Ratio')
title('Yearly Runoff Ratio in Subbasin 18')
%savefig('RR_18_yearly')
%print -dpng -r300 RR_18_yearly

% plot both basins together
%figure
%plot(Reach18m(:,1),Reach18m(:,7))
%plot(Reach28m(:,1),Reach28m(:,7),'r')
%datetick
%axis([-inf inf 0 1])
%ylabel('Runoff Ratio')
%title('Monthly Runoff Ratios in Each Subbasin')
%legend('Subbasin 18','Subbasin 28','Location','Best')
%savefig('RR_both_monthly')
%print -dpng -r300 RR_both_monthly

%figure
%plot(Reach18y(:,2),Reach18y(:,6))
%hold
%plot(Reach28y(:,2),Reach28y(:,6),'r')
%datetick
%axis([-inf inf 0 1])
%ylabel('Runoff Ratio')
%title('Yearly Runoff Ratios in Each Subbasin')
%legend('Subbasin 18','Subbasin 28','Location','Best')
%savefig('RR_both_yearly')
%print -dpng -r300 RR_both_yearly
