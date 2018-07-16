%% Create daily averages of flow and plot it
% make sure to change "Baseline_SB18" and "Baseline_SB28" to descriptive names
% for each scenario (eg "bCS_lub_SB18") to avoid overwriting.

%% Subbasin 18
baseline_CS_SB18=load('DailyMatrix.csv'); % load matrix with these columns: Month Day MeanQ StDevQ

AvgRch18=sortrows(Reach18all,1); % sort by month
Avg_Jan18=AvgRch18(find(AvgRch18(:,1)==1),:); % make January matrix
Avg_Feb18=AvgRch18(find(AvgRch18(:,1)==2),:); % make Feb matrix
Avg_Mar18=AvgRch18(find(AvgRch18(:,1)==3),:); % make mar matrix
Avg_Apr18=AvgRch18(find(AvgRch18(:,1)==4),:); % make apr matrix
Avg_May18=AvgRch18(find(AvgRch18(:,1)==5),:); % make may matrix
Avg_Jun18=AvgRch18(find(AvgRch18(:,1)==6),:); % make jun matrix
Avg_Jul18=AvgRch18(find(AvgRch18(:,1)==7),:); % make jul matrix
Avg_Aug18=AvgRch18(find(AvgRch18(:,1)==8),:); % make aug matrix
Avg_Sep18=AvgRch18(find(AvgRch18(:,1)==9),:); % make sep matrix
Avg_Oct18=AvgRch18(find(AvgRch18(:,1)==10),:); % make oct matrix
Avg_Nov18=AvgRch18(find(AvgRch18(:,1)==11),:); % make nov matrix
Avg_Dec18=AvgRch18(find(AvgRch18(:,1)==12),:); % make dec matrix

