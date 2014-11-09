# Assignment one plot1.R ExData_Plotting1
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

# Plot #1
hist(data$Global_active_power,
     main = "Global Active Power",
     xlab = "Frequency",
     ylab = "Global Active Power (kilowatts)",
     col = "red1")