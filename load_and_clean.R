download <- function() {
  file_url<-'https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip'
  if (!file.exists('data/data.zip')) {
    download.file(file_url, method='curl', destfile = 'data/data.zip')
  }
  if (!file.exists('data/household_power_consumption.txt')) {
    unzip(zipfile = 'data/data.zip', exdir = 'data/')
  }
}

download()

library(lubridate)
library(dplyr)
# I've got plenty of RAM, so will be lazy filtering
d <- read.table(file = 'data/household_power_consumption.txt', 
                header=TRUE, sep = ';', na.strings = '?', 
                colClasses=c(rep('character', 2), rep('numeric', 7)))

# deal with missing values

# convert dates and filter out relevant rows
d$Date<-dmy(d$Date)
d %>% filter(Date >= ymd('2007-02-01') & Date <= ymd('2007-02-02')) -> d
# convert times
d$Time<-hms(d$Time)

# Add date and time for plots
d %>% mutate(t = Date + Time) ->d
