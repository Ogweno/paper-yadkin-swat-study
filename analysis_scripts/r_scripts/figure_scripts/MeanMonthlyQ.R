# Use this script to calculate mean monthly streamflow (Q) for observed and simulated. Also to plot boxplots comparing them

library(tidyverse)
library(lubridate)

# load dataset
ObsSimQ = read_csv("C:/Users/Kelly/Documents/R_Programming/MeanQ/ObsSimQ_sb28.csv")

# Convert characters to Date. 
# Check: class(ObsSimQ$Date)
ObsSimQ$Date=mdy(ObsSimQ$Date)

# Add 'month' and 'dataset' columns
monthlyQ=ObsSimQ %>%
  mutate(month=month(Date),year=year(Date))

#summarize observed by month and find monthly average 
monthly_obsQ=monthlyQ %>% 
  group_by(month) %>%
  summarise(avg_obs_Qm=mean(Obs_Q_cms))

#summarize simulated by month and find monthly average 
monthly_simQ=monthlyQ %>% 
  group_by(month) %>%
  summarise(avg_sim_Qm=mean(Sim_Q_cms))

#Export data to put together in one file
write.csv(as_data_frame(monthly_simQ), file = "monthly_simQ.csv")

write.csv(as_data_frame(monthly_obsQ), file = "monthly_obsQ.csv")

#import dataset
combined_monthly = read_csv("C:/Users/Kelly/Documents/R_Programming/MeanQ/combined_monthlyQ.csv")

combined2_monthly = read_csv("C:/Users/Kelly/Documents/R_Programming/MeanQ/combined2_monthlyQ.csv")

class(combined_monthly$Month)

# monthly plot
ggplot(combined2_monthly)+
  geom_point(aes(x=month, y=avg_obs_Qm)) +
  geom_point(aes(x=month, y=avg_sim_Qm)) +
  xlab("Month") +
  ylab("Average Monthly Streamflow (cms)") +
  scale_x_continuous(limits=c(1,12), breaks=c(1,2,3,4,5,6,7,8,9,10,11,12))+
  theme_bw()

# once all data is together
# monthly plot
ggplot(monthly_simQ)+
  geom_point(aes(x=month, y=avg_sim_Qm)) +
  xlab("Month") +
  ylab("Average Monthly Streamflow (cms)") +
    scale_x_continuous(limits=c(1,12), breaks=c(1,2,3,4,5,6,7,8,9,10,11,12))+
  theme_bw()
    #scale_x_discrete(labels=c("1" = "Jan", "2" = "Feb","3" = "Mar","4" = "Apr","5" = "May", "6" = "Jun", "7"= "Jul", "8" = "Aug", "9" = "Sep", "10" = "Oct", "11" = "Nov", "12" = "Dec"))
                   
                   