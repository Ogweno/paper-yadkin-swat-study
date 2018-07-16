#Create a time series graph of daily observed and simulated streamflow 

library(tidyverse) # this package includes a bunch of great packages including ggplot, dplyr, readr
library(lubridate) # package for working with dates

# import data
dat4 = read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs4.csv")
#read_csv() is similar to read.csv() but more recent and part of the tidyverse
dat9 = read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs9.csv")
dat28 = read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs28.csv")

# Date is currently a factor
class(dat4$Date)
# convert to date
dat4$Date=mdy(dat4$Date)

# plot #2
plot(Observed~Date,data=dat4,col="black",type="l",xlab="Date",ylab="Streamflow (cms)") # plots observations (as a line)
lines(Simulated~Date,data=dat4,col="blue") # plots simulation (as a line)
legend("topright",c("Observed","Simulated"),lwd=c(1,1),col=c("black","blue"),bty="n")

# plot #3
plot(Observed~Date,data=dat,pch=16,col="black",xlab="Date",ylab="Streamflow (cms)") # plots observations (as points)
lines(Simulated~Date,data=dat,col="blue",lwd=2) # plots simulation (as a line)
legend("topright",c("Observed","Simulated"),pch=c(16,NA),lwd=c(NA,1),col=c("black","blue"),bty="n")

# use ggplot (is a little less straightforward but looks pretty)
# plot #2
ggplot(xlab="Date",ylab="Streamflow (cms)") +
  geom_line(aes(x=Date,y=Observed),dat,color="black") +
  geom_line(aes(x=Date,y=Simulated),dat,color="blue") +
  xlab("Date") +
  ylab("Streamflow (cms)") +
  theme_bw() + # removes grey background
theme(
  legend.position = c(.35, .98),
  legend.justification = c("right", "top"),
  legend.box.just = "right",
  legend.margin = margin(6, 6, 6, 6),
  legend.title = element_text(face = "bold"),
  axis.text.x = element_text(angle = 90, hjust=1, vjust = 0.5)) #hjust 1 or 0 for "left or right" justify

# plot #3
ggplot(xlab="Date",ylab="Streamflow (cms)") +
  geom_point(aes(x=Date,y=Observed),dat,size=1) +
  geom_line(aes(x=Date,y=Simulated),dat,color="blue") +
  xlab("Date") +
  ylab("Streamflow (cms)") +
  theme_bw() # removes grey background
  