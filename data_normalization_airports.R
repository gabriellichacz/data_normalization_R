######################## init ########################
setwd("#")

######################## data ########################
dataBig <- read.csv("dataCombinedAirlineStates.csv") # main data

# getting states data
airports <- data.frame(
  dataBig$OriginAirportID, 
  dataBig$OriginAirportSeqID, 
  dataBig$OriginCityMarketID, 
  dataBig$OriginCityName, 
  dataBig$OriginState, 
  dataBig$OriginWac
  )

# extracting only unique airports
airportsIds <- unique(airports[1])
airportsIds <- airportsIds$dataBig.OriginAirportID

airfieldFrame <- data.frame()
for (i in 1:length(airportsIds)) { # creating airlines data frame
  airfieldFrame <- rbind(airfieldFrame, unique(airports[which(airports$dataBig.OriginAirportID == airportsIds[i]), ]))
}

colnames(airfieldFrame) <- c('AirportID', 'AirportSeqID', 'OriginCityMarketID', 'OriginCityName', 'OriginState', 'OriginWac')
write.csv(airfieldFrame, 'Airfields.csv', row.names = FALSE)
rm(airports, airportsIds, i)

# deleting data from main datafile
dataBigCropped = subset(dataBig, select = -c(
    OriginAirportSeqID,
    OriginCityMarketID,
    OriginCityName,
    OriginState,
    OriginWac,
    DestAirportSeqID,
    DestCityMarketID,
    DestCityName,
    DestState,
    DestWac
  ))
write.csv(dataBigCropped, 'MainDataFlights.csv', row.names = FALSE)
