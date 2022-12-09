######################## init ########################
setwd("#")

######################## data ########################
dataBig <- read.csv("dataCombinedAirline.csv") # main data

# getting states data
destinations <- data.frame(dataBig$DestState, dataBig$DestStateFips, dataBig$DestStateName)

# extracting only unique states
destinationsUnique <- data.frame(
  unique(destinations[1]),
  unique(destinations[2]),
  unique(destinations[3])
)
colnames(destinationsUnique) <- c('State', 'StateFips', 'StateName')
write.csv(destinationsUnique, 'States.csv', row.names = FALSE)

# deleting data from main datafile
dataBigCropped = subset(dataBig, select = -c(
    Year,
    Quarter,
    Month,
    DayofMonth,
    OriginStateName, 
    OriginStateFips, 
    DestStateFips, 
    DestStateName,
    Marketing_Airline_Network,
    Operated_or_Branded_Code_Share_Partners,
    IATA_Code_Marketing_Airline,
    Operating_Airline,
    IATA_Code_Operating_Airline,
    DOT_ID_Marketing_Airline,
    DOT_ID_Operating_Airline
  ))
write.csv(dataBigCropped, 'dataCombinedAirlineStates.csv', row.names = FALSE)