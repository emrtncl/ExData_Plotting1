#Assignment 1 Script. Plot the required graphs, charts etc..
#Set working directory
fp <- "C:/Users/EmreT/Desktop/Data_Science_JH/Exploratory_Data_Analysis_4"
setwd(fp)

#Upload the data into R
data_org <- read.table("household_power_consumption.txt",header = TRUE,sep = ";")
fields <- ncol(data_org)

for(i in 1:fields){
  data_org[,i] <- as.character(data_org[,i])
}

for(i in 3:fields){
  data_org[,i] <- as.numeric(data_org[,i])
}

#Covert date field from character to date class
data_org$DateTime <- paste(data_org$Date,data_org$Time, sep = " ")
data_org$DateTime <- strptime(data_org$DateTime,tz = "", format = "%d/%m/%Y %H:%M:%S")
data_org$Date <- as.Date(data_org$Date,format = "%d/%m/%Y")

#Subset the data
data_sub <- data_org[which(data_org$Date == '2007-02-01'| data_org$Date == '2007-02-02'),]

