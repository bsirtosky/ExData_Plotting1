## Course:      Exploratory Data Analysis
## Project:     Project 1

## Filename:    plot3.R
## Desc:        Generates plot 3 for Project 1.
## Author:      Bryan Sirtosky
## Date:        8/8/14

## Function:    createPlot3()
## Desc:        Generates a line plot for three types of Energy sub metering from  
##              data from household_power_consumption.txt file for period 2/1/07-2/2/07.
##              The x-axis displays the weekday (Thu, Fri, Sat).  The line plot
##              is saved as a png file with a transparent background and a width
##              and height of 480px.
## Dependency:  Uses getData() from getData.R file.

createPlot3 <- function () {
    data <- getData()
    
    png(file = "plot3.png", bg = "transparent", width = 480, height = 480,
        units = "px")
    with(data, plot(Time, Sub_metering_1, type = "l", col = "black", 
                    xlab = "", ylab = "Energy sub metering"), type = "n")
    with(data, lines(Time, Sub_metering_2, col = "red"))
    with(data, lines(Time, Sub_metering_3, col = "blue"))
    legend("topright", col = c("black", "red", "blue"), lty = "solid",
           legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
    dev.off()
}
