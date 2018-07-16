# Create boxplots for CSRIO RCP 4.5 climate stations

library(tidyverse)
library(lubridate)

# load first dataset
p351_800 = read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p351-800.csv")

# Convert characters to Date. 
# Check: class(p531_800$Date)
p351_800$TIMESTEP=mdy(p351_800$TIMESTEP)

# Add 'month' and 'dataset' columns
p1=p351_800 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p351_800")
#need to get months to be numbers instead of January

# load second dataset****
p354_806=read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p354-806.csv")
# Convert characters to Date
p354_806$TIMESTEP=mdy(p354_806$TIMESTEP)

# Add 'month' and 'dataset' columns
p2=p354_806 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p354_806")
#need to get numeric months to character string

# load third dataset****
p358_800=read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p358-800.csv")

# Convert characters to Date
p358_800$TIMESTEP=mdy(p358_800$TIMESTEP)

# Add 'month' and 'dataset' columns
p3=p358_800 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p358_800")

# load 4TH dataset****
p361_806=read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p361-806.csv")

# Convert characters to Date
p361_806$TIMESTEP=mdy(p361_806$TIMESTEP)

# Add 'month' and 'dataset' columns
p4=p361_806 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p361_806")

# load 5TH dataset****
p361_816=read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p361-816.csv")

# Convert characters to Date
p361_816$TIMESTEP=mdy(p361_816$TIMESTEP)

# Add 'month' and 'dataset' columns
p5=p361_816 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p361_816")

# load 6TH dataset****
p364_809=read_csv("C:/Users/Kelly/Documents/R_Programming/FigS1/CSIRO45/p364-809.csv")

# Convert characters to Date
p364_809$TIMESTEP=mdy(p364_809$TIMESTEP)

# Add 'month' and 'dataset' columns
p6=p364_809 %>%
  mutate(month=month(TIMESTEP),year=year(TIMESTEP),dataset="p364_809")

# make sure they all have same column structure (Date, Precip)
# stack all data together
all_precip_data=bind_rows(p1,p2,p3,p4,p5,p6) %>% 
  mutate(station=dataset) #change 'dataset' to 'station' for legend

#summarize by month and sum all daily data
all_monthly=all_precip_data %>% 
  group_by(month,year,station) %>%
  summarize(sum_month=sum(precip))

#summarize by year and sum all daily data
all_yearly=all_precip_data %>% 
  group_by(year,station) %>%
  summarize(sum_year=sum(precip))

# once all data is together
# monthly boxplot
ggplot(all_monthly,aes(x=as.factor(month),y=sum_month,fill=station)) +
  geom_boxplot() +
  xlab("Month") +
  ylab("Cumulative Monthly Precipitation (mm)") +
  theme_bw() +
  scale_x_discrete(labels=c("1" = "Jan", "2" = "Feb","3" = "Mar","4" = "Apr","5" = "May", "6" = "Jun", "7"= "Jul", "8" = "Aug", "9" = "Sep", "10" = "Oct", "11" = "Nov", "12" = "Dec"))

#yearly boxplot
ggplot(all_yearly,aes(x=station,y=sum_year)) +
  geom_boxplot() +
  xlab("Station") +
  ylab("Cumulative Annual Precipitation (mm)") +
  theme_bw() 