# flow\_duration\_curve\_calculations README #

#### Last updated: 20180713 ####

**Flow Duration Curves**

There are two folders in this directory: FDC_8_10 and FDC_18_28 that refer to subbasins 8 and 10 (Muddy Creek and S. Yadkin River) and subbasins 18 and 28 (Uwharrie River and Yadkin River), which were each processed at the same time.  However, the two sets of code do essentially the same thing and could be combined to process all the data at once.

These files need to be run in order. One script may be intended to run before the next and is noted in the beginning comments or the script is set-up to run in another script.

First run either “Reach1828_FlowOut.m” or “SB8_10_FlowOut.m” to import the SWAT data (output.rch).  (Some basic manual prep is needed here to remove rows prior to the header.)

Next use “FlowReach1828.m” and “FlowMatricesStats.m” to calculate statistics and plot curves.

Next use “DailyQavg.m” to generate an average year and plot it for each scenario.  Using the outputs from DailyQavg.m, plot each family of scenarios: “AFamily_Scenarios_Plots.m,” “BFamily_Scenarios_Plots,” etc. The “seasonal” plots can be used to generate seasonal plots instead of annual plots.
