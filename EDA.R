install.packages("readr")
library(readr)
library()


TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")


plot <- TrafficCount %>% ggplot(aes(x=COUNTY) + geom_hist()
plotly(plot)


TrafficCount <- read_csv("Data/Data_Level3_MWCOG_RegionalTrafficCount.csv")

TrafficCount

str(TrafficCount)

