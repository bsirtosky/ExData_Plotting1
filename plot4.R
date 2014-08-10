## Course:      Exploratory Data Analysis
## Project:     Project 1

## Filename:    plot4.R
## Desc:        Generates plot 4 for Project 1.
## Author:      Bryan Sirtosky
## Date:        8/8/14

## Function:    createPlot4()
## Desc:        Generates two by two grid of four line plots from data from 
##              household_power_consumption.txt file for period 2/1/07-2/2/07.
##              The grid of line plots is saved as a png file with a transparent
##              background and a width and height of 480px.
## Dependency:  Uses getData() from getData.R file.

createPlot4 <- function () {
    data <- getData()
    
    png(file = "plot4.png", bg = "transparent", width = 480, height = 480,
        units = "px")
    par(mfrow = c(2, 2))
    with(data, plot(Time, Global_active_power, type = "l", xlab = "",
                    ylab = "Global Active Power"))
    with(data, plot(Time, Voltage, type = "l", xlab = "datetime",
                    ylab = "Voltage"))
    with(data, plot(Time, Sub_metering_1, type = "l", col = "black", 
                    xlab = "", ylab = "Energy sub metering"), type = "n")
    with(data, lines(Time, Sub_metering_2, col = "red"))
    with(data, lines(Time, Sub_metering_3, col = "blue"))
    legend("topright", col = c("black", "red", "blue"), lty = "solid", bty = "n",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    with(data, plot(Time, Global_reactive_power, type = "l", xlab = "datetime",
                    ylab = "Global_reactive_power"))
    dev.off()
}
