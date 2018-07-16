# Load and view the data
#USGS Gage 02115360
V_gage4 <- read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs4_v.csv")

#USGS Gage 02116500
V_gage9 <- read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs9_v.csv")

#USGS Gage 02129000
V_gage28 <- read.csv("C:/Users/Kelly/Documents/R_Programming/Fig4/SimVsObs28_v.csv")

x4 <- V_gage4[[1]]
y4 <- V_gage4[[2]]

x9 <- V_gage9[[1]]
y9 <- V_gage9[[2]]

x28 <- V_gage28[[1]]
y28 <- V_gage28[[2]]

#Name Titles and Labels for graphs
title4 <- "USGS Gage 02115360"
title9 <- "USGS Gage 02116500"
title28 <- "USGS Gage 02129000"

#make the linear models and find the slopes and intercepts for each line
#USGS Gage 02115360
my_lm4=lm(y4~x4)
summary(my_lm4)
slope4=my_lm4$coefficient[2]
interc4=my_lm4$coefficients[1]

#USGS Gage 02116500
my_lm9=lm(y9~x9)
summary(my_lm9)
slope9=my_lm9$coefficient[2]
interc9=my_lm9$coefficients[1]

#USGS Gage 02129000
my_lm28=lm(y28~x28)
summary(my_lm28)
slope28=my_lm28$coefficient[2]
interc28=my_lm28$coefficients[1]

summary(V_gage9)
# Plot the observed vs. sim for each gage with a subplot function where n = number of rows and m = number of columns for your final figure
par(mfrow=c(1,3))
  plot(y4~x4, V_gage4, xlab="Observed (cms)", ylab="Simulated (cms)",xlim=c(0,800),ylim=c(0,800),xaxs="i",yaxs="i")
  title(main = title4)
  abline(a=interc4,b=slope4,col="red")
  abline(a=0,b=1,col="black",lty=2)
  plot(V_gage9, xlab="Observed (cms)", ylab="Simulated (cms)",xlim=c(0,1250),ylim=c(0,1250),xaxs="i",yaxs="i") 
  title(main = title9)
  abline(a=interc9,b=slope9,col="red")
  abline(a=0,b=1,col="black",lty=2)
  plot(V_gage28, xlab="Observed (cms)", ylab="Simulated (cms)",xlim=c(0,4000),ylim=c(0,4000),xaxs="i",yaxs="i") 
  title(main = title28)
  abline(a=interc28,b=slope28,col="red")
  abline(a=0,b=1,col="black",lty=2)