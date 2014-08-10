## Course:      Exploratory Data Analysis
## Project:     Project 1

## Filename:    getData.R
## Desc:        Gets data for plots for Project 1.
## Author:      Bryan Sirtosky
## Date:        8/8/14

## Function:    getData()
## Desc:        Gets data from file household_power_consumption.txt for
##              period 2/1/07-2/2/07 and returns it as a data frame.  
##              Assumes datafile is in the parent directory.

getData <- function () {
    datafile <- "../household_power_consumption.txt"
    
    header <- read.table(datafile, sep = ";", header = TRUE, nrows = 1)
    hd <- colnames(header)
    
    data <- read.table(datafile, sep = ";", header = TRUE, na.strings = "?", 
                       nrows = 2880, skip=66636)
    names(data) <- hd
    
    data$Time <- strptime(paste(data$Date,data$Time), "%d/%m/%Y %H:%M:%S")
    data$Date <- as.Date(data$Date, "%d/%m/%Y")
    
    data
}
