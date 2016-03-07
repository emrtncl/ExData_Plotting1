#Script that produces plot 1. Remember you need to run the read_structure_data_1 first to get the required
#data to make the plots going forward.

#Save the plot in PNG
png('plot1.png')
hist(data_sub$Global_active_power,main = "Global Active Power",xlab = "Global Active Power (kilowatts)",
              ylab = "Frequency",col = "Red")
dev.off()