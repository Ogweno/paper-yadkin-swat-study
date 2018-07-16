# yadkin monthly qmax and qmin calcs

# ---- 1. set up -----

# clear ws
rm(list = ls())

# load libraries
library(tidyverse)
library(lubridate)

# load in observed data
# (separated ObsSimQ3Gages.xlsx into obs and sim)
setwd("/Users/ssaia/Google Drive/STOTEN/data_and_scripts/observed_data/streamflow")
obs_data <- read_csv("obs_outlet_streamflow.csv") %>%
  transmute(date = as_date(date_yyyymmdd), observed_q_cms = observed_q_cms) %>%
  filter(year(date) < 2003) %>%
  mutate(year_month = gsub("-","_",str_sub(as.character(date), end = -4)))

# load in simulated data
# (separated ObsSimQ3Gages.xlsx into obs and sim)
setwd("/Users/ssaia/Google Drive/STOTEN/data_and_scripts/simulated_data/validation_swat_outputs")
sim_data <- read.csv("sim_outlet_streamflow.csv")  %>%
  transmute(date = as_date(date_yyyymmdd), simulated_q_cms = simulated_q_cms) %>%
  filter(year(date) < 2003)

# merge datasets
data <- left_join(obs_data, sim_data, by = "date") %>%
  select(year_month, observed_q_cms, simulated_q_cms)


# ---- 2. summarize monthly qmax and qmin ----

flow_summary <- data %>%
  group_by(year_month) %>%
  summarise(observed_q_max_cms = max(observed_q_cms),
            observed_q_min_cms = min(observed_q_cms),
            simulated_q_max_cms = max(simulated_q_cms),
            simulated_q_min_cms = min(simulated_q_cms)) %>%
  mutate(q_max_perc_change = ((simulated_q_max_cms - observed_q_max_cms)/observed_q_max_cms)*100,
         q_min_perc_change = ((simulated_q_min_cms - observed_q_min_cms)/observed_q_min_cms)*100)


# ---- 3. linear model ----

# qmax
q_max_lm <- lm(simulated_q_max_cms ~ observed_q_max_cms, data = flow_summary)
summary(q_max_lm)
q_max_intercept <- q_max_lm$coefficients[1]
q_max_slope <- q_max_lm$coefficients[2]
# slope = 0.52
# intercept = 111.44
# p-value = 2e-16, basically 0, is significant (less than 0.05)
# r-squared is 0.80

# qmin
q_min_lm <- lm(simulated_q_min_cms ~ observed_q_min_cms, data = flow_summary)
summary(q_min_lm)
q_min_intercept <- q_min_lm$coefficients[1]
q_min_slope <- q_min_lm$coefficients[2]
# slope = 0.90
# intercept = 68.09
# pvalue = 2e-16, basically 0, is significant (less than 0.05)
# rsqaured is 0.55


# ---- 3. plot monthly qmax and qmin ----

# qmax
setwd("/Users/ssaia/Google Drive/STOTEN/data_and_scripts/stoten_scripts/script_outputs")
cairo_pdf("monthly_q_max_comparison.pdf", width = 10, height = 10)
ggplot(data = flow_summary) +
  geom_point(aes(x = observed_q_max_cms, y = simulated_q_max_cms), size = 2) +
  geom_abline(intercept = 0, slope = 1, lty = 2) +
  geom_abline(intercept = q_max_intercept, slope = q_max_slope, color = "red") +
  xlab("Observed Monthly Qmax (cms)") +
  ylab("Simulated Monthly Qmax (cms)") +
  xlim(0, 4000) +
  ylim(0, 4000) +
  theme_bw() +
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        panel.background=element_blank(),text=element_text(size=18))
dev.off()
  
# qmin
setwd("/Users/ssaia/Google Drive/STOTEN/data_and_scripts/stoten_scripts/script_outputs")
cairo_pdf("monthly_q_mmin_comparison.pdf", width = 10, height = 10)
ggplot(data = flow_summary) +
  geom_point(aes(x = observed_q_min_cms, y = simulated_q_min_cms), size = 2) +
  geom_abline(intercept = 0, slope = 1, lty = 2) +
  geom_abline(intercept = q_min_intercept, slope = q_min_slope, color = "red") +
  xlab("Observed Monthly Qmin (cms)") +
  ylab("Simulated Monthly Qmin (cms)") +
  xlim(0, 500) +
  ylim(0, 500) +
  theme_bw() +
  theme(panel.grid.major=element_blank(),panel.grid.minor=element_blank(),
        panel.background=element_blank(),text=element_text(size=18))
dev.off()


# ---- 4. export results ----

setwd("/Users/ssaia/Google Drive/STOTEN/data_and_scripts/stoten_scripts/script_outputs")
write_csv(flow_summary, "month_obs_sim_q_max_q_min_comparison.csv")
