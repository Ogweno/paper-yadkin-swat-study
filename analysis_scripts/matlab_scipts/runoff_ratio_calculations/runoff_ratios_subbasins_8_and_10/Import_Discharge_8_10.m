%% Import data from spreadsheet
%% Import the data
[~, ~, raw] = xlsread('Matlab/Analysis/RR2/LUA_MI85_d.xlsx','output'); % change this filename and path
raw = raw(2:end,[2,4,5,8]);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
RCHd = data(:,1);
MONd = data(:,2);
YEARd = data(:,3);
FLOW_OUTcms = data(:,4);

%% Clear temporary variables
clearvars data raw;