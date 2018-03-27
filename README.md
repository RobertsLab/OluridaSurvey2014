_Ostrea lurida_ Survey - Puget Sound, WA - 2014
=====================

This repository includes raw data and R scripts used to generate figures for Heare et al. "[**Evidence of _Ostrea lurida_ population structure in Puget Sound, WA**](https://doi.org/10.1111/maec.12458)" 
```
Jake Emerson Heare, Brady Blake, Jonathan P Davis, Brent Vadopalas, Steven Roberts (2017) Evidence of Ostrea lurida Carpenter, 1864 population structure in Puget Sound, WA Marine Ecology 38:e12458 doi: 10.1111/maec.12458
```

Specific release that is supplemental to the manuscript - [![DOI](https://zenodo.org/badge/doi/10.5281/zenodo.30372.svg)](http://dx.doi.org/10.5281/zenodo.30372)

---


**To use these scripts:**

1. Download the entire repository to your local drive. 
2. Open scripts with R Studio
3. Replace path to working directory to reflect location on your machine.
4. Load any required packages not already installed. Packages needed to perform each script are included at the top of the page, simply uncomment if you do not already have the packages.
6. Highlight the commands and run. 

If everything works right you should create the figures in the manuscript!

---

## File Desciptions

**Files Contained in _data_ directory**

Brooder-size-2014.csv - raw size data for all observed brooding females summer 2014

Brood-numbers-all-2014.csv  -  brooder information collected over the summer

Dabob-temp-2014.csv  -  raw temperature data for Dabob

Drill-mortality-2013-2014.csv - Drill hole observations in Hood Canal for analysis

Fidalgo-temp-2014.csv  -  raw temperature data for Fidalgo Bay

Imagej-size-data-2013-2014.csv - raw size data from ImageJ for growth rate analysis

KMdataDabob.csv  -  survival data for Dabob

KMdataFid.csv  -  survival data for Fidalgo Bay

KMdataMan.csv  -  survival data for Manchester

KMdataOys.csv  -  survival data for Oyster Bay

Manchester-temp-2014.csv  - raw temperature data for Manchester

OysterBay-temp-2014.csv -  raw temperature data for Oyster Bay

Size-outplant-end-all-2013-14.csv  -  raw size data for outplant oysters and for Year 1 terminal sampling 
          
--- 
**Files Contained in _script_ directory**

Figure002-003-temperature-plots.R  -  R script to create minimum and maximum temperature graphs for all 4 sites combined.

Figure004ABCD-Kaplan-meier-stats-plot-all.R  -  R script to produce Kaplan meier figures.(Makes 4 individual figures that were combined to make Figure 4)

Figure005-006-007-014-sizedist-stats-plot.R  -   R script to create boxplots for size at all sites. Also creates dotplot for SL at brooding.

Figure008-009-010-growthrate-plots.R  -  R script to create growth rate line graphs.

Figure011-percbrood-temp-plot-OysterBay.R  - R script to generate percent brooding with temperature overlay for Oyster Bay (Does not produce second Y axis label. Must be manually added)
    
Figure012-percbrood-temp-plot-Fidalgo.R  - R script to generate percent brooding with temperature overlay for Fidalgo Bay (Does not produce second Y axis label. Must be manually added)
   
Figure013-percbrood-temp-plot-ClamBay.R  - R script to generate percent brooding with temperature overlay for Manchester (Does not produce second Y axis label. Must be manually added)

Oyster-drill-analysis.R  -  R script used to analyze drill mortality data.


    

    

