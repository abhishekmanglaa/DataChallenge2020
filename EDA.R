install.packages("readr")
library(readr)
library(dplyr)
library(ggplot2)
library(rjson)
library(jsonlite)
library(leaflet)
library(RCurl)

TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")

table(TrafficCount$COUNTY)
TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")

TrafficCount

str(TrafficCount)

ggplot(TrafficCount, aes(x = COUNTY, y = PassCars)) + 
  geom_bar()


m <- leaflet() %>% 
  addTiles()  %>% 
  addCircleMarkers(lat = TrafficCount$YCOORD[1] , lng = TrafficCount$XCOORD[1])
m
