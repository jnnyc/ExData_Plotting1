power <- read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
power$Date<-as.Date(power$Date,"%d/%m/%Y")

power<-subset(power, power$Date >= "2007-02-01" & power$Date <= "2007-02-02")

power$date_time<-paste(power$Date,power$Time)
power$date_time<-strptime(power$date_time,"%Y-%m-%d %H:%M:%S")

hist(power$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",ylab="Frequency",main="Global Active Power")