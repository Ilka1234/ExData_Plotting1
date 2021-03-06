> setwd("C:/Users/15476/Desktop/Coursera")
> data_full <- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')
> dataDates <- subset(data_full, Date %in% c("1/2/2007","2/2/2007"))
> dataDates$Date <- as.Date(dataDates$Date, format="%d/%m/%Y")
> hist(dataDates$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
> png("plot1.png", width=480, height=480)
> dev.off()