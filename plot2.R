#Script that makes the second plot.
#Run read_structure_data_1.R and plot1.R

#Save plot to plot2.png
png('plot2.png')
plot(data_sub$DateTime,data_sub$Global_active_power,type = "l",ylab = "Global Active Power (kilowatts)",xlab = "")
dev.off()