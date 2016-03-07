#Script that produces the third plot
#Run first read_structure_data_1.R then plot1.R and plot2.R

png('plot3.png')
plot(data_sub$DateTime,data_sub$Sub_metering_1,type = "l",xlab = "",ylab = "Energy sub metering",col = "Black")
lines(data_sub$DateTime,data_sub$Sub_metering_2,col = "Red")
lines(data_sub$DateTime,data_sub$Sub_metering_3,col = "Blue")
legend(x = "topright",legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),lty = 1,
       col = c("Black","Red","Blue"))
dev.off()