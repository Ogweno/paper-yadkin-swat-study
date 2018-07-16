%% Use to calculate annual statistics for runoff ratios
% Use outputs from RunoffRatios_1828.m

%% Save stats in matrix
Stats=[18,0,0,0,0,0;28,0,0,0,0,0]; % pre-allocates space for matrix of watershed stats
% Column headings: reach min max  mean median std dev

% reach 18
%Stats(1,2)=min(Reach18y(:,6));
%Stats(1,3)=max(Reach18y(:,6));
%Stats(1,4)=mean(Reach18y(:,6));
%Stats(1,5)=median(Reach18y(:,6));
%Stats(1,6)=std(Reach18y(:,6));

% reach 28
Stats(2,2)=min(Reach28y(:,6));
Stats(2,3)=max(Reach28y(:,6));
Stats(2,4)=mean(Reach28y(:,6));
Stats(2,5)=median(Reach28y(:,6));
Stats(2,6)=std(Reach28y(:,6));

save('Obs_Stats.mat','Stats')