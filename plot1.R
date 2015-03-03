# Assignment one plot1.R ExData_Plotting1
# Libraries use base
# set working directory to location of file
# file of data from https://github.com/rdpeng/ExData_Plotting1
# read whole file (133 mb is RAM usage)
e_data <- read.table("../data/household_power_consumption.txt", header = TRUE,
                   sep = ";", na.strings = "?")
# set standraized date with as.Date to data$Date column
e_data$Date <- as.Date(e_data$Date, format = "%d/%m/%Y")
# subset with Date and use | for or for 02/01/2007 and 02/02/2007
e_data <- subset(e_data, Date == '2007-02-01' | Date == '2007-02-02')

# Plot #1
png(file = "./figure/plot1.png", # file to be saved
    width = 480, height = 480, # dimensions
    pointsize = 10)
hist(e_data$Global_active_power,
     main = "Global Active Power",
     xlab = "Frequency",
     ylab = "Global Active Power (kilowatts)",
     col = "red1")
dev.off() # closeing for png