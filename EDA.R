install.packages("readr")
library(readr)
<<<<<<< HEAD
library()


TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")


plot <- TrafficCount %>% ggplot(aes(x=COUNTY) + geom_hist()
plotly(plot)


=======
library(dplyr)
library(ggplot2)
library(rjson)
library(jsonlite)
library(leaflet)
library(RCurl)

TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")

table(TrafficCount$COUNTY)
>>>>>>> b6708c199b31027b40c64829ee1abff8b8d49ca4
TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")

TrafficCount

str(TrafficCount)

ggplot(TrafficCount, aes(x = COUNTY, y = PassCars)) + 
  geom_bar()


m <- leaflet() %>% 
  addTiles()  %>% 
  addMarkers(lat = TrafficCount$YCOORD[1:5] , lng = TrafficCount$XCOORD[1:5], 
                   label = TrafficCount$TotVol[1:5])
m



heatMap <- leaflet(data = TrafficCount) %>% 
  addTiles() %>%
  addHeatmap(lat = TrafficCount$YCOORD , lng = TrafficCount$XCOORD, intensity = TrafficCount$TotVol) 
heatMap



TrafficCount$DIR <- substring(TrafficCount$Sta_Dir, nchar(TrafficCount$Sta_Dir))

ABC <- TrafficCount %>% filter(COUNTY == "Prince George's County" & DIR =='W')

ABC <- TrafficCount %>% group_by(COUNTY) %>% 
  summarise(GroupedVolume = sum(TotVol))

ggplot(ABC, aes(x = COUNTY, y = GroupedVolume/1000)) +
  geom_bar(stat = "identity")


DEF <- TrafficCount %>% group_by(DIR) %>% summarise(GroupedVolume  = sum(TotVol))

ggplot(DEF, aes(x = DIR, y = GroupedVolume)) + geom_bar( stat = "identity")


LMO <- TrafficCount %>% filter(COUNTY == "District of Columbia")


m <- leaflet(LMO) %>% 
  addTiles()  %>% 
  addMarkers(lat = LMO$YCOORD , lng = LMO$XCOORD)
m

DistanceStations$DIR <- TrafficCount$DIR

  
icons <- awesomeIcons(
  icon = 'car-outline',
  iconColor = 'black',
  library = 'ion',
)

icons <- awesomeIcons(
  icon = "car-outline",
  #iconColor = 'black',
  library = 'ion',
)


