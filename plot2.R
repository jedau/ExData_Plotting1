## plot2.R
##  This file prints a graph of the Global Active Power (kilowatts)

# Make sure this file is in the same directory as preprocess.R
source("preprocess.R")

png(filename = "plot2.png", width = 480, height = 480)
plot(data$DateTime, data$Global_active_power, type = "l",
     col = "black", xlab = "", ylab = "Global Active Power (kilowatts)")
dev.off()