power <- read.table("household_power_consumption.txt", header=TRUE, sep=";",na.strings="?")
power$Date<-as.Date(power$Date,"%d/%m/%Y")

power<-subset(power, power$Date >= "2007-02-01" & power$Date <= "2007-02-02")

power$date_time<-paste(power$Date,power$Time)
power$date_time<-strptime(power$date_time,"%Y-%m-%d %H:%M:%S")

plot(power$date_time,power$Sub_metering_1,xlab=" ",ylab="Energy Sub Metering",type="l", col="black")
lines(power$date_time,power$Sub_metering_2,col="red")
lines(power$date_time,power$Sub_metering_3,col="blue")
legend("topright",c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"),lty=c(1,1))