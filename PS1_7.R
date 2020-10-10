#7.1
# Read the data 
Met_Data                <- read.csv(file = "ROCKWELL_CITY.csv", header = T)

#7.2
# Get variable names
names(Met_Data)
# prcp
ROCKWELL_CITY_P          <-   Met_Data$PRCP
# Time
Obs_Time                 <-   Met_Data$DATE
# Convert character to double
ROCKWELL_CITY_P_value    <-   as.numeric(ROCKWELL_CITY_P)
# Convert the character vector to date vector
Obs_Time2                <- as.Date(Obs_Time)
#Plot
plot(Obs_Time2, ROCKWELL_CITY_P_value, lwd=0.5, type="l", col="blue")

#7.3
# max of ROCKWELL_CITY_P_value
max(ROCKWELL_CITY_P_value, na.rm=T)
# Date of the max 
Obs_Time2[which.max(ROCKWELL_CITY_P_value)]
# mean of ROCKWELL_CITY_P_value
mean(ROCKWELL_CITY_P_value, na.rm=T)
# mean of the ROCKWELL_CITY_P_value of year 2019
Year_flag1               <-   substr(Obs_Time,1,4)
mean(ROCKWELL_CITY_P_value[which(Year_flag1=="2019")], na.rm=T)
# sum of the ROCKWELL_CITY_P_value of year 2019
sum(ROCKWELL_CITY_P_value[which(Year_flag1=="2019")], na.rm=T)
