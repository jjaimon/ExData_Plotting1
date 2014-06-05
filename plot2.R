#
# Course Project 1: Exploratory Data Analysis
# Plot 1. Histogram of Global Active Power
#

source("data.prep.R")

#
# Draw directly to the file
#
png(filename="plot2.png", width=480, height=480, units = "px")
#
# Draw a line chart
#
plot(data.df$DTime, data.df$Global_active_power, type="n", ylab="Global Active Power (kilowatts)", xlab="")
lines(data.df$DTime, data.df$Global_active_power)

dev.off()