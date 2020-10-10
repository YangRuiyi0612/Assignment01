#6.1
# Read the hourly data 
Met_Data  <- read.csv(file = "2281305.csv", header = T)
# Get variable names
names(Met_Data)
# Vis
BaoAn_V          <-   Met_Data$VIS
# Time
Obs_Time         <-   Met_Data$DATE
# Split the Vis string
BaoAn_V_value    <-   substr(BaoAn_V,1,6)
# Split the  quality flag string
BaoAn_V_flag1    <-   substr(BaoAn_V,8,8)
BaoAn_V_flag2    <-   substr(BaoAn_V,10,10)
BaoAn_V_flag3    <-   substr(BaoAn_V,12,12)
# Convert character to double
BaoAn_V_value2   <-   as.numeric(BaoAn_V_value)
# Convert character to logical
BaoAn_V_flag1[which(BaoAn_V_flag1 == "1")]  <- 0
BaoAn_V_flag1_1  <- as.logical(as.numeric(BaoAn_V_flag1))
BaoAn_V_flag2[which(BaoAn_V_flag2 == "N")]  <- 0
BaoAn_V_flag2_1  <- as.logical(as.numeric(BaoAn_V_flag2))
BaoAn_V_flag3[which(BaoAn_V_flag3 == "1")]  <- 0
BaoAn_V_flag3_1  <- as.logical(as.numeric(BaoAn_V_flag3))
#Check which values are not in the range of 0 and 160000 , set those to NA
BaoAn_V_value2[which(BaoAn_V_value2>160000 | BaoAn_V_value2<0)]  <-  NA
# Check which values have bad quality, set those to NA
BaoAn_V_value2[which(BaoAn_V_flag1_1)]       <-   NA
BaoAn_V_value2[which(BaoAn_V_flag2_1)]       <-   NA
BaoAn_V_value2[which(BaoAn_V_flag3_1)]       <-   NA
# Convert the character vector to date vector
Obs_Time2      <- as.Date(Obs_Time)
#Plot
plot(Obs_Time2, BaoAn_V_value2,xlim=c(Obs_Time2[1],Obs_Time2[40000]),ylim=c(0,40000), lwd=0.5, type="l", col="blue")

#6.2












 


