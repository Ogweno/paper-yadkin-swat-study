# paper-yadkin-swat-study
Data repository for paper titled: 'Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S.'

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.1312628.svg)](https://doi.org/10.5281/zenodo.1312628)

This README.md file was generated on 20180703 by Sheila Saia.

This GitHub repository was created to provide access to collected data, analysis code, and other information associated with the paper by Suttles et al. titled 'Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S.' in *Science of the Total Environment* ([https://doi.org/10.1016/j.scitotenv.2018.06.287](https://doi.org/10.1016/j.scitotenv.2018.06.287)).

## General Information ##

**Title of Dataset**<br>
"paper-yadkin-swat-study"

**Dataset & Repo Contact Information**<br>
Name: Sheila Saia<br>
Institution: United States Forest Service, Center for Integrated Forest Science<br>
Address: NC State University, Partners 2, 840 Main Campus Drive, Raleigh, NC 27606<br>
Email: ssaia at ncsu dot edu

**Study Contact Information**<br>
Name: Kelly Suttles<br>
Institution: United States Forest Service, Center for Integrated Forest Science<br>
Address: NC State University, Partners 2, 840 Main Campus Drive, Raleigh, NC 27606<br>
Email: ksuttle at ncsu dot edu

**Date of data collection**<br>
SWAT model outputs were generated in 2016. United States Forest Service landuse predictions were generated in 2015. All other data originated from publically available sites as described in the associated paper.

**Geographic location of data collection**<br>
All data is associated with the Upper Yadkin-Pee Dee Watershed in Western North Carolina, USA.

**Information about funding sources that supported the collection of the data**<br>
Kelly Suttles and Sheila Saia were supported by funding through the Oak Ridge Institute for Science and Education (ORISE).

## Sharing & Access Information ##

**Licenses/restrictions placed on the data**<br>
Please use and distribute according to CC-BY v4.0. For a human readible version of this license visit [https://creativecommons.org/licenses/by/4.0/](https://creativecommons.org/licenses/by/4.0/).

**Links to publications that cite or use the data**<br>
SWAT simulated streamflow data was also used by [Saia et al. (2019)](https://link.springer.com/article/10.1007/s10021-019-00387-5).

**Links to other publicly accessible locations of the data**<br>
This dataset and associated R code are available at https://github.com/sheilasaia/paper-yadkin-swat-study and via Zenodo ([https://zenodo.org/record/1312628](https://zenodo.org/record/1312628)). The associated publication is available via *Science of the Total Environment* ([https://doi.org/10.1016/j.scitotenv.2018.06.287](https://doi.org/10.1016/j.scitotenv.2018.06.287)).

**Links/relationships to ancillary data sets**<br>
All links to publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, there is data is also linked to the study dataset explained in [Saia et al. (2019)](https://link.springer.com/article/10.1007/s10021-019-00387-5).

**Data derived from another source**<br>
All links to publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, this is the only source of these data.

**Additional related data collected that was not included in the current data package**<br>
This directory does not include publically available soils, digital elevation data, and reservoir data required to run SWAT. For more information on these data see Suttles et al. (2018) or contact Kelly Suttles directly.

**Are there multiple versions of the dataset?**<br>
All publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, there are no other versions available online.

**Recommended citation for the data**<br>
Suttles, K.M., N. K. Singh, J.M. Vose, K.L. Martin, R.E. Emanuel, J.W. Coulston, S.M. Saia, and M.T. Crump. 2018. Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S. *Science of the Total Environment*. 645:806-816.

**Paper Availability**<br>
The paper is available online at via [*Science of the Total Environment*](https://doi.org/10.1016/j.scitotenv.2018.06.287) and [*Treesearch*](https://www.fs.usda.gov/treesearch/pubs/56780). If you do not have a subscription to the journal or are having trouble accessing it, please contact Sheila Saia or Kelly Suttles directly for a copy of the pre-print.

## Data & File Overview ##
This repository is organized into three main directories: observed\_data, simulated\_data, and analysis\_scripts.

### 1. observed\_data directory ###
The observed\_data directory contains all (historic) observed weather, land cover, and streamflow data used in this study that required pre-processing or were needed for analysis. It also includes digital elevation model (DEM) data, soil data, and reservoir data required to run SWAT. These data were all collected from public databases as explained by Suttles et al. (2018) but are included for convenience. The observed\_data directory includes six subdirectories: weather, landcover\_1992, streamflow, dem\_mosaic, reservoirs, and soils.

#### 1.1 weather subdirectory ####
Directory name: weather <br>
Short description: This subdirectory contains the observed weather data text files required to run SWAT for the 1979-2008 period. It also includes associated .shp files (within the weather\_stations\_shp directory) to display each weather stations spatially. [include details on sim\_baseline\_pcp.xlsx and swat\_precip\_summary\_outlet\_1982-2002.xlsx files] See README file inside this subdirectory for further details on its contents.

**File List**<br>
Filename: \*.txt files <br>
Short description: These text files include observed daily precipitation, temperature, solar radiation, relative humidity, and wind speed for the study watershed. These data are all formatted based on SWAT requirements. See README file inside this subdirectory for further details on each the naming scheme and contents of each text file.<br>

Filename: weather\_stations\_shp.xlsx <br>
Short description: This directory includes files associated with the spatial distribution of the 18 weather stations within the watershed that were used in SWAT. <br>

**Relationship Between Files**<br>
The text files listed above are all required for running in SWAT. Please see README inside this subdirectory for more details on these files.

**Raw Data**<br>
This subdirectory does not contain any raw data because everything in it was automatically formatted for use with SWAT when it was downloaded from publically available sites.<br>

#### 1.2 landcover\_1992 subdirectory ####
Directory name: landcover\_1992 <br>
Short description: This subdirectory contains the observed landcover data text files required to run SWAT for the 1979-2008 period. It includes the nlcd\_1992\_raw and nlcd\_1992\_projected directories which contain all the files needed to open associated raw and projected 1992 land cover data in ArcGIS, respectively. See README file inside this subdirectory for further details on the source of its contents.

**File List**<br>
Filename: LC9276457208.tif files <br>
Short description: Within the nlcd\_1992\_raw, this file represents the raw (unprojected) 1992 National Land Cover Dataset (NLCD) data as described in the README within this folder. The projected NLCD data is required to run SWAT.<br>

Filename: [projected] <br>
Short description: Within the nlcd\_1992\_projected, this file represents the projected 1992 National Land Cover Dataset (NLCD) data described in the README within this folder.<br>

**Relationship Between Files**<br>
The files in the nlcd\_1992\_projected subdirectory are the projected version of the files in the nlcd\_1992\_raw folder.

**Raw Data**<br>
Raw 1992 NLCD data can be found in the nlcd\_1992\_raw subdirectory.

#### 1.3 streamflow subdirectory ####
Directory name: streamflow <br>
Short description: This subdirectory contains the observed daily streamflow data for three USGS gages used in this study: (1) Yadkin River in Enon, NC (USGS gage #02115360), (2) Yadkin River at Yadkin College (USGS gage #02116500), and (3) Pee Dee River (USGS gage #02129000). Raw data for these three USGS gages is stored in the raw directory and a column converting these data from cubic feet per second (cfs) to cubic meters per second (cms) has added to files in the cms\_conversions directory. See README file inside this subdirectory for further details on the source of its contents.

**raw Directory File List**<br>
Filename: USGS\_02115360\_yadkin\_enon_raw.xlsx <br>
Short description: Daily streamflow in cfs units for the USGS Yadkin River at Enon, NC station. See README within the main streamflow directory for information on the source of these data and the header of the file for metadata.<br>

Filename: USGS\_02116500\_yadkin\_college_raw.xlsx <br>
Short description: Daily streamflow in cfs units for the USGS Yadkin River at Yadkin College station. See README within the main streamflow directory for information on the source of these data and the header of the file for metadata.<br>

Filename: USGS\_02129000\_pee\_dee_raw.xlsx <br>
Short description: Daily streamflow in cfs units for the USGS Pee Dee River station. See README within the main streamflow directory for information on the source of these data and the header of the file for metadata.<br>

**cms\_conversions Directory File List**<br>
Filename: USGS\_02115360\_yadkin\_enon.xlsx <br>
Short description: Originates from the USGS\_02115360\_yadkin\_enon_raw.xlsx file but has an extra column for flow in cms units.<br>

Filename: USGS\_02116500\_yadkin\_college.xlsx <br>
Short description: Originates from the USGS\_02116500\_yadkin\_college_raw.xlsx file but has an extra column for flow in cms units.<br>

Filename: USGS\_02129000\_pee\_dee.xlsx <br>
Short description: Originates from the USGS\_02129000\_yadkin\_pee\_dee_raw.xlsx file but has an extra column for flow in cms units. <br>

**Relationship Between Files**<br>
The files in the cms_conversion subdirectory originate from files with a similar name in the raw subdirectory.

**Raw Data**<br>
All raw streamflow data can be found in the raw subdirectory.<br>

#### 1.4 dem\_mosaic subdirectory ####
Directory name: dem\_mosaic <br>
Short description: This directory includes digital elevation model (DEM), file called dem\_mosaic.tif that is required to run SWAT. See README file inside this subdirectory for further details on the source of its contents.

**Relationship Between Files**<br>
There is only one geospatial data file in this folder.

**Raw Data**<br>
There is no raw data included in this subdirectory.

#### 1.5 reservoirs subdirectory ####
Directory name: reservoirs <br>
Short description: This directory includes the geospatial data files associated with the reservoirs.shp file and the reservoirs\_table.xlsx file. See README file inside this subdirectory for further details on the source of its contents.

**Relationship Between Files**<br>
Additional attributes required to add the reservoirs in the reservoirs.shp file to SWAT are included in the reservoirs\_table.xlsx file

**Raw Data**<br>
There is no raw data included in this subdirectory.

#### 1.6 soils subdirectory ####
Directory name: soils <br>
Short description: This directory includes the geospatial data files associated with the soil.shp file. See README file inside this subdirectory for further details on the source of its contents.

**Relationship Between Files**<br>
There is only one geospatial data file in this folder.

**Raw Data**<br>
There is no raw data included in this subdirectory.

### 2. simulated\_data directory ###
The simulated\_data directory contains simulated climate data (climate subdirectory), simulated land use from 2060 (landuse\_2060 subdirectory), and SWAT outputs (swat\_outputs subdirectory).

#### 2.1 climate subdirectory ####
Directory name: climate <br>
Short description:

**backcast\_climate\_1982-2002 Directory File List**<br>
Directory name: backcast\_climate\_1982-2002 <br>
Short description: This subdirectory includes the backcasted climate files required to run SWAT for CSIRO, Hadley, and MIROC climate model simulations. See similarly named directory for each corresponding climate model. See Suttles et al. 2018 for reasoning on why backcasted data is required. See README file inside this subdirectory for further details on the source of its contents.

Filename: \*.txt files within each of the csiro, hadley, and miroc directories<br>
Short description: These text files include observed daily precipitation, temperature, solar radiation, relative humidity, and wind speed for the study watershed. These data are all formatted based on SWAT requirements for 6 climate stations (see climate\_stations\_points.shp in the climate\_stations\_points directory). The format of these text files is the same as is described in the README file inside the observed\_data > weather directory. These files were formatted for analysis in SWAT using the MatLab scripts in the pre-processing\_scripts folder. <br>

**climate\_2050-2070 Directory File List**<br>
Directory name: climate\_2050-2070 <br>
Short description: This subdirectory includes the future climate files required to run SWAT for the CSIRO 4.5, CSIRO 8.5, Hadley 4.5, and MIROC 8.5 climate model simulations. See similarly named directory for each corresponding climate model. See README file inside this subdirectory for further details on the source of its contents.

Filename: \*.txt files within each of the csiro\_4.5, csiro\_8.5, hadley\_4.5, and miroc\_8.5 directories<br>
Short description: These text files include observed daily precipitation, temperature, solar radiation, relative humidity, and wind speed for the study watershed. These data are all formatted based on SWAT requirements for 6 climate stations (see climate\_stations\_points.shp in the climate\_stations\_points directory). The format of these text files is the same as is described in the README file inside the observed\_data > weather directory. These files were formatted for analysis in SWAT using the MatLab scripts in the pre-processing\_scripts folder. <br>

**climate\_stations\_30mbuffer Directory File List**<br>
Directory name: climate\_stations\_30mbuffer <br>
Short description: This directory includes the files associated with the climate\_stations\_30mbuffer.shp file. The climate\_stations\_30mbuffer.shp includes six polygons with a 30m radius that is required for selecting climate stations that were used to download backcast climate and future climate from https://cida.usgs.gov/gdp/. Each station is named based on its proximity to a point in observed\_data > weather > weather\_stations\_shp > weather\_stations.shp.

**climate\_stations\_points Directory File List**<br>
Directory name: climate\_stations\_points <br>
Short description: This directory includes the files associated with the climate\_stations\_points.shp file. The climate\_stations\_points.shp includes six points associated with climate\_stations\_30mbuffer.shp. These points were not required for downloading data but are included for convenience.

**pre-proccessing\_scripts Directory File List**<br>
Directory name: pre-proccessing\_scripts <br>
Short description: This directory includes MatLab scripts which are required to reformat data downloaded from https://cida.usgs.gov/gdp/ for SWAT simulations.

Filename: pcpscript.m <br>
Short description: This MatLab script reformats daily precipitation data from https://cida.usgs.gov/gdp/ for SWAT (i.e., for pXXX-XXXX.txt files).<br>

Filename: rhscript.m <br>
Short description: This MatLab script reformats daily relative humidity data from https://cida.usgs.gov/gdp/ for SWAT (i.e., for rXXX-XXXX.txt files).

Filename: srscript.m <br>
Short description: This MatLab script reformats daily solar radiation data from https://cida.usgs.gov/gdp/ for SWAT (i.e., for sXXX-XXXX.txt files).

Filename: tmpscript.m <br>
Short description: This MatLab script reformats daily temperature data from https://cida.usgs.gov/gdp/ for SWAT (i.e., for tXXX-XXXX.txt files).

Filename: wsscript.m <br>
Short description: This MatLab script reformats daily wind speed data from https://cida.usgs.gov/gdp/ for SWAT (i.e., for wXXX-XXXX.txt files).

**Relationship Between Files**<br>
The climate\_stations\_30mbuffer.shp is needed to download backcast and future climate from https://cida.usgs.gov/gdp/ for SWAT simulations. Reformatting scripts for data downloaded from https://cida.usgs.gov/gdp/ are included in the pre-proccessing\_scripts directory.

**Raw Data**<br>
There is no raw data included in this subdirectory.

#### 2.2 landuse\_2060 subdirectory ####
Directory name: landuse\_2060 <br>
Short description: This directory includes four subdirectories with .img files containing future (2060) land use data for the four scenarios (A, B, C, D) discussed in Suttles et al. (2018). For additional details on the source of these files see the README file in this directory.

Filename: luc.txt <br>
Short description: This is the land use code text file required to run future land use data in SWAT. See further description of this file in the README file in this directory.

**lu\_amc\_2060 Directory File List**<br>
Directory name: lu\_amc\_2060 <br>
Short description: This directory includes the future lu\_amc\_2060.img land use file that was used for scenario A in Suttles et al. (2018).

**lu\_bmc\_2060 Directory File List**<br>
Directory name: lu\_bmc\_2060 <br>
Short description: This directory includes the future lu\_bmc\_2060.img land use file that was used for scenario B in Suttles et al. (2018).

**lu\_cmc\_2060 Directory File List**<br>
Directory name: lu\_cmc\_2060 <br>
Short description: This directory includes the future lu\_cmc\_2060.img land use file that was used for scenario C in Suttles et al. (2018).

**lu\_dmc\_2060 Directory File List**<br>
Directory name: lu\_dmc\_2060 <br>
Short description: This directory includes the future lu\_dmc\_2060.img land use file that was used for scenario D in Suttles et al. (2018).

**Relationship Between Files**<br>
These future land use files are described in further detail in the README file in this directory.

**Raw Data**<br>
There is no raw data included in this subdirectory.

#### 2.3 swat\_outputs subdirectory ####
Directory name: swat\_outputs <br>
Short description: This directory includes many subdirectories that all have two SWAT output files (output.rch and output.sub) that are required for data analyses of each scenario described in Suttles et al. (2018). For further details on these scenarios see Suttles et al. (2018) and the README file in this directory. The README file also descibes how to interpret columns of each SWAT output file.

**Relationship Between Files**<br>
For further details see the README file in this directory.

**Raw Data**<br>
There is no raw data included in this subdirectory.

### 3. analysis\_scripts directory ###
This directory contains three subdirectories: matlab\_scripts, r\_scripts, and summary\_data\_and\_performance\_metrics. Generally, these all have to do with final data analysis of SWAT ouptuts in the simulated\_data > swat\_outputs directory.

#### 3.1 matlab\_scripts subdirectory ####
Directory name: matlab\_scripts <br>
Short description: This subdirectory contains MatLab scripts that were used to carry flow-duration curve analysis, ks-tests, coefficient of variation (CV) calculations, and runoff ratio calculations as described in Suttles et al. (2018). The directories included are: flow\_duration\_curve\_calculations, ks-test\_and\_cv, and runoff\_ratio\_calculations.

**flow\_duration\_curve\_calculations Directory File List**<br>
Directory name: flow\_duration\_curve\_calculations <br>
Short description: Includes MatLab scripts to carry out flow-duration curve analysis for subbasins 8, 10, 18, and 28. See the README file in this directory for more information.<br>

**ks-test\_and\_cv Directory File List**<br>
Directory name: ks-test\_and\_cv <br>
Short description: Includes MatLab scripts to carry out KS-test and CV analysis.<br>

**runoff\_ratio\_calculations Directory File List**<br>
Directory name: runoff\_ratio\_calculations <br>
Short description: Includes MatLab scripts to carry out runoff ration analysis for subbasins 8, 10, 18, and 28. See the README file in this directory for more information.<br>

**Relationship Between Files**<br>
For further details see the README files in this directory as well as Suttles et al. (2018).

**Raw Data**<br>
There is no raw data included in this subdirectory.

#### 3.2 r\_scripts subdirectory ####
Directory name: r\_scripts <br>
Short description: This directory includes four subdirectories: figure\_scripts, high\_low\_frequency\_calcs, script\_outputs, sevenday\_calcs. The figure\_scripts directory includes all R scripts associated with figures from Suttles et al. (2018), the high\_low\_frequency\_calcs includes all R scripts associated with high and low flow frequency analysis in Suttles et al. (2018), the sevenday\_calcs directory includes R scripts to calculate seven day max and min flow statistics, and tbe script\_outputs directory includes some outputs and associated figures that were supplied on the behalf of reviewer comments of Suttles et al. (2018).

#### 3.3 summary\_data\_and\_performance\_metrics subdirectory ####
Directory name: summary\_data\_and\_performance\_metrics subdirectory <br>
Short description: This subdirectory contains three Excel files that were used to carry out data analysis presented in Suttles et al. (2018).

Filename: log\_streamflow\_performance\_metrics.xlsx <br>
Short description: This Excel file was used to calcuate SWAT model performance metrics as described in Suttles et al. (2018).<br>

Filename: streamflow\_performance\_metrics.xlsx <br>
Short description: This Excel file was used to calcuate SWAT model performance metrics as described in Suttles et al. (2018) for each of the three USGS gages. <br>

Filename: obs\_sim\_streamflow\_summary\_all\_gages.xlsx <br>
Short description: This Excel file was used to calcuate SWAT model performance metrics as described in Suttles et al. (2018) for each of the three USGS gages.<br>

**Relationship Between Files**<br>
These summary files originate from the calibration and validation SWAT ouptputs in simulated\_data > swat\_outputs for each of the three USGS stream gages and were used.

**Raw Data**<br>
There is no raw data included in this subdirectory.

## Methodological Information ##

**Description of methods used for collection/generation of data:**<br>
See the associated *Science of the Total Environment* journal article for a full description of the methods used to collect and analyze these data.

**Methods for processing the data:**<br>
See the R scripts in this repository as well as the associated *Science of the Total Environment* journal article for a full description of the methods used to collect and analyze these data.

**Instrument- or software-specific information needed to interpret the data:**<br>
R (open-source, [https://www.r-project.org/](https://www.r-project.org/)) is needed to run .R files, Microsoft Excel (license required, [https://products.office.com/en-us/excel](https://products.office.com/en-us/excel)) is needed to open .xlsx files, and Matlab (license required, [https://www.mathworks.com/products/matlab.html](https://www.mathworks.com/products/matlab.html)) is needed to run .m files. Land use and land cover data can be opened using ArcGIS (license required, [desktop.arcgis.com/en/](desktop.arcgis.com/en/)) or QGIS (open-source, [https://qgis.org/en/site/](https://qgis.org/en/site/)).

**Standards and calibration information, if appropriate:**<br>
Information on calibrations are included in the 'Raw Data' section of this README file.

**Environmental/experimental conditions:**<br>
See the associated *Science of the Total Environment* journal article for a full description of observed and modeled data used in this study.

**Describe any quality-assurance procedures performed on the data:**<br>
SWAT simulations were calibrated and validated. This is described in further detail in Suttles et al. (2018). When possible, data analysis was automated in MatLab and R to ensure consistency.

**People involved with sample collection, processing, analysis and/or submission:**<br>
See the associated *Science of the Total Environment* journal article for a full description of author contributions and acknowledgments.

## Data-Specific Information For: swat\_precip\_summary\_outlet\_1982-2002.xlsx ##

**Variable list**<br>
'RCH' - Reach number. Reach 28 is the outlet of the watershed. <br>
'MO' - Month <br>
'DA' - Day <br>
'YR' - Year <br>
'PRECIPmm' - Precipitation in mm.

**Missing data codes**<br>
No missing data codes.
