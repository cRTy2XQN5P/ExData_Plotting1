par(mfcol=c(2,2))
source("plot2.R")
source("plot3.R")
plot(dataTest$DateTime, dataTest$Voltage, ylab="Voltage", xlab="datetime", type="l")
plot(dataTest$DateTime, dataTest$Global_reactive_power, ylab="Global_reactive_power", xlab="datetime", type="l")