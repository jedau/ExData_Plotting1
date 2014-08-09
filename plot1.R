## plot1.R
##  This file prints a histogram of the frequency of Global Active Power (kilowatts)

# Make sure this file is in the same directory as preprocess.R
source("preprocess.R")

png(filename="plot1.png", width=480, height=480)
hist(data$Global_active_power, col = "red", 
     xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()