#Script that produces plot4. Please run read_structure_data_1.R first in order for
#this script to work
png('plot4.png')
par(mfrow = c(2,2))
plot(data_sub$DateTime,data_sub$Global_active_power,type = "l",ylab = "Global Active Power",xlab = "")
plot(data_sub$DateTime,data_sub$Voltage,type = "l",xlab = "datetime",ylab = "Voltage",col = "Black")
plot(data_sub$DateTime,data_sub$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering",col = "Black")
lines(data_sub$DateTime,data_sub$Sub_metering_2,col = "Red")
lines(data_sub$DateTime,data_sub$Sub_metering_3,col = "Blue")
legend(x = "topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,
       col = c("Black","Red","Blue"))
plot(data_sub$DateTime,data_sub$Global_reactive_power,xlab = "datetime", type = "l", ylab = "Global Reactive Power", col = "Black")
dev.off()