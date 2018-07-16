# purpose: calculate cumulative frequency distribution of annual maximum flows (observed)
# last updated: 20190530
# author: sheila saia
# contact: ssaia [at] ncsu [dot] edu

# define function
cumul_freq_obs_dist <- function(data, flow_option) { 
  # data is df for outlet that has been rollified for a given span (e.g., 7-days)
  # it has 2 columns: a date column and a flow column
  # flow_option can be "high" or "low"
  
  # calculate number of years
  num_yrs <- length(unique(data$year))
  
  if (flow_option == "high") {
    # find max, sort descending, and adjust
    df_temp <- data %>%
      group_by(year) %>% 
      summarise(max_annual_q_cms = max(max_q_cms) * 1.13) %>% # adjust using standard window shift (= 1.13)
      arrange(desc(max_annual_q_cms)) %>%
      mutate(max_annual_logq_logcms = log(max_annual_q_cms))
    
    # rank data
    df_temp$rank_num <- seq(1, num_yrs, 1)
    
    # define return period
    df_temp$return_period_yr <- (num_yrs + 1) / df_temp$rank_num
    
    # select only necessary fields
    df <- df_temp %>% select(return_period_yr,
                             max_annual_q_cms,
                             max_annual_logq_logcms) %>%
      mutate(dist_type = rep("obs",num_yrs))
    
    # return
    return(df)
  }
  
  else if (flow_option == "low") {
    # find max, sort descending, and adjust
    df_temp <- data %>%
      group_by(year) %>% 
      summarise(min_annual_q_cms = min(min_q_cms) * 1.13) %>% # adjust using standard window shift (= 1.13)
      arrange(min_annual_q_cms) %>%
      mutate(min_annual_logq_logcms = log(min_annual_q_cms))
    
    # rank data
    df_temp$rank_num <- seq(1, num_yrs, 1)
    
    # define return period
    df_temp$return_period_yr <- (num_yrs + 1) / df_temp$rank_num
    
    # select only necessary fields
    df <- df_temp %>% select(return_period_yr,
                             min_annual_q_cms,
                             min_annual_logq_logcms) %>%
      mutate(dist_type = rep("obs",num_yrs))
    
    # return
    return(df)
  }
  
  else {
    print("The flow_option specified is not valid.")
  }

}