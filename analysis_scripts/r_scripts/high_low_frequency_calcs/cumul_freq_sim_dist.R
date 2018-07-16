# purpose: calculate cumulative frequency distribution of annual maximum flows (modeled)
# last updated: 20190530
# author: sheila saia
# contact: ssaia [at] ncsu [dot] edu

# define function
cumul_freq_sim_dist <- function(obs_df, kn_table, model_p_list, flow_option) {
  # obs_df is the output dataframe from obs_cumul_freq_max_flows()
  # kn value comes from appendix 4 of the USGS bulletin 17b
  # model_p_list is a list of desired probabilities of exceedance
  
  # references:
  # http://streamflow.engr.oregonstate.edu/analysis/floodfreq/meandaily_tutorial.htm
  # http://www.hydrology.bee.cornell.edu/BEE473Homework_files/RiskAnalysis.pdf
  # USGS Riggs, 1972
  # USGS Bulletin 17B, 1982
  
  # save temporary variables
  num_p <- length(model_p_list)
  num_yrs <- dim(obs_df)[1]
  
  if(flow_option == "high") {
    # make output dataframe to hold results
    model_df <- data.frame(return_period_yr = as.numeric(),
                         max_annual_q_cms = as.numeric(),
                         max_annual_logq_logcms = as.numeric(),
                         dist_type = as.character())
    
    # remove outliers
    obs_temp_data <- remove_outliers(obs_df, kn_table, flow_option)
    
    # log inputs and find mean
    obs_flow_log <- obs_temp_data$max_annual_logq_logcms
    obs_mean <- mean(obs_flow_log)
    
    # calculate difference from mean
    obs_mean_diff <- obs_flow_log-obs_mean
    obs_mean_diff_sqrd <- obs_mean_diff ^ 2
    obs_mean_diff_sqrd_sum <- sum(obs_mean_diff_sqrd)
    obs_mean_diff_cubed <- obs_mean_diff ^ 3
    obs_mean_diff_cubed_sum <- sum(obs_mean_diff_cubed)
    
    # calculate coefficient of skew (cskew)
    obs_variance <- (1 / (num_yrs - 1)) * obs_mean_diff_sqrd_sum
    obs_stdev <- sqrt(obs_variance)
    obs_cskew <- (num_yrs * obs_mean_diff_cubed_sum) / ((num_yrs - 1) * (num_yrs - 2) * (obs_stdev ^ 3))
    
    # calculate model kt
    model_kt <- logpearson3_factor_calc(model_p_list, obs_cskew)
    
    # calculate final modeled flow values
    model_flow_log <- obs_mean + obs_stdev * model_kt
    model_flow_unlog <- exp(obs_mean + obs_stdev * model_kt)
    
    # final output dataframe
    model_df <- data.frame(return_period_yr = 1 / model_p_list,
                         max_annual_q_cms = model_flow_unlog,
                         max_annual_logq_logcms = model_flow_log,
                         dist_type = rep("model", num_p))
    
    # return output
    return(model_df)
  }
  
  else if(flow_option == "low") {
    obs_return_period <- obs_df$return_period_yr
    obs_flow_unlog <- obs_df$min_annual_q_cms
    
    # save data frame with data > zero
    obs_overzero_data <- obs_df %>% 
      filter(min_annual_q_cms > 0)
    obs_overzero_return_period <- obs_overzero_data$return_period_yr # select only data > zero
    obs_overzero_flow_unlog <- obs_overzero_data$min_annual_q_cms
    num_overzero_yrs <- dim(obs_overzero_data)[1]
    
    # percent of data = zero
    num_zero_yrs <- num_yrs - num_overzero_yrs
    perc_zeros_check <- num_zero_yrs / num_yrs # only proceed if 25% or less
    
    # make output dataframe to hold results
    model_df <- data.frame(return_period_yr = as.numeric(),
                           min_annual_q_cms = as.numeric(),
                           min_annual_logq_logcms = as.numeric(),
                           dist_type = as.character())
    
    if (perc_zeros_check <= 0.25) {
      if (perc_zeros_check == 0) {
        # low flow analysis without conditional probability adjustment
        
        # remove outliers
        obs_temp_data <- remove_outliers(obs_df, kn_table, flow_option)
        
        # log inputs and find mean
        obs_flow_log <- obs_temp_data$min_annual_logq_logcms
        obs_mean <- mean(obs_flow_log)
        
        # calculate difference from mean
        obs_mean_diff <- obs_flow_log - obs_mean
        obs_mean_diff_sqrd <- obs_mean_diff ^ 2
        obs_mean_diff_sqrd_sum <- sum(obs_mean_diff_sqrd)
        obs_mean_diff_cubed <- obs_mean_diff ^ 3
        obs_mean_diff_cubed_sum <- sum(obs_mean_diff_cubed)
        
        # calculate coefficient of skew (cskew)
        obs_variance <- (1 / (num_yrs - 1)) * obs_mean_diff_sqrd_sum
        obs_stdev <- sqrt(obs_variance)
        obs_cskew <- (num_yrs * obs_mean_diff_cubed_sum) / ((num_yrs - 1) * (num_yrs - 2) * (obs_stdev ^ 3))
        
        # calculate model kt
        model_kt <- logpearson3_factor_calc(model_p_list, obs_cskew) * 2 # had to multiply by 2 to get this to fit properly, am not sure why
        
        # calculate final modeled flow values
        model_flow_log <- obs_mean + obs_stdev * model_kt
        model_flow_unlog <- exp(obs_mean + obs_stdev * model_kt)
        
        # final output dataframe
        model_df <- data.frame(return_period_yr = 1 / (1 - (model_p_list)),
                               min_annual_q_cms = model_flow_unlog,
                               min_annual_logq_logcms = model_flow_log,
                               dist_type = rep("model", num_p))
        
        # redefine flows beyond max observation to NA (by 5 cms)
        obs_max_flow_plus_buffer <- round(max(obs_df$min_annual_q_cms)) + 5 # add buffer of 5 cms (arbitrarily chosen)
        if (sum(as.numeric(model_df$min_annual_q_cms > obs_max_flow_plus_buffer)) > 1) { # if there are entries to change, then change them
          model_df$min_annual_q_cms[model_df$min_annual_q_cms > obs_max_flow_plus_buffer] <- as.numeric("NA")
          model_df$min_annual_logq_logcms[is.na(model_df$min_annual_q_cms) == TRUE] <- as.numeric("NA")
        }
        
        # note: the difference here between low flow and high frequency analysis is
        # return period is based on 1-p (i.e., T=1/(1-p))
        
        # return output
        return(model_df)
      }
      
      else {
        # if there are any low flows = 0 then do conditional probability adjustment
        
        # remove outliers
        obs_temp_data <- remove_outliers(obs_overzero_data, kn_table, flow_option)
        
        # log inputs > zero and calculate mean
        obs_overzero_flow_log <- obs_temp_data$min_annual_logq_logcms
        obs_overzero_mean <- mean(obs_overzero_flow_log)
        
        # calculate standard deviation and coefficient of skew (cskew)
        obs_overzero_mean_diff <- obs_overzero_flow_log - obs_overzero_mean
        obs_overzero_mean_diff_sqrd <- obs_overzero_mean_diff ^ 2
        obs_overzero_mean_diff_sqrd_sum <- sum(obs_overzero_mean_diff_sqrd)
        obs_overzero_mean_diff_cubed <- obs_overzero_mean_diff ^ 3
        obs_overzero_mean_diff_cubed_sum <- sum(obs_overzero_mean_diff_cubed)
        obs_overzero_variance <- (1 / (num_yrs - 1)) * obs_overzero_mean_diff_sqrd_sum
        obs_overzero_stdev <- sqrt(obs_overzero_variance)
        obs_overzero_cskew <- (num_yrs * obs_overzero_mean_diff_cubed_sum) / ((num_yrs - 1) * (num_yrs - 2) * (obs_overzero_stdev ^ 3))
        
        # adj probability
        obs_overzero_prob <- 1 / obs_overzero_return_period
        obs_overzero_prob_adj <- 1 - (num_overzero_yrs / num_yrs) * (1 - obs_overzero_prob)
        obs_overzero_return_period_adj_yr <- 1 / obs_overzero_prob_adj
        
        # caculate log-Person type III frequency factor (kt) for conditional probability adjustment
        con_kt <- logpearson3_factor_calc(model_p_list, obs_overzero_cskew)
        
        # other conditional probability adjustment calculations
        con_flow_log <- obs_overzero_mean + obs_overzero_stdev * con_kt
        con_flow_unlog <- exp(obs_overzero_mean + obs_overzero_stdev * con_kt)
        con_prob_adj <- 1 - perc_zeros_check
        con_p_list <- model_p_list * con_prob_adj
        #con_return_period_no_adj <- 1/(1-model_p_list)
        #con_return_period_adj <- 1/(1-con_p_list)
        
        # fit smooth and predict
        con_smooth <- loess(con_flow_log ~ con_p_list)
        con_predict <- predict(con_smooth, c(0.01, 0.1, 0.5)) # predictions for p=0.01, p=0.1, p=0.5
        
        # coefficient of skew
        syn_cskew <- -2.50 + 3.12 * ((con_predict[1] - con_predict[2]) / (con_predict[2] - con_predict[3]))
        # only ok for obs_overzero_cskew between +2.5 and -2.0
        
        # caculate log-Person type III frequency factor (kt) for synthetic curve
        syn_p_list <- c(0.01, 0.5) # only need for these probabilities
        syn_kt <- logpearson3_factor_calc(syn_p_list, syn_cskew)
        
        # standard deviation and mean
        syn_stdev <- (con_predict[1] - con_predict[3]) / (syn_kt[1] - syn_kt[2])
        syn_mean <- (con_predict[3]) - syn_kt[2] * syn_stdev
        
        # calculate weighted coefficient of skew
        if (abs(syn_cskew) <= 0.9) {
          mse_syn_cskew_A <- -0.33 + 0.08 * abs(syn_cskew)
        }
        
        else {
          mse_syn_cskew_A <- -0.52 + 0.30 * abs(syn_cskew)
        }
        
        if (abs(syn_cskew)<=1.5) {
          mse_syn_cskew_B <- 0.94 - 0.26 * abs(syn_cskew)
        }
        
        else {
          mse_syn_cskew_B <- 0.55
        }
        
        mse_syn_cskew <- mse_syn_cskew_A - (mse_syn_cskew_B * log(num_yrs / 10))
        mse_general_cskew <- 0.302 # by definition for Plate I in USGS bulletin 17B (pg 184)
        #general_cskew <- 0.4 # for Yadkin-Pee Dee Watershed, NC region
        wtd_cskew <- (mse_general_cskew * syn_cskew + mse_syn_cskew * general_cskew) / (mse_general_cskew + mse_syn_cskew)
        
        # caculate log-Person type III frequency factor (kt) for final curve
        fin_kt <- logpearson3_factor_calc(model_p_list, wtd_cskew)
        
        # final output dataframe
        model_df <- data.frame(model_return_period_yr = 1 / (1 - model_p_list),
                               min_annual_logq_logcms = syn_mean + syn_stdev * fin_kt,
                               min_annual_q_cms = exp(syn_mean + syn_stdev * fin_kt),
                               dist_type = rep("model", num_p))
                            
        
        # redefine flows beyond observation to NA (by 5 cms)
        obs_max_flow_plus_buffer <- round(max(obs_df$min_annual_q_cms))+5 # add buffer of 5 cms (arbitrarily chosen)
        if (sum(as.numeric(model_df$min_annual_q_cms>obs_max_flow_plus_buffer))>1) { # if there are entries to change, then change them
          model_df$min_annual_q_cms[model_df$min_annual_q_cms>obs_max_flow_plus_buffer] <- as.numeric("NA")
          model_df$min_annual_logq_logcms[is.na(model_df$min_annual_q_cms) == TRUE] <-as.numeric("NA")
        }
        
        # return output
        return(model_df)
      }
    }
    else {
      # return df without completing any calculations
      # low flow analysis cannot be done when zeros make up >25% of data
      model_df <-data.frame(model_return_period_yr = 1 / (1 - (model_p_list)), 
                            min_annual_q_cms = rep(as.numeric("NA"), num_p),
                            min_annual_logq_logcms = rep(as.numeric("NA"), num_p),
                            dist_type = rep("model", num_p))
                          
      # return output
      return(model_df)
    }
  }
  
  else {
    print("The flow_option specified is not valid.")
  }
}
