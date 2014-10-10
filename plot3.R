#source('load_and_clean.R')

par(mfrow=c(1,1), cex=0.8)

plot(d$Sub_metering_1 ~ d$t, col="black", type="l", xlab="", ylab="Energy sub metering")
lines(d$Sub_metering_2  ~ d$t, col="red")
lines(d$Sub_metering_3  ~ d$t, col="blue")
legend("topright", legend=c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), col=c('black','red','blue'), lty=1)
