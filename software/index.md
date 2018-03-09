---
title: "DOI Registrations for Software"
output:
  html_document:
    keep_md: yes
  pdf_document:
    toc: yes
---



Install the required packages (see [here](https://github.com/ropensci/rdatacite) for more information).


```r
options(stringsAsFactors = FALSE)

# install required packages
# install.packages("lubridate")
# install.packages("ggplot2")
# install.packages("knitr")
# devtools::install_github("ropensci/solr")
# devtools::install_github("ropensci/rdatacite")

library('rdatacite')
library('lubridate')
library('ggplot2')
library('knitr')
```

How many DOIs for software have been registered so far, and where?


```r
dois <- dc_facet(q = "resourceTypeGeneral:Software AND !datacentre_symbol:CERN.ZENODO AND created:[2011-01-01T00:00:00Z TO 2018-03-08T23:59:59Z]",facet.field = 'datacentre_facet', facet.sort = 'count', facet.limit = 10)
dois <- dois$facet_fields$datacentre_facet
kable(dois, format = "markdown")
```



|term                                                                                       |value |
|:------------------------------------------------------------------------------------------|:-----|
|CERN.ZENODO - ZENODO - Research. Shared.                                                   |41345 |
|FIGSHARE.ARS - figshare Academic Research System                                           |4225  |
|PURDUE.NCIB - National Cancer Institute, Bioconductor                                      |2769  |
|PURDUE.EZID - Purdue University                                                            |2463  |
|OSTI.DOE - DOE Generic                                                                     |736   |
|INIST.INRA - Institut National de Recherche Agronomique                                    |223   |
|OCEAN.OCEAN - Code Ocean                                                                   |206   |
|CRUI.INFNCNAF - Istituto Nazionale di Fisica Nucleare. Centro Nazionale Analisi Fotogrammi |190   |
|CDL.UCI - UC Irvine Library                                                                |120   |
|ETHZ.DA-RD - ETHZ Data Archive - Research Data                                             |88    |

Most DOIs for software have been registered at Zenodo. How did these numbers change over time?

We can start by looking at the [Zenodo/Github integration](https://guides.github.com/activities/citable-code/), where users can archive a Github repository in the Zenodo data repository. 


```r
last_month <- ceiling_date(now() - months(1), "month")
last_month <- strftime(last_month, "UTC", format = "%FT%TZ")
dois <- dc_facet(q = 'resourceTypeGeneral:Software', facet.date = 'created', facet.date.start = "2011-01-01T00:00:00Z", facet.date.end = last_month, facet.date.gap = "+1MONTH")
dois <- dois$facet_dates$created
dois$date <- as.Date(dois$date)
```


```r
ggplot(dois, aes(x=date, y=value)) +
  ggtitle("DOIs for Software created by Month") +
  geom_bar(stat="identity") + 
  scale_x_date("Year") +
  scale_y_continuous("DOI names", limits=c(0,5000)) +
  theme(panel.background = element_rect(fill = "white"),
        axis.line = element_line(colour = "grey"),
        axis.title.x = element_text(hjust=1),
        axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-4-1.png)<!-- -->

The integration was launched in 2014 and we can see a nice correlation with a [March 2014 blog post](https://github.com/blog/1840-improving-github-for-science) by Arfon Smith on the Github blog, describing the integration work.

## Zenodo

Most of these DOIs for software are registered by Zenodo. 


```r
last_month <- ceiling_date(now() - months(1), "month")
last_month <- strftime(last_month, "UTC", format = "%FT%TZ")
dois <- dc_facet(q = 'datacentre_symbol:CERN.ZENODO AND resourceTypeGeneral:Software', facet.date = 'created', facet.date.start = "2011-01-01T00:00:00Z", facet.date.end = last_month, facet.date.gap = "+1MONTH")
dois <- dois$facet_dates$created
dois$date <- as.Date(dois$date)
```


```r
ggplot(dois, aes(x=date, y=value)) +
  ggtitle("DOIs for Software created by Month at Zenodo") +
  geom_bar(stat="identity") + 
  scale_x_date("Year") +
  scale_y_continuous("DOI names", limits=c(0,5000)) +
  theme(panel.background = element_rect(fill = "white"),
        axis.line = element_line(colour = "grey"),
        axis.title.x = element_text(hjust=1),
        axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-6-1.png)<!-- -->

What happened with DOI registration for software outside of Zenodo? For example Figshare and Bioconductor?


```r
last_month <- ceiling_date(now() - months(1), "month")
last_month <- strftime(last_month, "UTC", format = "%FT%TZ")
dois <- dc_facet(q = 'datacentre_symbol:FIGSHARE.ARS AND resourceTypeGeneral:Software', facet.date = 'created', facet.date.start = "2011-01-01T00:00:00Z", facet.date.end = last_month, facet.date.gap = "+1MONTH")
dois <- dois$facet_dates$created
dois$date <- as.Date(dois$date)
```


```r
ggplot(dois, aes(x=date, y=value)) +
  ggtitle("DOIs for Software created by Month at Figshare") +
  geom_bar(stat="identity") + 
  scale_x_date("Year") +
  scale_y_continuous("DOI names", limits=c(0,5000)) +
  theme(panel.background = element_rect(fill = "white"),
        axis.line = element_line(colour = "grey"),
        axis.title.x = element_text(hjust=1),
        axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-8-1.png)<!-- -->


```r
last_month <- ceiling_date(now() - months(1), "month")
last_month <- strftime(last_month, "UTC", format = "%FT%TZ")
dois <- dc_facet(q = 'datacentre_symbol:PURDUE.NCIB AND resourceTypeGeneral:Software', facet.date = 'created', facet.date.start = "2011-01-01T00:00:00Z", facet.date.end = last_month, facet.date.gap = "+1MONTH")
dois <- dois$facet_dates$created
dois$date <- as.Date(dois$date)
```


```r
ggplot(dois, aes(x=date, y=value)) +
  ggtitle("DOIs for Software created by Month at Bioconductor") +
  geom_bar(stat="identity") + 
  scale_x_date("Year") +
  scale_y_continuous("DOI names", limits=c(0,5000)) +
  theme(panel.background = element_rect(fill = "white"),
        axis.line = element_line(colour = "grey"),
        axis.title.x = element_text(hjust=1),
        axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-10-1.png)<!-- -->

And who was the first registering software using DOIs? We can look at who registered DOIs for software before 2014:


```r
dois <- dc_facet(q = "resourceTypeGeneral:Software AND !datacentre_symbol:CERN.ZENODO AND created:[2011-01-01T00:00:00Z TO 2013-12-31T23:59:59Z]",facet.field = 'datacentre_facet', facet.sort = 'count', facet.limit = 10)
dois <- dois$facet_fields$datacentre_facet
kable(dois, format = "markdown")
```



|term                                                              |value |
|:-----------------------------------------------------------------|:-----|
|PURDUE.EZID - Purdue University                                   |1319  |
|CERN.ZENODO - ZENODO - Research. Shared.                          |14    |
|FIGSHARE.ARS - figshare Academic Research System                  |10    |
|CDL.UCLAEEB - UCLA Department of Ecology and Evolutionary Biology |4     |
|CDL.USGS - USGS Core Science Analytics and Synthesis (CSAS)       |3     |
|BL.STFC - Science and Technology Facilities Council               |2     |
|TIB.IPK - IPK Gatersleben                                         |2     |
|CDL.NCAR - National Center for Atmospheric Research (NCAR)        |1     |
|CDL.UWESCI - University of Washington eScience Institute          |1     |
|DK.AAU - Aalborg University Library                               |1     |


This is clearly Purdue, 
