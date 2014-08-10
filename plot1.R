## Course:      Exploratory Data Analysis
## Project:     Project 1

## Filename:    plot1.R
## Desc:        Generates plot 1 for Project 1.
## Author:      Bryan Sirtosky
## Date:        8/8/14

## Function:    createPlot1()
## Desc:        Generates a red histogram for Global Active Power from data from 
##              household_power_consumption.txt file for period 2/1/07-2/2/07.
##              The histogram is saved as a png file with a transparent background
##              and a width and height of 480px.
## Dependency:  Uses getData() from getData.R file.

createPlot1 <- function () {
    data <- getData()

    png(file = "plot1.png", bg = "transparent", width = 480, height = 480,
        units = "px")
    hist(data$Global_active_power, col = "red", main = "Global Active Power", 
         xlab = "Global Active Power (kilowatts)")
    dev.off()
}
