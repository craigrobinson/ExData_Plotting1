## Creating plot1 from dataset
##  Placing the data file in my .gitignore so it isn't included in commit. File too large.
##  For this to execute, the household_power_consumption.txt must be in the working directory
data <- read.table("household_power_consumption.txt", sep=";", header=T, na.strings="?")
myDates <- as.Date(c("2007-02-01","2007-02-02"))
subdata <- subset(data, as.Date(data$Date,"%d/%m/%Y") %in% myDates, select="Global_active_power")
plotme <- subdata$Global_active_power
png(file="plot1.png",width=480,height=480)
# Background Red
# Title = Global Active Power
# xaxis = Global Active Power (kilowatts)
# Construct the plot and save it to a PNG file with a width of 480 pixels and a height of 480 pixels.
hist(plotme, main="Global Active Power", col="red", xlab="Global Active Power (kilowatts)")
dev.off()