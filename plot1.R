
data <- read.table("household_power_consumption.txt", sep=";", header=TRUE, colClasses = "character")
data$Date <- as.Date(as.character(data$Date),"%d/%m/%Y")
newdata <- subset(data, Date >= as.Date("2007-02-01") & Date <= as.Date("2007-02-02")) 
png(file="plot1.png",width = 480, height = 480)
hist(as.numeric(newdata$Global_active_power), main="Global Active Power", xlab = "Global Active Power (kilowatts)", col="red")  
dev.off()
