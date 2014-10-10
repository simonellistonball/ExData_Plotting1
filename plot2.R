#source('load_and_clean.R')

par(mfrow=c(1,1), cex=0.8)
plot(d$Global_active_power ~ d$t, type="l", xlab="", ylab="Global Active Power (kilowatts)")