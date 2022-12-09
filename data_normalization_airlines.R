######################## init ########################
setwd("#")

######################## data ########################
dataBig <- read.csv("dataCombined.csv") # main data
airlinesCSV <- read.csv("Airlines.csv") # airline data
airlineCol <- dataBig$Airline # extracting airline column from main data

dataChange <- function(airlineCol, airlinesList)
{
  for (i in 1:length(airlineCol)) { #going through whole airline vector
    airlineCol[i] <- airlinesList[which(airlinesList$Description == airlineCol[i]), ]$Code #finding and replacing data
  }
  return(airlineCol)
}

changedAirlineCol <- dataChange(airlineCol, airlinesCSV) # getting changed airline column from function
rm(airlinesCSV, airlineCol) # emptying memory
dataBig$Airline <- changedAirlineCol # replacing old column with changed one
write.csv(dataBig, 'dataCombinedAirline.csv', row.names = FALSE)