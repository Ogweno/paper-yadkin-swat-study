%% Create daily averages of flow and plot it
% Run FlowMatricesStats.m before using 
% Make sure to change "Baseline_SB18" and "Baseline_SB28" to descriptive names
% for each scenario (eg "bCS_lub_SB18") to avoid overwriting.

%% Subbasin 18
clear all

load LUD_Ha45_SB8all.mat
load LUD_Ha45_SB10all.mat

LUD_Ha45_SB8=load('DailyMatrix.csv'); % load matrix with these columns: Month Day MeanQ StDevQ

AvgRch8=sortrows(SB8all,1); % sort by month
Avg_Jan8=AvgRch8(find(AvgRch8(:,1)==1),:); % make January matrix
Avg_Feb8=AvgRch8(find(AvgRch8(:,1)==2),:); % make Feb matrix
Avg_Mar8=AvgRch8(find(AvgRch8(:,1)==3),:); % make mar matrix
Avg_Apr8=AvgRch8(find(AvgRch8(:,1)==4),:); % make apr matrix
Avg_May8=AvgRch8(find(AvgRch8(:,1)==5),:); % make may matrix
Avg_Jun8=AvgRch8(find(AvgRch8(:,1)==6),:); % make jun matrix
Avg_Jul8=AvgRch8(find(AvgRch8(:,1)==7),:); % make jul matrix
Avg_Aug8=AvgRch8(find(AvgRch8(:,1)==8),:); % make aug matrix
Avg_Sep8=AvgRch8(find(AvgRch8(:,1)==9),:); % make sep matrix
Avg_Oct8=AvgRch8(find(AvgRch8(:,1)==10),:); % make oct matrix
Avg_Nov8=AvgRch8(find(AvgRch8(:,1)==11),:); % make nov matrix
Avg_Dec8=AvgRch8(find(AvgRch8(:,1)==12),:); % make dec matrix

