# Download and load the data
tempZipFile <- "data.zip"
url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, tempZipFile, "curl")
data <- read.table(unz(temp, "household_power_consumption.txt"), header = T, sep=";", na.strings = "?")
unlink(temp)

# Subset data to desired dates; add datetime column
data$DateTime <- paste(data$Date, data$Time)
data$Date <- as.Date(data$Date, "%d/%m/%Y")
data <- subset(data, subset = (data$Date == as.Date("2007-02-01") | data$Date == as.Date("2007-02-02")))
data$DateTime <- strptime(data$DateTime, "%d/%m/%Y %H:%M:%S")
    
# Create first plot
png("plot1.png")
source("plot1.R")
dev.off()

# Create second plot
png("plot2.png")
source("plot2.R")
dev.off()

# Create third plot
png("plot3.png")
source("plot3.R")
dev.off()

# Create fourth plot
png("plot4.png")
source("plot4.R")
dev.off()