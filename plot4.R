#
# Course Project 1: Exploratory Data Analysis
# Plot 1. Histogram of Global Active Power
#

source("data.prep.R")

#
# Draw directly to the file
#
png(filename="plot4.png", width=480, height=480, units = "px")
#
# Draw a line chart
#
par(mfrow=c(2,2))
#
# Plot 1
# 
plot(data.df$DTime, data.df$Global_active_power, type="n", ylab="Global Active Power", xlab="")
lines(data.df$DTime, data.df$Global_active_power)

plot(data.df$DTime, data.df$Voltage, type="n", ylab="Voltage", xlab="datetime")
lines(data.df$DTime, data.df$Voltage)

plot(data.df$DTime, data.df$Sub_metering_1, type="n", ylab="Energy sub metering", xlab="")
lines(data.df$DTime, data.df$Sub_metering_1)
lines(data.df$DTime, data.df$Sub_metering_2, col="red")
lines(data.df$DTime, data.df$Sub_metering_3, col="blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),   
       lty=c(1, 1, 1),   
       col=c("black", "red", "blue"),  
       pt.cex=1.0,  
       cex=0.7, bty="n")

plot(data.df$DTime, data.df$Global_reactive_power, type="n", ylab="Global_reactive_power", xlab="datetime")
lines(data.df$DTime, data.df$Global_reactive_power)

dev.off()

