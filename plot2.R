## Course:      Exploratory Data Analysis
## Project:     Project 1

## Filename:    plot2.R
## Desc:        Generates plot 2 for Project 1.
## Author:      Bryan Sirtosky
## Date:        8/8/14

## Function:    createPlot2()
## Desc:        Generates a line plot for Global Active Power from data from 
##              household_power_consumption.txt file for period 2/1/07-2/2/07.
##              The x-axis displays the weekday (Thu, Fri, Sat).  The line plot
##              is saved as a png file with a transparent background and a width
##              and height of 480px.
## Dependency:  Uses getData() from getData.R file.

createPlot2 <- function () {
    data <- getData()
    
    png(file = "plot2.png", bg = "transparent", width = 480, height = 480,
        units = "px")
    with(data, plot(Time, Global_active_power, type = "l", xlab = "",
                    ylab = "Global Active Power (kilowatts)"))
    dev.off()
}
