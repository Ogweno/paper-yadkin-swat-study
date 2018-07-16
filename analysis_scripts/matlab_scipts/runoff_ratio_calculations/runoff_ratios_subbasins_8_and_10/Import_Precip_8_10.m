%% Import data from spreadsheet
%% Import the data
[~, ~, raw] = xlsread('Matlab/Analysis/RR2/LUA_MI85_p.xlsx','output'); % change this filename and path
raw = raw(2:end,[2,4,5,7]);

%% Create output variable
data = reshape([raw{:}],size(raw));

%% Allocate imported array to column variable names
RCHp = data(:,1);
MONp = data(:,2);
YEARp = data(:,3);
PRECIPmm = data(:,4);

%% Clear temporary variables
clearvars data raw;