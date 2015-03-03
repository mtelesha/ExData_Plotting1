# Assignment one plot2.R ExData_Plotting-2
# Libraries use base
# set working directory to location of file
# file of data from https://github.com/rdpeng/ExData_Plotting1
# read whole file (133 mb is RAM usage)
e_data <- read.table("../data/household_power_consumption.txt", header = TRUE,
                   sep = ";", na.strings = "?")
# set standraized date with as.Date to e_data$Date column
e_data$Date <- as.Date(e_data$Date, format = "%d/%m/%Y")
# subset with Date and use | for or for 02/01/2007 and 02/02/2007
e_data <- subset(e_data, Date == '2007-02-01' | Date == '2007-02-02')
# add day column to data
e_data$day <- strftime(e_data$Date, format = "%A")

# Plot #2
png(file = "./figure/plot2.png", # file to be saved
    width = 480, height = 480, # dimensions
    pointsize = 10)
plot.ts(e_data$Global_active_power,
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
dev.off() # closeing for png
