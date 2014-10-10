#source('load_and_clean.R')

par(mfrow=c(1,1))
hist(x = d$Global_active_power, col="red", main = "Global Active Power", xlab="Global Active Power (kilowatts)")
