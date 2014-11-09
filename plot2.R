# Assignment one plot2.R ExData_Plotting-2
# Libraries use base
# set working directory
setwd("C:/Users/Marc/Personal_BTS/Coursea/Exploratory Data Analysis/Assignment_1/ExData_Plotting1/")
# read whole file (133 mb is RAM usage)
data <- read.table("../data/household_power_consumption.txt", header = TRUE,
                   sep = ";", na.strings = "?")
# set standraized date with as.Date to data$Date column
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
# subset with Date and use | for or for 02/01/2007 and 02/02/2007
data <- subset(data, Date == '2007-02-01' | Date == '2007-02-02')
# add day column to data
data$day <- strftime(data$Date, format = "%A")

# Plot #2
plot.ts(data$Global_active_power,
        axes = FALSE,
        ylab = "Global Active Power (kilowatts)",
        xlab = NULL)
# create the box
box()
# create the axis on left
axis(side = 2) # sets the axis on bottom
# create bottom axis
axis(side = 1, at = c(0, 1441, 2880),
     labels = c("Thur", "Fri", "Sat"))