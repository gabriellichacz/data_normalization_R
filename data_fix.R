######################## init ########################
setwd("#")

######################## data ########################
data1 <- read.csv("Airfields.csv")
data2 <- read.csv("Airlines.csv")
data3 <- read.csv("MainDataFlights.csv")
data4 <- read.csv("States.csv")

colnames(data1) <- c('airport_id', 'airport_seq_id', 'origin_city_market_id', 'origin_city_name', 'origin_state', 'origin_wac')
colnames(data2) <- c('code', 'description')
colnames(data3) <- c(
  'flight_id',
  'flight_date',
  'airline',
  'origin',
  'dest',
  'cancelled',
  'diverted',
  'crs_dep_time',
  'dep_time',
  'dep_delay_minutes',
  'dep_delay',
  'arr_time',
  'arr_delay_minutes',
  'air_time',
  'crs_elapsed_time',
  'actual_elapsed_time',
  'distance',
  'day_of_week',
  'flight_number_marketing_airline',
  'tail_number',
  'flight_number_operating_airline',
  'origin_airport_id',
  'dest_airport_id',
  'dep_del_15',
  'departure_delay_groups',
  'dep_time_blk',
  'taxi_out',
  'wheels_off',
  'wheels_on',
  'taxi_in',
  'crs_arr_time',
  'arr_delay',
  'arr_del_15',
  'arrival_delay_groups',
  'arr_time_blk',
  'distance_group',
  'div_airport_landings'
)
colnames(data4) <- c('dest_state', 'dest_state_fips', 'dest_state_name')

write.csv(data1, 'airfields.csv', row.names = FALSE)
write.csv(data2, 'airlines.csv', row.names = FALSE)
write.csv(data3, 'main_data_flights.csv', row.names = FALSE)
write.csv(data4, 'states.csv', row.names = FALSE)
