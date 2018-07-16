%% This script is not set up to 'Run'.  Just cut and paste different scenarios.

load Bsln_HA_SB18.mat
load Bsln_MI_SB18.mat
load Bsln_CS_SB18.mat
load Baseline_SB18.mat

load Bsln_HA_SB28.mat
load Bsln_MI_SB28.mat
load Bsln_CS_SB28.mat
load Baseline_SB28.mat

load bbMI_lua_SB18.mat
load bbMI_lua_SB28.mat
load blu_MI85_SB18.mat
load blu_MI85_SB28.mat
load LUA_MI85_SB18.mat
load LUA_MI85_SB28.mat

load bCS_lub_SB18.mat
load bCS_lub_SB28.mat
load bCS_luc_SB18.mat
load bCS_luc_SB28.mat
load blu_CS45_SB18.mat
load blu_CS45_SB28.mat
load blu_CS85_SB18.mat
load blu_CS85_SB28.mat
load LUB_CS85_SB18.mat
load LUB_CS85_SB28.mat
load LUC_CS45_SB18.mat
load LUC_CS45_SB28.mat

load bHa_lud_SB18.mat
load bHa_lud_SB28.mat
load blu_Ha45_SB18.mat
load blu_Ha45_SB28.mat
load LUD_HA45_SB18.mat
load LUD_HA45_SB28.mat

[h,p]=kstest2(Baseline_SB18(:,3),Bsln_CS_SB18(:,3))
[h,p]=kstest2(Baseline_SB28(:,3),Bsln_CS_SB28(:,3))

[h,p,ks2stat]=kstest2(Bsln_CS_SB18(:,3),bCS_luc_SB18(:,3))
[h,p]=kstest2(Bsln_CS_SB28(:,3),bCS_lub_SB28(:,3))

[h,p]=kstest2(Bsln_MI_SB18(:,3),bbMI_lua_SB18(:,3))
[h,p]=kstest2(Bsln_MI_SB28(:,3),bbMI_lua_SB28(:,3))

[h,p]=kstest2(Bsln_MI_SB18(:,3),blu_MI85_SB18(:,3))
[h,p]=kstest2(Bsln_MI_SB28(:,3),blu_MI85_SB28(:,3))

[h,p,ks2stat]=kstest2(Bsln_CS_SB18(:,3),blu_CS45_SB18(:,3))
[h,p]=kstest2(Bsln_MI_SB28(:,3),blu_MI85_SB28(:,3))

[h,p,ks2stat]=kstest2(Bsln_CS_SB18(:,3),LUC_CS45_SB18(:,3))

[h,p]=kstest2(Bsln_HA_SB18(:,3),bHa_lud_SB18(:,3))
[h,p]=kstest2(Bsln_HA_SB28(:,3),bHa_lud_SB28(:,3))

[h,p]=kstest2(Bsln_HA_SB18(:,3),blu_Ha45_SB18(:,3))
[h,p]=kstest2(Bsln_HA_SB28(:,3),blu_Ha45_SB28(:,3))

[h,p]=kstest2(Bsln_HA_SB18(61:152,3),blu_Ha45_SB18(61:152,3)) %MAM
[h,p]=kstest2(Bsln_HA_SB18(153:244,3),blu_Ha45_SB18(153:244,3)) %JJA
[h,p]=kstest2(Bsln_HA_SB18(245:335,3),blu_Ha45_SB18(245:335,3)) %SON
% see seasonal for winter matrix %Dec