% fill January
for i=1:31
    Avg_Day=Avg_Jan8(find(Avg_Jan8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill February
for i=1:29
    Avg_Day=Avg_Feb8(find(Avg_Feb8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+31,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+31,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill March
for i=1:31
    Avg_Day=Avg_Mar8(find(Avg_Mar8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+60,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+60,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill April
for i=1:30
    Avg_Day=Avg_Apr8(find(Avg_Apr8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+91,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+91,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill May
for i=1:31
    Avg_Day=Avg_May8(find(Avg_May8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+121,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+121,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill June
for i=1:30
    Avg_Day=Avg_Jun8(find(Avg_Jun8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+152,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+152,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill July
for i=1:31
    Avg_Day=Avg_Jul8(find(Avg_Jul8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+182,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+182,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill August
for i=1:31
    Avg_Day=Avg_Aug8(find(Avg_Aug8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+213,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+213,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill September
for i=1:30
    Avg_Day=Avg_Sep8(find(Avg_Sep8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+244,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+244,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill October
for i=1:31
    Avg_Day=Avg_Oct8(find(Avg_Oct8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+274,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+274,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill November
for i=1:30
    Avg_Day=Avg_Nov8(find(Avg_Nov8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+305,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+305,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill December
for i=1:31
    Avg_Day=Avg_Dec8(find(Avg_Dec8(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB8(i+335,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB8(i+335,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

%% Plot CDF and save stats in matrix
StatsAvg=[8,1,0,0,0,0,0,0,0;10,1,0,0,0,0,0,0,0];

figure
[h,st]=cdfplot(LUD_Ha45_SB8(:,3))
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','6 Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
title('Baseline Flow Duration Curve Muddy River')
%savefig('LUA_MI85_SB8')
%print -dpng -r300 LUA_MI85_SB8
StatsAvg(1,3)=st.min;
StatsAvg(1,4)=st.max;
StatsAvg(1,5)=st.mean;
StatsAvg(1,6)=st.median;
StatsAvg(1,7)=st.std;
[f,x]=ecdf(LUD_Ha45_SB8(:,3));
q=find(f<=0.1);
StatsAvg(1,8)=x(q(end));
q=find(f>=0.9);
StatsAvg(1,9)=x(q(1));

save('LUD_Ha45_SB8.mat','LUD_Ha45_SB8')

%% Subbasin 28
LUD_Ha45_SB10=load('DailyMatrix.csv'); % load matrix with these columns: Month Day MeanQ StDevQ

AvgRch10=sortrows(SB10all,1); % sort by month
Avg_Jan10=AvgRch10(find(AvgRch10(:,1)==1),:); % make January matrix
Avg_Feb10=AvgRch10(find(AvgRch10(:,1)==2),:); % make Feb matrix
Avg_Mar10=AvgRch10(find(AvgRch10(:,1)==3),:); % make mar matrix
Avg_Apr10=AvgRch10(find(AvgRch10(:,1)==4),:); % make apr matrix
Avg_May10=AvgRch10(find(AvgRch10(:,1)==5),:); % make may matrix
Avg_Jun10=AvgRch10(find(AvgRch10(:,1)==6),:); % make jun matrix
Avg_Jul10=AvgRch10(find(AvgRch10(:,1)==7),:); % make jul matrix
Avg_Aug10=AvgRch10(find(AvgRch10(:,1)==8),:); % make aug matrix
Avg_Sep10=AvgRch10(find(AvgRch10(:,1)==9),:); % make sep matrix
Avg_Oct10=AvgRch10(find(AvgRch10(:,1)==10),:); % make oct matrix
Avg_Nov10=AvgRch10(find(AvgRch10(:,1)==11),:); % make nov matrix
Avg_Dec10=AvgRch10(find(AvgRch10(:,1)==12),:); % make dec matrix

% fill January
for i=1:31
    Avg_Day=Avg_Jan10(find(Avg_Jan10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill February
for i=1:29
    Avg_Day=Avg_Feb10(find(Avg_Feb10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+31,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+31,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill March
for i=1:31
    Avg_Day=Avg_Mar10(find(Avg_Mar10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+60,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+60,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill April
for i=1:30
    Avg_Day=Avg_Apr10(find(Avg_Apr10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+91,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+91,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill May
for i=1:31
    Avg_Day=Avg_May10(find(Avg_May10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+121,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+121,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill June
for i=1:30
    Avg_Day=Avg_Jun10(find(Avg_Jun10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+152,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+152,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill July
for i=1:31
    Avg_Day=Avg_Jul10(find(Avg_Jul10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+182,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+182,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill August
for i=1:31
    Avg_Day=Avg_Aug10(find(Avg_Aug10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+213,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+213,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill September
for i=1:30
    Avg_Day=Avg_Sep10(find(Avg_Sep10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+244,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+244,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill October
for i=1:31
    Avg_Day=Avg_Oct10(find(Avg_Oct10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+274,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+274,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill November
for i=1:30
    Avg_Day=Avg_Nov10(find(Avg_Nov10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+305,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+305,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill December
for i=1:31
    Avg_Day=Avg_Dec10(find(Avg_Dec10(:,2)==i),:); % make only January 1 matrix
    LUD_Ha45_SB10(i+335,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    LUD_Ha45_SB10(i+335,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

%% Plot CDF and save stats in matrix
figure
[h,st]=cdfplot(LUD_Ha45_SB10(:,3))
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','4 Days','Week','Month','6 Months','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
title('Baseline Flow Duration Curve S. Yadkin River')
%savefig('bCS_LUB_SB8')
%print -dpng -r300 bCS_LUB_SB8
StatsAvg(2,3)=st.min;
StatsAvg(2,4)=st.max;
StatsAvg(2,5)=st.mean;
StatsAvg(2,6)=st.median;
StatsAvg(2,7)=st.std;
[f,x]=ecdf(LUD_Ha45_SB10(:,3));
q=find(f<=0.1);
StatsAvg(2,8)=x(q(end));
q=find(f>=0.9);
StatsAvg(2,9)=x(q(1));

save('LUD_Ha45_SB10.mat','LUD_Ha45_SB10')
save('LUD_Ha45_StatsAvg.mat','StatsAvg')