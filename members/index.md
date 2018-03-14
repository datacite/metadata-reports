---
title: "DataCite Members"
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
# install.packages("anytime")
# install.packages("lubridate")
# install.packages("ggplot2")
# install.packages("knitr")
# devtools::install_github("ropensci/solr")
# devtools::install_github("ropensci/rdatacite")

library('rdatacite')
library('anytime')
library('lubridate')
library('ggplot2')
library('knitr')
library('dplyr')
library('plyr')
library('scales')
library('waffle')
library('RColorBrewer')
```



```r
input.name <- "members-2018-03-06.csv"

# get list of members from CSV file
members <- read.csv(input.name, stringsAsFactors=FALSE, header=TRUE, sep=";")
members$date <- as.Date(members$date, format="%d.%m.%y")
members$year <- format(as.Date(members$date, format="%d/%m/%Y"),"%Y")
members <- members[order(members$date),]
members$c <- 1
```


```r
ggplot(members, aes(x = date, y = cumsum(c))) + 
  geom_line(size = 0.5, color="#139dea") +
  ggtitle("DataCite Membership Growth") +
  labs(caption = "As of 13 March 2018") +
  xlab("Date Joined") + 
  ylab("Total") +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold"),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-3-1.pdf)<!-- -->


```r
members1 <- subset(members, date >= "2016-01-01") 
ggplot(members1, aes(x = date, y = cumsum(c), color = factor(region))) + 
  geom_point() +
  ggtitle("DataCite Membership Growth by Region") +
  labs(caption = "New members since Jan 2016. As of 13 March 2018") +
  xlab("Date Joined") + 
  ylab("Total") +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  legend.title = element_blank(),
  legend.position=c(.2, .75),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-4-1.pdf)<!-- -->


```r
ggplot(members, aes(x = date, y = clients, color = factor(region))) + 
  geom_point(aes(size = dois)) +
  ggtitle("DataCite Members: Clients, DOIs and Regions") +
  labs(caption = "As of 13 March 2018") +
  xlab("Date Joined") + 
  ylab("Clients") +
  scale_size_area(labels = comma, breaks = c(0, 10000, 100000, 1000000)) +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  legend.title = element_blank(),
  legend.position=c("right"),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-5-1.pdf)<!-- -->


```r
ggplot(members, aes(x = clients, y = dois)) + 
  geom_point(color="#139dea") +
  ggtitle("DataCite Membership Tiers") +
  labs(caption = "As of 13 March 2018") +
  xlab("Clients") + 
  ylab("DOIs") +
  scale_x_sqrt(labels = comma, breaks = c(0, 5, 10, 50)) +
  scale_y_sqrt(labels = comma, breaks = c(0, 10000, 100000, 1000000)) +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  legend.title = element_blank(),
  legend.position=c("right"),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-6-1.pdf)<!-- -->


```r
ggplot(members, aes(x = factor(1), fill = factor(type))) + 
  geom_bar() +
  coord_polar(theta = "y") +
  facet_wrap( ~ year, ncol=5) +
  scale_fill_brewer(palette="RdYlGn") + 
  ggtitle("DataCite Membership Types") +
  labs(caption = "As of 13 March 2018") +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  legend.title = element_blank(),
  axis.title.x = element_blank(),
  axis.title.y = element_blank(),
  axis.text = element_blank(),
  axis.ticks = element_blank(),
  panel.grid  = element_blank())
```

![](figure/unnamed-chunk-7-1.pdf)<!-- -->


```r
members4 <- subset(members, region == "Americas") 
ggplot(members4, aes(x = date, y = cumsum(c))) + 
  geom_line(size = 0.5, color="#139dea") +
  ggtitle("DataCite Membership from North America over Time", subtitle = "13 March 2018") +
  xlab("Date Joined") + 
  ylab("Total") +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-8-1.pdf)<!-- -->


```r
members4 <- subset(members, region == "Europe") 
ggplot(members4, aes(x = date, y = cumsum(c))) + 
  geom_line(size = 0.5, color="#139dea") +
  ggtitle("DataCite Membership from Europe over Time", subtitle = "13 March 2018") +
  xlab("Date Joined") + 
  ylab("Total") +
  theme(panel.background = element_rect(fill = "white"),
  plot.title = element_text(size=16, face="bold", hjust=0.5),
  axis.line = element_line(colour = "grey"),
  axis.title.x = element_text(hjust=1),
  axis.title.y = element_text(angle=0, vjust=1)) 
```

![](figure/unnamed-chunk-9-1.pdf)<!-- -->


```r
type_count <- count(members, 'type')
types <- c(`Academic Institution (33)`= 33, `Research Institution (16)` = 16, `National Institution (15)` = 15, `Government Agency (6)` = 6, `Professional Society (1)` = 1, `Service Provider (12)` = 12)
waffle(types, rows=5, title = 'DataCite Membership Types', colors=brewer.pal(6,"RdYlGn")) +
theme(plot.title = element_text(size=18, face="bold", hjust=0))
```

![](figure/unnamed-chunk-10-1.pdf)<!-- -->


```r
members5 <- subset(members, date <= "2010-12-31") 
region_count_2010 <- count(members5, 'region')
types <- c(`Europe (10)` = 10, `Americas (6)`= 6, `Asia and Pacific (2)` = 2, `Middle East and Africa (0)` = 0)
waffle(types, rows=5, title = 'DataCite Membership by Region 2010', colors=brewer.pal(4,"RdYlGn"), keep = TRUE) +
theme(plot.title = element_text(size=18, face="bold", hjust=0))
```

![](figure/unnamed-chunk-11-1.pdf)<!-- -->


```r
members6 <- subset(members, date <= "2014-12-31") 
region_count_2014 <- count(members6, 'region')
types <- c(`Europe (16)` = 16, `Americas (7)`= 7, `Asia and Pacific (5)` = 5, `Middle East and Africa (1)` = 1)
waffle(types, rows=5, title = 'DataCite Membership by Region 2014', colors=brewer.pal(4,"RdYlGn"), keep = TRUE) +
theme(plot.title = element_text(size=18, face="bold", hjust=0))
```

![](figure/unnamed-chunk-12-1.pdf)<!-- -->


```r
region_count <- count(members, 'region')
types <- c(`Europe (38)` = 38, `Americas (35)`= 35, `Asia and Pacific (7)` = 7, `Middle East and Africa (3)` = 3)
waffle(types, rows=5, title = 'DataCite Membership by Region 2018', colors=brewer.pal(4,"RdYlGn"), keep = TRUE) +
theme(plot.title = element_text(size=18, face="bold", hjust=0))
```

![](figure/unnamed-chunk-13-1.pdf)<!-- -->
