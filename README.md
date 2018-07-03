# paper-yadkin-swat-study
Data repository for paper titled: 'Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S.'

### DOI TAG HERE ###

This README.md file was generated on 20180703 by Sheila Saia.

This GitHub repository was created to provide access to collected data, analysis code, and other information associated with the paper by Suttles et al. titled 'Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S.' in *Science of the Total Environment* ([XXXX](XXXX)).

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
SWAT simulated streamflow data was also used by [Saia et al. (XXXX)](XXXX).

**Links to other publicly accessible locations of the data**<br>
This dataset and associated R code are available at https://github.com/sheilasaia/paper-yadkin-swat-study and via Zenodo ([XXXX](XXXX)). The associated publication is available via *Science of the Total Environment* ([XXXX](XXXX)).

**Links/relationships to ancillary data sets**<br>
All links to publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, there is data is also linked to the study dataset explained in [Saia et al. (XXXX)](XXXX).

**Data derived from another source**<br>
All links to publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, this is the only source of these data.

**Additional related data collected that was not included in the current data package**<br>
This directory does not include publically available soils, digital elevation data, and reservoir data required to run SWAT. For more information on these data see Suttles et al. (2018) or contact Kelly Suttles directly.

**Are there multiple versions of the dataset?**<br>
All publically available data is described here and in Suttles et al. (2018). With respect to simulated data and data analysis scripts, there are no other versions available online.

**Recommended citation for the data**<br>
Suttles, K.M., N. K. Singh, J.M. Vose, K.L. Martin, R.E. Emanuel, J.W. Coulston, S.M. Saia, and M.T. Crump. 2018. Assessment of Hydrologic Vulnerability to Urbanization and Climate Change in a Rapidly Changing Watershed in the Southeast U.S. *Science of the Total Environment*. XX(XX):XX-XX.

**Paper Availability**<br>
The paper is available online at via [*Science of the Total Environment*](XXXX) and [*Treesearch*](XXXX). If you do not have a subscription to the journal or are having trouble accessing it, please contact Kelly Suttles directly for a copy of the pre-print.

## Data & File Overview ##
This repository is organized into three main directories: observed\_data, simulated\_data, and analysis\_scripts.

### observed\_data directory ###
The observed\_data directory contains all historic observed climate, land cover, and streamflow data used in this study that required pre-processing or were needed for analysis. These data were all collected from public databases as explained by Suttles et al. (2018) but are included for convenience. The observed\_data directory includes three subdirectories: climate, landcover\_1992, and streamflow.

#### climate subdirectory ####
Directory name: climate <br>
Short description: This subdirectory contains the observed climate data text files required to run SWAT for the 1979-2008 period. It also includes the .shp file (within the climate\_stations\_shp directory) to display each climate station spatially. [include details on sim\_baseline\_pcp.xlsx and swat\_precip\_summary\_outlet\_1982-2002.xlsx files] See README file inside this subdirectory for further details on its contents.

**File List**<br>
Filename: \*.txt files <br>
Short description: These text files include observed daily precipitation, temperature, solar radiation, relative humidity, and wind speed for the study watershed. These data are all formatted based on SWAT requirements. See README file inside this subdirectory for further details on its contents.<br>

Filename: sim\_baseline\_pcp.xlsx <br>
Short description: This text file includes XXXX <br>

Filename: swat\_precip\_summary\_outlet\_1982-2002.xlsx <br>
Short description: This text file includes XXXX <br>

Filename: swat\_precip\_summary\_outlet\_1982-2002.xlsx <br>
Short description: This text file includes XXXX <br>

**Relationship Between Files**<br>
The text files listed above are all required for XXXX.

**Raw Data**<br>
This repository does not contain any raw data as everything was automatically formatted for use with SWAT.<br>

#### landcover subdirectory ####
Directory name: landcover\_1992 <br>
Short description: This subdirectory contains the observed landcover data text files required to run SWAT for the 1979-2008 period. [add more detail about subsubdirectories]

**File List**<br>
Filename: LC9276457208.tif files <br>
Short description: [add description here] <br>

Filename: [projected] <br>
Short description: [add description here] <br>

**Relationship Between Files**<br>
The text files listed above are all required for XXXX.

**Raw Data**<br>
This repository does not contain any raw data as everything was automatically formatted for use with SWAT.<br>

#### streamflow subdirectory ####
Directory name: streamflow <br>
Short description: This subdirectory contains the observed daily streamflow data for three USGS gages used in this study: (1) Yadkin River in Enon, NC (USGS gage #02115360), (2) Yadkin River at Yadkin College (USGS gage #02116500), and (3) Pee Dee River (USGS gage #02129000). [add more detail about subsubdirectories, do we need a readme in the folder too?]

**File List**<br>
Filename: USGS\_02115360\_yadkin\_enon.xlsx files <br>
Short description: [add description here] <br>

Filename: USGS\_02116500\_yadkin\_college.xlsx <br>
Short description: [add description here] <br>

Filename: USGS\_02129000\_pee\_dee.xlsx <br>
Short description: [add description here] <br>

**Relationship Between Files**<br>
The text files listed above are all required for XXXX.

**Raw Data**<br>
This repository does not contain any raw data as everything was automatically formatted for use with SWAT.<br>

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



**People involved with sample collection, processing, analysis and/or submission:**<br>
See the associated *Science of the Total Environment* journal article for a full description of author contributions and acknowledgments.

## Data-Specific Information For: XXXX.txt ##

**Variable list**<br>
'HoursFromStart' - Hours from start of experiment.<br>

**Missing data codes**<br>
NA - Data was below detection limit of machine.

