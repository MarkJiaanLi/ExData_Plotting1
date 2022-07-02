data<-read.table("household_power_consumption.txt",skip=1,sep=";")
names(data)<-c("Date","Time", "Global_active_power", "Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")

library(lubridate) ##To use the dmy() function and parse the dates
data$Date<-dmy(data$Date)
subdata <- subset(data, data$Date == "2007-02-01" | data$Date == "2007-02-02")
hist(as.numeric(as.character(subdata$Global_active_power)), col="red", main="Global Active Power",xlab="Global Active Power(kilowatts)")
