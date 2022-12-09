######################## init ########################
setwd("#")

######################## data ########################
data1 <- read.csv("Combined_Flights_2020.csv")
data2 <- read.csv("Combined_Flights_2021.csv")
dataBig <- rbind(data1, data2)

dataBigSorted <- dataBig[order(dataBig$FlightDate),]

dataIds <- c(1:nrow(dataBigSorted))
dataWithIds <- cbind(dataIds, dataBigSorted)

colnames = colnames(dataWithIds)
colnames[1] = 'flightID'
colnames(dataWithIds) <- colnames

write.csv(dataWithIds,"dataCombined.csv", row.names = FALSE)