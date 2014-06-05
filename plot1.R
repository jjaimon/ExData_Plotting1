#
# Course Project 1: Exploratory Data Analysis
# Plot 1. Histogram of Global Active Power
#

source("data.prep.R")

#
# Draw directly to the file
#
png(filename="plot1.png", width=480, height=480, units = "px")
#
# Draw a histogram as mentioned in the assignment
#
hist(as.numeric(as.character(data.df$Global_active_power)), col="Red", xlab = "Global Active Power (kilowatts)", main="Global Active Power")

dev.off()