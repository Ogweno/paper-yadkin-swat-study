%% To calculate KS-test of significance (h=0 or h=1 to indicate significance at 5% confidence)
% and p values

load Bsln_CS_SB18.mat
load Bsln_CS_SB28.mat

load bCS_luc_SB18.mat
load bCS_luc_SB28.mat
load blu_CS45_SB18.mat
load blu_CS45_SB28.mat
load LUC_CS45_SB18.mat
load LUC_CS45_SB28.mat 

%% Create a winter matrix for each scenario
%Use before winter (DFJ) season

Bsln_CS_SB18_w=[Bsln_CS_SB18(336:366,:);Bsln_CS_SB18(1:60,:)]; %DFJ
bCS_luc_SB18_w=[bCS_luc_SB18(336:366,:);bCS_luc_SB18(1:60,:)] %DJF
blu_CS45_SB18_w=[blu_CS45_SB18(336:366,:);blu_CS45_SB18(1:60,:)] %DJF
LUC_CS45_SB18_w=[LUC_CS45_SB18(336:366,:);LUC_CS45_SB18(1:60,:)] %DJF

Bsln_CS_SB28_w=[Bsln_CS_SB28(336:366,:);Bsln_CS_SB28(1:60,:)]; 
bCS_luc_SB28_w=[bCS_luc_SB28(336:366,:);bCS_luc_SB28(1:60,:)]
blu_CS45_SB28_w=[blu_CS45_SB28(336:366,:);blu_CS45_SB28(1:60,:)]
LUC_CS45_SB28_w=[LUC_CS45_SB28(336:366,:);LUC_CS45_SB28(1:60,:)] 

%% Calculate KS values and put in a matrix 
%climate only scenarios
[h1,p1]=kstest2(Bsln_CS_SB28(61:152,3),blu_CS45_SB28(61:152,3)) %MAM
[h2,p2]=kstest2(Bsln_CS_SB28(153:244,3),blu_CS45_SB28(153:244,3)) %JJA
[h3,p3]=kstest2(Bsln_CS_SB28(245:335,3),blu_CS45_SB28(245:335,3)) %SON
[h4,p4]=kstest2(Bsln_CS_SB28_w(:,3),blu_CS45_SB28_w(:,3)) %Dec

%land use only scenarios
[h5,p5]=kstest2(Bsln_CS_SB28(61:152,3),bCS_luc_SB28(61:152,3)) %MAM
[h6,p6]=kstest2(Bsln_CS_SB28(153:244,3),bCS_luc_SB28(153:244,3)) %JJA
[h7,p7]=kstest2(Bsln_CS_SB28(245:335,3),bCS_luc_SB28(245:335,3)) %SON
[h8,p8]=kstest2(Bsln_CS_SB28_w(:,3),bCS_luc_SB28_w(:,3)) %Dec

%combined scenarios
[h9,p9]=kstest2(Bsln_CS_SB28(61:152,3),LUC_CS45_SB28(61:152,3)) %MAM
[h10,p10]=kstest2(Bsln_CS_SB28(153:244,3),LUC_CS45_SB28(153:244,3)) %JJA
[h11,p11]=kstest2(Bsln_CS_SB28(245:335,3),LUC_CS45_SB28(245:335,3)) %SON
[h12,p12]=kstest2(Bsln_CS_SB28_w(:,3),LUC_CS45_SB28_w(:,3)) %Dec

% matrix to hold everything, 
%columns: Scenario, Season 1=MAM, 2=JJA, 3=SON, 4=DJF; H, P
%Scenario: 1=climate only, 2=LU only, 3=combined
Matrix = [1 1 h1 p1;1 2 h2 p2;1 3 h3 p3;1 4 h4 p4;2 1 h5 p5;2 2 h6 p6;2 3 h7 p7;2 4 h8 p8;3 1 h9 p9;3 2 h10 p10;3 3 h11 p11;3 4 h12 p12;];