% fill January
for i=1:31
    Avg_Day=Avg_Jan18(find(Avg_Jan18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill February
for i=1:29
    Avg_Day=Avg_Feb18(find(Avg_Feb18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+31,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+31,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill March
for i=1:31
    Avg_Day=Avg_Mar18(find(Avg_Mar18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+60,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+60,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill April
for i=1:30
    Avg_Day=Avg_Apr18(find(Avg_Apr18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+91,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+91,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill May
for i=1:31
    Avg_Day=Avg_May18(find(Avg_May18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+121,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+121,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill June
for i=1:30
    Avg_Day=Avg_Jun18(find(Avg_Jun18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+152,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+152,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill July
for i=1:31
    Avg_Day=Avg_Jul18(find(Avg_Jul18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+182,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+182,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill August
for i=1:31
    Avg_Day=Avg_Aug18(find(Avg_Aug18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+213,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+213,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill September
for i=1:30
    Avg_Day=Avg_Sep18(find(Avg_Sep18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+244,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+244,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill October
for i=1:31
    Avg_Day=Avg_Oct18(find(Avg_Oct18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+274,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+274,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill November
for i=1:30
    Avg_Day=Avg_Nov18(find(Avg_Nov18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+305,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+305,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill December
for i=1:31
    Avg_Day=Avg_Dec18(find(Avg_Dec18(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB18(i+335,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB18(i+335,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

%% Plot CDF and save stats in matrix
StatsAvg=[18,1,0,0,0,0,0,0,0;28,1,0,0,0,0,0,0,0];

figure
[h,st]=cdfplot(baseline_CS_SB18(:,3))
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','10^-2','Week','Month','0.5','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow [m^3/sec]')
title('Baseline Flow Duration Curve Uwharrie River')
%savefig('bCS_LUB_SB18')
%print -dpng -r300 bCS_LUB_SB18
StatsAvg(1,3)=st.min;
StatsAvg(1,4)=st.max;
StatsAvg(1,5)=st.mean;
StatsAvg(1,6)=st.median;
StatsAvg(1,7)=st.std;
[f,x]=ecdf(baseline_CS_SB18(:,3));
q=find(f<=0.1);
StatsAvg(1,8)=x(q(end));
q=find(f>=0.9);
StatsAvg(1,9)=x(q(1));

save('baseline_CS_SB18.mat','baseline_CS_SB18')
save('baseline_CS_StatsAvgYr.mat','StatsAvg')
%% Subbasin 28
baseline_CS_SB28=load('DailyMatrix.csv'); % load matrix with these columns: Month Day MeanQ StDevQ

AvgRch28=sortrows(Reach28all,1); % sort by month
Avg_Jan28=AvgRch28(find(AvgRch28(:,1)==1),:); % make January matrix
Avg_Feb28=AvgRch28(find(AvgRch28(:,1)==2),:); % make Feb matrix
Avg_Mar28=AvgRch28(find(AvgRch28(:,1)==3),:); % make mar matrix
Avg_Apr28=AvgRch28(find(AvgRch28(:,1)==4),:); % make apr matrix
Avg_May28=AvgRch28(find(AvgRch28(:,1)==5),:); % make may matrix
Avg_Jun28=AvgRch28(find(AvgRch28(:,1)==6),:); % make jun matrix
Avg_Jul28=AvgRch28(find(AvgRch28(:,1)==7),:); % make jul matrix
Avg_Aug28=AvgRch28(find(AvgRch28(:,1)==8),:); % make aug matrix
Avg_Sep28=AvgRch28(find(AvgRch28(:,1)==9),:); % make sep matrix
Avg_Oct28=AvgRch28(find(AvgRch28(:,1)==10),:); % make oct matrix
Avg_Nov28=AvgRch28(find(AvgRch28(:,1)==11),:); % make nov matrix
Avg_Dec28=AvgRch28(find(AvgRch28(:,1)==12),:); % make dec matrix

% fill January
for i=1:31
    Avg_Day=Avg_Jan28(find(Avg_Jan28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill February
for i=1:29
    Avg_Day=Avg_Feb28(find(Avg_Feb28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+31,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+31,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill March
for i=1:31
    Avg_Day=Avg_Mar28(find(Avg_Mar28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+60,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+60,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill April
for i=1:30
    Avg_Day=Avg_Apr28(find(Avg_Apr28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+91,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+91,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill May
for i=1:31
    Avg_Day=Avg_May28(find(Avg_May28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+121,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+121,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill June
for i=1:30
    Avg_Day=Avg_Jun28(find(Avg_Jun28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+152,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+152,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill July
for i=1:31
    Avg_Day=Avg_Jul28(find(Avg_Jul28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+182,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+182,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill August
for i=1:31
    Avg_Day=Avg_Aug28(find(Avg_Aug28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+213,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+213,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill September
for i=1:30
    Avg_Day=Avg_Sep28(find(Avg_Sep28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+244,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+244,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill October
for i=1:31
    Avg_Day=Avg_Oct28(find(Avg_Oct28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+274,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+274,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill November
for i=1:30
    Avg_Day=Avg_Nov28(find(Avg_Nov28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+305,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+305,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

% fill December
for i=1:31
    Avg_Day=Avg_Dec28(find(Avg_Dec28(:,2)==i),:); % make only January 1 matrix
    baseline_CS_SB28(i+335,3)=mean(Avg_Day(:,5)); % find avg of Jan 1
    baseline_CS_SB28(i+335,4)=std(Avg_Day(:,5)); % find std deviation of Jan 1
    i=i+1; % iterate
end

%% Plot CDF and save stats in matrix
figure
[h,st]=cdfplot(baseline_CS_SB28(:,3))
set(gca,'Xscale','log')
set(gca,'Yscale','log')
set(gca,'Ytick',[1/365 10^-2 1/52 1/12 0.5 1])
set(gca,'Yticklabel',{'Day','10^-2','Week','Month','0.5','Year'})
ylabel('Average Year Probablity of Exceedance')
xlabel('Daily flow out [m^3/sec]')
title('Baseline Flow Duration Curve Yadkin River')
%savefig('bCS_LUB_SB28')
%print -dpng -r300 bCS_LUB_SB28
StatsAvg(2,3)=st.min;
StatsAvg(2,4)=st.max;
StatsAvg(2,5)=st.mean;
StatsAvg(2,6)=st.median;
StatsAvg(2,7)=st.std;
[f,x]=ecdf(baseline_CS_SB28(:,3));
q=find(f<=0.1);
StatsAvg(2,8)=x(q(end));
q=find(f>=0.9);
StatsAvg(2,9)=x(q(1));

save('baseline_CS_SB28.mat','baseline_CS_SB28')
save('baseline_CS_StatsAvgYr.mat','StatsAvg')