######################## init ########################
setwd("#")

######################## data ########################
data <- read.csv("main_data_flights.csv")
data_5tys <- head(data, 5000)
data_500tys <- head(data, 500000)
data_1mln <- head(data, 1000000)
data_5mln <- head(data, 5000000)

write.csv(data_5tys, 'data_5tys.csv', row.names = FALSE)
write.csv(data_500tys, 'data_500tys.csv', row.names = FALSE)
write.csv(data_1mln, 'data_1mln.csv', row.names = FALSE)
write.csv(data_5mln, 'data_5mln.csv', row.names = FALSE)