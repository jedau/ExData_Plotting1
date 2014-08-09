## preprocess.R
##  This file cleans the processes the raw data and stores the necessary records

# Run this to download the file
if (!file.exists("household_power_consumption.txt")) {
    download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
                  destfile="data.zip",
                  method="curl")
    unzip("data.zip")  
}

# Your working directory should be the same with "household_power_consumption.txt".
# If not, setwd("path/to/directory") to that directory.
data <- read.table("household_power_consumption.txt", sep = ";", nrows = 2075260,
                   header = TRUE, quote= "", strip.white=TRUE, 
                   stringsAsFactors = FALSE, na.strings= "?")
data <- subset(data, (data$Date == "1/2/2007" | data$Date== "2/2/2007"))
data$DateTime <- as.POSIXct(paste(data$Date, data$Time, sep=" "), 
                            format="%d/%m/%Y %H:%M:%S")
row.names(data) <- NULL