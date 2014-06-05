#
# Course Project 1: Exploratory Data Analysis
# Data Preparation
#

#
# Given data file name
#
data.file.name = "Data/household_power_consumption.txt"

#
# Read data from the file
#
data.df <- read.csv(data.file.name, sep=";")

#
# Set the date format
#
data.df$Date <- as.Date(data.df$Date, format="%d/%m/%Y")

#
# Subset the data for the given dates and convert the time
#
data.df <- subset(data.df, Date == "2007-02-01" | Date == "2007-02-02")

data.df$DTime <- strptime(paste(data.df$Date, data.df$Time), format="%Y-%m-%d %H:%M:%S")

#
# Convert other data fields to numeric
#

data.df$Global_active_power <- as.numeric(as.character(data.df$Global_active_power))
data.df$Global_reactive_power <- as.numeric(as.character(data.df$Global_reactive_power))
data.df$Voltage <- as.numeric(as.character(data.df$Voltage))
data.df$Sub_metering_1 <- as.numeric(as.character(data.df$Sub_metering_1))
data.df$Sub_metering_2 <- as.numeric(as.character(data.df$Sub_metering_2))
data.df$Sub_metering_3 <- as.numeric(as.character(data.df$Sub_metering_3))

