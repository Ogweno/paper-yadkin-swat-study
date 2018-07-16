# runoff\_ratio\_calculations README #

#### Last updated: 20180713 ####

**Annual Runoff Ratio calculations**

There are two folders in this directory: RR_8_10 and RR_18_28 that refer to subbasins 8 and 10 (Muddy Creek and S. Yadkin River) and subbasins 18 and 28 (Uwharrie River and Yadkin River), which were each processed at the same time.  However, the two sets of code do essentially the same thing and could be combined to process all the data at once.

These files need to be run in order. One script may be intended to run before the next and is noted in the beginning comments or the script is set-up to run in another script.

First either “Reach1828_RunoffRatios_D.m” and “Reach1828_RunoffRatios_P.m” or “Import_Discharge_8_10.m” and “Import_Precip_8_10.m” are run to import the SWAT data (output.rch and output.sub).  (Some basic manual prep is needed here to remove rows prior to the header.) The “D” file contains the daily streamflow (from the output.rch file) and the “P” file contains the corresponding precipitation (from the output.sub file).

Next run either “RunoffRatios_8_10.m” or “RunoffRatios_1828.m” to calculate runoff ratios and statistics from the data and plot them.  The file “ts.csv” creates a time series for the plots.

Finally “RR_YearlyStats.m” saves the previously calculated stats in a MatLab file.
