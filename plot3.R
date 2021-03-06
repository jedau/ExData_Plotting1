## plot3.R
##  This file prints a graph of Sub_metering_1, Sub_metering_2 and Sub_metering_3

# Make sure this file is in the same directory as preprocess.R
source("preprocess.R")

png(filename = "plot3.png", width = 480, height = 480)
plot(data$DateTime, data$Sub_metering_1, type = "l",
     col = "black", xlab = "", ylab = "Energy sub metering")
lines(data$DateTime, data$Sub_metering_2, col = "red")
lines(data$DateTime, data$Sub_metering_3, col = "blue")
legend("topright", lwd = 1, lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()