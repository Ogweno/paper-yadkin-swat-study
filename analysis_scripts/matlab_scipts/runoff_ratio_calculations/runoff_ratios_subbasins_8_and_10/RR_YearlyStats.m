%% Use to calculate annual statistics for runoff ratios
% Use outputs from RunoffRatios_8_10.m

%% Save stats in matrix
Stats=[8,0,0,0,0,0;10,0,0,0,0,0]; % pre-allocates space for matrix of watershed stats
% Column headings: reach min max  mean median std dev

% reach 8
Stats(1,2)=min(Reach8y(:,6));
Stats(1,3)=max(Reach8y(:,6));
Stats(1,4)=mean(Reach8y(:,6));
Stats(1,5)=median(Reach8y(:,6));
Stats(1,6)=std(Reach8y(:,6));

% reach 10
Stats(2,2)=min(Reach10y(:,6));
Stats(2,3)=max(Reach10y(:,6));
Stats(2,4)=mean(Reach10y(:,6));
Stats(2,5)=median(Reach10y(:,6));
Stats(2,6)=std(Reach10y(:,6));

save('LUA_MI85_Stats.mat','Stats')