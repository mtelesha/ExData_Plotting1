# Assignment one plot3.R ExData_Plotting-3
# Libraries use base
# set working directory to location of file
# file of data from https://github.com/rdpeng/ExData_Plotting1
# read whole file (133 mb is RAM usage)
e_data <- read.table("../e_data/household_power_consumption.txt", header = TRUE,
                   sep = ";", na.strings = "?")
# set standraized date with as.Date to data$Date column
e_data$Date <- as.Date(e_data$Date, format = "%d/%m/%Y")
# subset with Date and use | for or for 02/01/2007 and 02/02/2007
e_data <- subset(e_data, Date == '2007-02-01' | Date == '2007-02-02')
# add day column to e_data
e_data$day <- strftime(e_data$Date, format = "%A")

# Plot #3
png(file = "./figure/plot3.png", # file to be saved
    width = 480, height = 480, # dimensions
    pointsize = 10)
plot.ts(e_data$Sub_metering_1,, col = "black",
        axes = FALSE,
        ylab = "Energy sub metering",
        xlab = NULL)
lines(e_data$Sub_metering_2, col = "red")
lines(e_data$Sub_metering_3, col = "blue")
# create the box
box()
# create the legend
legend("topright", colnames(e_data[7:9]), # position the legended in top right
       col = c("black", "red", "blue"), # give the legend text
       lty = c(1,1))
# create the axis on left
axis(side = 2) # sets the axis on bottom
# create bottom axis
axis(side = 1, at = c(0, 1441, 2880),
     labels = c("Thur", "Fri", "Sat"))
dev.off() # closeing for png
