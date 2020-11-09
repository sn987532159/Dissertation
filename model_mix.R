#install.packages("mice")
#install.packages("dplyr")
#install.packages("VIM")
#install.packages("nnet")
#install.packages("caret")
#install.packages("MLmetrics")
#install.packages("Metrics")
#install.packages("lmtest")
#library(lmtest) #press no
library(mice)
library(dplyr)
library(VIM)
library(nnet)
library(caret)
library(MLmetrics)
library(Metrics)

ptm <- proc.time()
setwd("~/Desktop/dissertation/dataset/")

function_RR <- function(Q, U){
  Q <- sapply(Q, sum)
  U <- sapply(U, sum)
  Q_RR <- mean(Q)
  U_RR <- mean(U)
  sum_bias_squared <- 0
  for (m in 1:5) {
    bias_squared <- (Q[i] - Q_RR)^2
    sum_bias_squared <- sum_bias_squared + bias_squared
  }
  B_RR <- (1 / (length(Q) - 1)) * sum_bias_squared
  T_RR <- U_RR + ((1 + (1 / length(Q)))*B_RR)
  return(T_RR)
}

#list
{
  list_UA_80_benchmark_RT <- list()
  list_UA_80_benchmark_RT_SE <- list()
  list_UA_80_benchmark_RT_95width <- list()
  list_UA_80_benchmark_RT_coverge <- list()
  list_UA_80_benchmark_UT <- list()
  list_UA_80_benchmark_UT_SE <- list()
  list_UA_80_benchmark_UT_95width <- list()
  list_UA_80_benchmark_UT_coverge <- list()
  list_UA_80_benchmark_SW <- list()
  list_UA_80_benchmark_SW_SE <- list()
  list_UA_80_benchmark_SW_95width <- list()
  list_UA_80_benchmark_SW_coverge <- list()
  list_UA_80_benchmark_OU <- list()
  list_UA_80_benchmark_OU_SE <- list()
  list_UA_80_benchmark_OU_95width <- list()
  list_UA_80_benchmark_OU_coverge <- list()
  list_UA_50_benchmark_RT <- list()
  list_UA_50_benchmark_RT_SE <- list()
  list_UA_50_benchmark_RT_95width <- list()
  list_UA_50_benchmark_RT_coverge <- list()
  list_UA_50_benchmark_UT <- list()
  list_UA_50_benchmark_UT_SE <- list()
  list_UA_50_benchmark_UT_95width <- list()
  list_UA_50_benchmark_UT_coverge <- list()
  list_UA_50_benchmark_SW <- list()
  list_UA_50_benchmark_SW_SE <- list()
  list_UA_50_benchmark_SW_95width <- list()
  list_UA_50_benchmark_SW_coverge <- list()
  list_UA_50_benchmark_OU <- list()
  list_UA_50_benchmark_OU_SE <- list()
  list_UA_50_benchmark_OU_95width <- list()
  list_UA_50_benchmark_OU_coverge <- list()
  list_UA_20_benchmark_RT <- list()
  list_UA_20_benchmark_RT_SE <- list()
  list_UA_20_benchmark_RT_95width <- list()
  list_UA_20_benchmark_RT_coverge <- list()
  list_UA_20_benchmark_UT <- list()
  list_UA_20_benchmark_UT_SE <- list()
  list_UA_20_benchmark_UT_95width <- list()
  list_UA_20_benchmark_UT_coverge <- list()
  list_UA_20_benchmark_SW <- list()
  list_UA_20_benchmark_SW_SE <- list()
  list_UA_20_benchmark_SW_95width <- list()
  list_UA_20_benchmark_SW_coverge <- list()
  list_UA_20_benchmark_OU <- list()
  list_UA_20_benchmark_OU_SE <- list()
  list_UA_20_benchmark_OU_95width <- list()
  list_UA_20_benchmark_OU_coverge <- list()
  list_UA_5_benchmark_RT <- list()
  list_UA_5_benchmark_RT_SE <- list()
  list_UA_5_benchmark_RT_95width <- list()
  list_UA_5_benchmark_RT_coverge <- list()
  list_UA_5_benchmark_UT <- list()
  list_UA_5_benchmark_UT_SE <- list()
  list_UA_5_benchmark_UT_95width <- list()
  list_UA_5_benchmark_UT_coverge <- list()
  list_UA_5_benchmark_SW <- list()
  list_UA_5_benchmark_SW_SE <- list()
  list_UA_5_benchmark_SW_95width <- list()
  list_UA_5_benchmark_SW_coverge <- list()
  list_UA_5_benchmark_OU <- list()
  list_UA_5_benchmark_OU_SE <- list()
  list_UA_5_benchmark_OU_95width <- list()
  list_UA_5_benchmark_OU_coverge <- list()
  list_MA_80_benchmark_RT <- list()
  list_MA_80_benchmark_RT_SE <- list()
  list_MA_80_benchmark_RT_95width <- list()
  list_MA_80_benchmark_RT_coverge <- list()
  list_MA_80_benchmark_UT <- list()
  list_MA_80_benchmark_UT_SE <- list()
  list_MA_80_benchmark_UT_95width <- list()
  list_MA_80_benchmark_UT_coverge <- list()
  list_MA_80_benchmark_SW <- list()
  list_MA_80_benchmark_SW_SE <- list()
  list_MA_80_benchmark_SW_95width <- list()
  list_MA_80_benchmark_SW_coverge <- list()
  list_MA_80_benchmark_OU <- list()
  list_MA_80_benchmark_OU_SE <- list()
  list_MA_80_benchmark_OU_95width <- list()
  list_MA_80_benchmark_OU_coverge <- list()
  list_MA_50_benchmark_RT <- list()
  list_MA_50_benchmark_RT_SE <- list()
  list_MA_50_benchmark_RT_95width <- list()
  list_MA_50_benchmark_RT_coverge <- list()
  list_MA_50_benchmark_UT <- list()
  list_MA_50_benchmark_UT_SE <- list()
  list_MA_50_benchmark_UT_95width <- list()
  list_MA_50_benchmark_UT_coverge <- list()
  list_MA_50_benchmark_SW <- list()
  list_MA_50_benchmark_SW_SE <- list()
  list_MA_50_benchmark_SW_95width <- list()
  list_MA_50_benchmark_SW_coverge <- list()
  list_MA_50_benchmark_OU <- list()
  list_MA_50_benchmark_OU_SE <- list()
  list_MA_50_benchmark_OU_95width <- list()
  list_MA_50_benchmark_OU_coverge <- list()
  list_MA_20_benchmark_RT <- list()
  list_MA_20_benchmark_RT_SE <- list()
  list_MA_20_benchmark_RT_95width <- list()
  list_MA_20_benchmark_RT_coverge <- list()
  list_MA_20_benchmark_UT <- list()
  list_MA_20_benchmark_UT_SE <- list()
  list_MA_20_benchmark_UT_95width <- list()
  list_MA_20_benchmark_UT_coverge <- list()
  list_MA_20_benchmark_SW <- list()
  list_MA_20_benchmark_SW_SE <- list()
  list_MA_20_benchmark_SW_95width <- list()
  list_MA_20_benchmark_SW_coverge <- list()
  list_MA_20_benchmark_OU <- list()
  list_MA_20_benchmark_OU_SE <- list()
  list_MA_20_benchmark_OU_95width <- list()
  list_MA_20_benchmark_OU_coverge <- list()
  list_MA_5_benchmark_RT <- list()
  list_MA_5_benchmark_RT_SE <- list()
  list_MA_5_benchmark_RT_95width <- list()
  list_MA_5_benchmark_RT_coverge <- list()
  list_MA_5_benchmark_UT <- list()
  list_MA_5_benchmark_UT_SE <- list()
  list_MA_5_benchmark_UT_95width <- list()
  list_MA_5_benchmark_UT_coverge <- list()
  list_MA_5_benchmark_SW <- list()
  list_MA_5_benchmark_SW_SE <- list()
  list_MA_5_benchmark_SW_95width <- list()
  list_MA_5_benchmark_SW_coverge <- list()
  list_MA_5_benchmark_OU <- list()
  list_MA_5_benchmark_OU_SE <- list()
  list_MA_5_benchmark_OU_95width <- list()
  list_MA_5_benchmark_OU_coverge <- list()
  
  list_mice_UASI80_RT_pred <- list()
  list_mice_UASI80_UT_pred <- list()
  list_mice_UASI80_SW_pred <- list()
  list_mice_UASI80_OU_pred <- list()
  list_mice_UASI80_RT_SE <- list()
  list_mice_UASI80_UT_SE <- list()
  list_mice_UASI80_SW_SE <- list()
  list_mice_UASI80_OU_SE <- list()
  list_mice_UASI80_RT_95width <- list()
  list_mice_UASI80_UT_95width <- list()
  list_mice_UASI80_SW_95width <- list()
  list_mice_UASI80_OU_95width <- list()
  list_mice_UASI80_RT_coverge <- list()
  list_mice_UASI80_UT_coverge <- list()
  list_mice_UASI80_SW_coverge <- list()
  list_mice_UASI80_OU_coverge <- list()
  
  list_mice_UASI50_RT_pred <- list()
  list_mice_UASI50_UT_pred <- list()
  list_mice_UASI50_SW_pred <- list()
  list_mice_UASI50_OU_pred <- list()
  list_mice_UASI50_RT_SE <- list()
  list_mice_UASI50_UT_SE <- list()
  list_mice_UASI50_SW_SE <- list()
  list_mice_UASI50_OU_SE <- list()
  list_mice_UASI50_RT_95width <- list()
  list_mice_UASI50_UT_95width <- list()
  list_mice_UASI50_SW_95width <- list()
  list_mice_UASI50_OU_95width <- list()
  list_mice_UASI50_RT_coverge <- list()
  list_mice_UASI50_UT_coverge <- list()
  list_mice_UASI50_SW_coverge <- list()
  list_mice_UASI50_OU_coverge <- list()
  
  list_mice_UASI20_RT_pred <- list()
  list_mice_UASI20_UT_pred <- list()
  list_mice_UASI20_SW_pred <- list()
  list_mice_UASI20_OU_pred <- list()
  list_mice_UASI20_RT_SE <- list()
  list_mice_UASI20_UT_SE <- list()
  list_mice_UASI20_SW_SE <- list()
  list_mice_UASI20_OU_SE <- list()
  list_mice_UASI20_RT_95width <- list()
  list_mice_UASI20_UT_95width <- list()
  list_mice_UASI20_SW_95width <- list()
  list_mice_UASI20_OU_95width <- list()
  list_mice_UASI20_RT_coverge <- list()
  list_mice_UASI20_UT_coverge <- list()
  list_mice_UASI20_SW_coverge <- list()
  list_mice_UASI20_OU_coverge <- list()
  
  list_mice_UASI5_RT_pred <- list()
  list_mice_UASI5_UT_pred <- list()
  list_mice_UASI5_SW_pred <- list()
  list_mice_UASI5_OU_pred <- list()
  list_mice_UASI5_RT_SE <- list()
  list_mice_UASI5_UT_SE <- list()
  list_mice_UASI5_SW_SE <- list()
  list_mice_UASI5_OU_SE <- list()
  list_mice_UASI5_RT_95width <- list()
  list_mice_UASI5_UT_95width <- list()
  list_mice_UASI5_SW_95width <- list()
  list_mice_UASI5_OU_95width <- list()
  list_mice_UASI5_RT_coverge <- list()
  list_mice_UASI5_UT_coverge <- list()
  list_mice_UASI5_SW_coverge <- list()
  list_mice_UASI5_OU_coverge <- list()
  
  list_mice_MASI80_RT_pred <- list()
  list_mice_MASI80_UT_pred <- list()
  list_mice_MASI80_SW_pred <- list()
  list_mice_MASI80_OU_pred <- list()
  list_mice_MASI80_RT_SE <- list()
  list_mice_MASI80_UT_SE <- list()
  list_mice_MASI80_SW_SE <- list()
  list_mice_MASI80_OU_SE <- list()
  list_mice_MASI80_RT_95width <- list()
  list_mice_MASI80_UT_95width <- list()
  list_mice_MASI80_SW_95width <- list()
  list_mice_MASI80_OU_95width <- list()
  list_mice_MASI80_RT_coverge <- list()
  list_mice_MASI80_UT_coverge <- list()
  list_mice_MASI80_SW_coverge <- list()
  list_mice_MASI80_OU_coverge <- list()
  
  list_mice_MASI50_RT_pred <- list()
  list_mice_MASI50_UT_pred <- list()
  list_mice_MASI50_SW_pred <- list()
  list_mice_MASI50_OU_pred <- list()
  list_mice_MASI50_RT_SE <- list()
  list_mice_MASI50_UT_SE <- list()
  list_mice_MASI50_SW_SE <- list()
  list_mice_MASI50_OU_SE <- list()
  list_mice_MASI50_RT_95width <- list()
  list_mice_MASI50_UT_95width <- list()
  list_mice_MASI50_SW_95width <- list()
  list_mice_MASI50_OU_95width <- list()
  list_mice_MASI50_RT_coverge <- list()
  list_mice_MASI50_UT_coverge <- list()
  list_mice_MASI50_SW_coverge <- list()
  list_mice_MASI50_OU_coverge <- list()
  
  list_mice_MASI20_RT_pred <- list()
  list_mice_MASI20_UT_pred <- list()
  list_mice_MASI20_SW_pred <- list()
  list_mice_MASI20_OU_pred <- list()
  list_mice_MASI20_RT_SE <- list()
  list_mice_MASI20_UT_SE <- list()
  list_mice_MASI20_SW_SE <- list()
  list_mice_MASI20_OU_SE <- list()
  list_mice_MASI20_RT_95width <- list()
  list_mice_MASI20_UT_95width <- list()
  list_mice_MASI20_SW_95width <- list()
  list_mice_MASI20_OU_95width <- list()
  list_mice_MASI20_RT_coverge <- list()
  list_mice_MASI20_UT_coverge <- list()
  list_mice_MASI20_SW_coverge <- list()
  list_mice_MASI20_OU_coverge <- list()
  
  list_mice_MASI5_RT_pred <- list()
  list_mice_MASI5_UT_pred <- list()
  list_mice_MASI5_SW_pred <- list()
  list_mice_MASI5_OU_pred <- list()
  list_mice_MASI5_RT_SE <- list()
  list_mice_MASI5_UT_SE <- list()
  list_mice_MASI5_SW_SE <- list()
  list_mice_MASI5_OU_SE <- list()
  list_mice_MASI5_RT_95width <- list()
  list_mice_MASI5_UT_95width <- list()
  list_mice_MASI5_SW_95width <- list()
  list_mice_MASI5_OU_95width <- list()
  list_mice_MASI5_RT_coverge <- list()
  list_mice_MASI5_UT_coverge <- list()
  list_mice_MASI5_SW_coverge <- list()
  list_mice_MASI5_OU_coverge <- list()
  
  list_mice_UAMI80_RT_pred <- list()
  list_mice_UAMI80_UT_pred <- list()
  list_mice_UAMI80_SW_pred <- list()
  list_mice_UAMI80_OU_pred <- list()
  list_mice_UAMI80_RT_SE <- list()
  list_mice_UAMI80_UT_SE <- list()
  list_mice_UAMI80_SW_SE <- list()
  list_mice_UAMI80_OU_SE <- list()
  list_mice_UAMI80_RT_95width <- list()
  list_mice_UAMI80_UT_95width <- list()
  list_mice_UAMI80_SW_95width <- list()
  list_mice_UAMI80_OU_95width <- list()
  list_mice_UAMI80_RT_coverge <- list()
  list_mice_UAMI80_UT_coverge <- list()
  list_mice_UAMI80_SW_coverge <- list()
  list_mice_UAMI80_OU_coverge <- list()
  
  list_mice_UAMI50_RT_pred <- list()
  list_mice_UAMI50_UT_pred <- list()
  list_mice_UAMI50_SW_pred <- list()
  list_mice_UAMI50_OU_pred <- list()
  list_mice_UAMI50_RT_SE <- list()
  list_mice_UAMI50_UT_SE <- list()
  list_mice_UAMI50_SW_SE <- list()
  list_mice_UAMI50_OU_SE <- list()
  list_mice_UAMI50_RT_95width <- list()
  list_mice_UAMI50_UT_95width <- list()
  list_mice_UAMI50_SW_95width <- list()
  list_mice_UAMI50_OU_95width <- list()
  list_mice_UAMI50_RT_coverge <- list()
  list_mice_UAMI50_UT_coverge <- list()
  list_mice_UAMI50_SW_coverge <- list()
  list_mice_UAMI50_OU_coverge <- list()
  
  list_mice_UAMI20_RT_pred <- list()
  list_mice_UAMI20_UT_pred <- list()
  list_mice_UAMI20_SW_pred <- list()
  list_mice_UAMI20_OU_pred <- list()
  list_mice_UAMI20_RT_SE <- list()
  list_mice_UAMI20_UT_SE <- list()
  list_mice_UAMI20_SW_SE <- list()
  list_mice_UAMI20_OU_SE <- list()
  list_mice_UAMI20_RT_95width <- list()
  list_mice_UAMI20_UT_95width <- list()
  list_mice_UAMI20_SW_95width <- list()
  list_mice_UAMI20_OU_95width <- list()
  list_mice_UAMI20_RT_coverge <- list()
  list_mice_UAMI20_UT_coverge <- list()
  list_mice_UAMI20_SW_coverge <- list()
  list_mice_UAMI20_OU_coverge <- list()
  
  list_mice_UAMI5_RT_pred <- list()
  list_mice_UAMI5_UT_pred <- list()
  list_mice_UAMI5_SW_pred <- list()
  list_mice_UAMI5_OU_pred <- list()
  list_mice_UAMI5_RT_SE <- list()
  list_mice_UAMI5_UT_SE <- list()
  list_mice_UAMI5_SW_SE <- list()
  list_mice_UAMI5_OU_SE <- list()
  list_mice_UAMI5_RT_95width <- list()
  list_mice_UAMI5_UT_95width <- list()
  list_mice_UAMI5_SW_95width <- list()
  list_mice_UAMI5_OU_95width <- list()
  list_mice_UAMI5_RT_coverge <- list()
  list_mice_UAMI5_UT_coverge <- list()
  list_mice_UAMI5_SW_coverge <- list()
  list_mice_UAMI5_OU_coverge <- list()
  
  list_mice_MAMI80_RT_pred <- list()
  list_mice_MAMI80_UT_pred <- list()
  list_mice_MAMI80_SW_pred <- list()
  list_mice_MAMI80_OU_pred <- list()
  list_mice_MAMI80_RT_SE <- list()
  list_mice_MAMI80_UT_SE <- list()
  list_mice_MAMI80_SW_SE <- list()
  list_mice_MAMI80_OU_SE <- list()
  list_mice_MAMI80_RT_95width <- list()
  list_mice_MAMI80_UT_95width <- list()
  list_mice_MAMI80_SW_95width <- list()
  list_mice_MAMI80_OU_95width <- list()
  list_mice_MAMI80_RT_coverge <- list()
  list_mice_MAMI80_UT_coverge <- list()
  list_mice_MAMI80_SW_coverge <- list()
  list_mice_MAMI80_OU_coverge <- list()
  
  list_mice_MAMI50_RT_pred <- list()
  list_mice_MAMI50_UT_pred <- list()
  list_mice_MAMI50_SW_pred <- list()
  list_mice_MAMI50_OU_pred <- list()
  list_mice_MAMI50_RT_SE <- list()
  list_mice_MAMI50_UT_SE <- list()
  list_mice_MAMI50_SW_SE <- list()
  list_mice_MAMI50_OU_SE <- list()
  list_mice_MAMI50_RT_95width <- list()
  list_mice_MAMI50_UT_95width <- list()
  list_mice_MAMI50_SW_95width <- list()
  list_mice_MAMI50_OU_95width <- list()
  list_mice_MAMI50_RT_coverge <- list()
  list_mice_MAMI50_UT_coverge <- list()
  list_mice_MAMI50_SW_coverge <- list()
  list_mice_MAMI50_OU_coverge <- list()
  
  list_mice_MAMI20_RT_pred <- list()
  list_mice_MAMI20_UT_pred <- list()
  list_mice_MAMI20_SW_pred <- list()
  list_mice_MAMI20_OU_pred <- list()
  list_mice_MAMI20_RT_SE <- list()
  list_mice_MAMI20_UT_SE <- list()
  list_mice_MAMI20_SW_SE <- list()
  list_mice_MAMI20_OU_SE <- list()
  list_mice_MAMI20_RT_95width <- list()
  list_mice_MAMI20_UT_95width <- list()
  list_mice_MAMI20_SW_95width <- list()
  list_mice_MAMI20_OU_95width <- list()
  list_mice_MAMI20_RT_coverge <- list()
  list_mice_MAMI20_UT_coverge <- list()
  list_mice_MAMI20_SW_coverge <- list()
  list_mice_MAMI20_OU_coverge <- list()
  
  list_mice_MAMI5_RT_pred <- list()
  list_mice_MAMI5_UT_pred <- list()
  list_mice_MAMI5_SW_pred <- list()
  list_mice_MAMI5_OU_pred <- list()
  list_mice_MAMI5_RT_SE <- list()
  list_mice_MAMI5_UT_SE <- list()
  list_mice_MAMI5_SW_SE <- list()
  list_mice_MAMI5_OU_SE <- list()
  list_mice_MAMI5_RT_95width <- list()
  list_mice_MAMI5_UT_95width <- list()
  list_mice_MAMI5_SW_95width <- list()
  list_mice_MAMI5_OU_95width <- list()
  list_mice_MAMI5_RT_coverge <- list()
  list_mice_MAMI5_UT_coverge <- list()
  list_mice_MAMI5_SW_coverge <- list()
  list_mice_MAMI5_OU_coverge <- list()
  
  list_multinom_UASI80_RT_pred <- list()
  list_multinom_UASI80_UT_pred <- list()
  list_multinom_UASI80_SW_pred <- list()
  list_multinom_UASI80_OU_pred <- list()
  list_multinom_UASI80_RT_SE <- list()
  list_multinom_UASI80_UT_SE <- list()
  list_multinom_UASI80_SW_SE <- list()
  list_multinom_UASI80_OU_SE <- list()
  list_multinom_UASI80_RT_95width <- list()
  list_multinom_UASI80_UT_95width <- list()
  list_multinom_UASI80_SW_95width <- list()
  list_multinom_UASI80_OU_95width <- list()
  list_multinom_UASI80_RT_coverge <- list()
  list_multinom_UASI80_UT_coverge <- list()
  list_multinom_UASI80_SW_coverge <- list()
  list_multinom_UASI80_OU_coverge <- list()
  
  list_multinom_UASI50_RT_pred <- list()
  list_multinom_UASI50_UT_pred <- list()
  list_multinom_UASI50_SW_pred <- list()
  list_multinom_UASI50_OU_pred <- list()
  list_multinom_UASI50_RT_SE <- list()
  list_multinom_UASI50_UT_SE <- list()
  list_multinom_UASI50_SW_SE <- list()
  list_multinom_UASI50_OU_SE <- list()
  list_multinom_UASI50_RT_95width <- list()
  list_multinom_UASI50_UT_95width <- list()
  list_multinom_UASI50_SW_95width <- list()
  list_multinom_UASI50_OU_95width <- list()
  list_multinom_UASI50_RT_coverge <- list()
  list_multinom_UASI50_UT_coverge <- list()
  list_multinom_UASI50_SW_coverge <- list()
  list_multinom_UASI50_OU_coverge <- list()
  
  list_multinom_UASI20_RT_pred <- list()
  list_multinom_UASI20_UT_pred <- list()
  list_multinom_UASI20_SW_pred <- list()
  list_multinom_UASI20_OU_pred <- list()
  list_multinom_UASI20_RT_SE <- list()
  list_multinom_UASI20_UT_SE <- list()
  list_multinom_UASI20_SW_SE <- list()
  list_multinom_UASI20_OU_SE <- list()
  list_multinom_UASI20_RT_95width <- list()
  list_multinom_UASI20_UT_95width <- list()
  list_multinom_UASI20_SW_95width <- list()
  list_multinom_UASI20_OU_95width <- list()
  list_multinom_UASI20_RT_coverge <- list()
  list_multinom_UASI20_UT_coverge <- list()
  list_multinom_UASI20_SW_coverge <- list()
  list_multinom_UASI20_OU_coverge <- list()
  
  list_multinom_UASI5_RT_pred <- list()
  list_multinom_UASI5_UT_pred <- list()
  list_multinom_UASI5_SW_pred <- list()
  list_multinom_UASI5_OU_pred <- list()
  list_multinom_UASI5_RT_SE <- list()
  list_multinom_UASI5_UT_SE <- list()
  list_multinom_UASI5_SW_SE <- list()
  list_multinom_UASI5_OU_SE <- list()
  list_multinom_UASI5_RT_95width <- list()
  list_multinom_UASI5_UT_95width <- list()
  list_multinom_UASI5_SW_95width <- list()
  list_multinom_UASI5_OU_95width <- list()
  list_multinom_UASI5_RT_coverge <- list()
  list_multinom_UASI5_UT_coverge <- list()
  list_multinom_UASI5_SW_coverge <- list()
  list_multinom_UASI5_OU_coverge <- list()
  
  list_multinom_MASI80_RT_pred <- list()
  list_multinom_MASI80_UT_pred <- list()
  list_multinom_MASI80_SW_pred <- list()
  list_multinom_MASI80_OU_pred <- list()
  list_multinom_MASI80_RT_SE <- list()
  list_multinom_MASI80_UT_SE <- list()
  list_multinom_MASI80_SW_SE <- list()
  list_multinom_MASI80_OU_SE <- list()
  list_multinom_MASI80_RT_95width <- list()
  list_multinom_MASI80_UT_95width <- list()
  list_multinom_MASI80_SW_95width <- list()
  list_multinom_MASI80_OU_95width <- list()
  list_multinom_MASI80_RT_coverge <- list()
  list_multinom_MASI80_UT_coverge <- list()
  list_multinom_MASI80_SW_coverge <- list()
  list_multinom_MASI80_OU_coverge <- list()
  
  list_multinom_MASI50_RT_pred <- list()
  list_multinom_MASI50_UT_pred <- list()
  list_multinom_MASI50_SW_pred <- list()
  list_multinom_MASI50_OU_pred <- list()
  list_multinom_MASI50_RT_SE <- list()
  list_multinom_MASI50_UT_SE <- list()
  list_multinom_MASI50_SW_SE <- list()
  list_multinom_MASI50_OU_SE <- list()
  list_multinom_MASI50_RT_95width <- list()
  list_multinom_MASI50_UT_95width <- list()
  list_multinom_MASI50_SW_95width <- list()
  list_multinom_MASI50_OU_95width <- list()
  list_multinom_MASI50_RT_coverge <- list()
  list_multinom_MASI50_UT_coverge <- list()
  list_multinom_MASI50_SW_coverge <- list()
  list_multinom_MASI50_OU_coverge <- list()
  
  list_multinom_MASI20_RT_pred <- list()
  list_multinom_MASI20_UT_pred <- list()
  list_multinom_MASI20_SW_pred <- list()
  list_multinom_MASI20_OU_pred <- list()
  list_multinom_MASI20_RT_SE <- list()
  list_multinom_MASI20_UT_SE <- list()
  list_multinom_MASI20_SW_SE <- list()
  list_multinom_MASI20_OU_SE <- list()
  list_multinom_MASI20_RT_95width <- list()
  list_multinom_MASI20_UT_95width <- list()
  list_multinom_MASI20_SW_95width <- list()
  list_multinom_MASI20_OU_95width <- list()
  list_multinom_MASI20_RT_coverge <- list()
  list_multinom_MASI20_UT_coverge <- list()
  list_multinom_MASI20_SW_coverge <- list()
  list_multinom_MASI20_OU_coverge <- list()
  
  list_multinom_MASI5_RT_pred <- list()
  list_multinom_MASI5_UT_pred <- list()
  list_multinom_MASI5_SW_pred <- list()
  list_multinom_MASI5_OU_pred <- list()
  list_multinom_MASI5_RT_SE <- list()
  list_multinom_MASI5_UT_SE <- list()
  list_multinom_MASI5_SW_SE <- list()
  list_multinom_MASI5_OU_SE <- list()
  list_multinom_MASI5_RT_95width <- list()
  list_multinom_MASI5_UT_95width <- list()
  list_multinom_MASI5_SW_95width <- list()
  list_multinom_MASI5_OU_95width <- list()
  list_multinom_MASI5_RT_coverge <- list()
  list_multinom_MASI5_UT_coverge <- list()
  list_multinom_MASI5_SW_coverge <- list()
  list_multinom_MASI5_OU_coverge <- list()
  
  list_multinom_UAMI80_RT_pred <- list()
  list_multinom_UAMI80_UT_pred <- list()
  list_multinom_UAMI80_SW_pred <- list()
  list_multinom_UAMI80_OU_pred <- list()
  list_multinom_UAMI80_RT_SE <- list()
  list_multinom_UAMI80_UT_SE <- list()
  list_multinom_UAMI80_SW_SE <- list()
  list_multinom_UAMI80_OU_SE <- list()
  list_multinom_UAMI80_RT_95width <- list()
  list_multinom_UAMI80_UT_95width <- list()
  list_multinom_UAMI80_SW_95width <- list()
  list_multinom_UAMI80_OU_95width <- list()
  list_multinom_UAMI80_RT_coverge <- list()
  list_multinom_UAMI80_UT_coverge <- list()
  list_multinom_UAMI80_SW_coverge <- list()
  list_multinom_UAMI80_OU_coverge <- list()
  
  list_multinom_UAMI50_RT_pred <- list()
  list_multinom_UAMI50_UT_pred <- list()
  list_multinom_UAMI50_SW_pred <- list()
  list_multinom_UAMI50_OU_pred <- list()
  list_multinom_UAMI50_RT_SE <- list()
  list_multinom_UAMI50_UT_SE <- list()
  list_multinom_UAMI50_SW_SE <- list()
  list_multinom_UAMI50_OU_SE <- list()
  list_multinom_UAMI50_RT_95width <- list()
  list_multinom_UAMI50_UT_95width <- list()
  list_multinom_UAMI50_SW_95width <- list()
  list_multinom_UAMI50_OU_95width <- list()
  list_multinom_UAMI50_RT_coverge <- list()
  list_multinom_UAMI50_UT_coverge <- list()
  list_multinom_UAMI50_SW_coverge <- list()
  list_multinom_UAMI50_OU_coverge <- list()
  
  list_multinom_UAMI20_RT_pred <- list()
  list_multinom_UAMI20_UT_pred <- list()
  list_multinom_UAMI20_SW_pred <- list()
  list_multinom_UAMI20_OU_pred <- list()
  list_multinom_UAMI20_RT_SE <- list()
  list_multinom_UAMI20_UT_SE <- list()
  list_multinom_UAMI20_SW_SE <- list()
  list_multinom_UAMI20_OU_SE <- list()
  list_multinom_UAMI20_RT_95width <- list()
  list_multinom_UAMI20_UT_95width <- list()
  list_multinom_UAMI20_SW_95width <- list()
  list_multinom_UAMI20_OU_95width <- list()
  list_multinom_UAMI20_RT_coverge <- list()
  list_multinom_UAMI20_UT_coverge <- list()
  list_multinom_UAMI20_SW_coverge <- list()
  list_multinom_UAMI20_OU_coverge <- list()
  
  list_multinom_UAMI5_RT_pred <- list()
  list_multinom_UAMI5_UT_pred <- list()
  list_multinom_UAMI5_SW_pred <- list()
  list_multinom_UAMI5_OU_pred <- list()
  list_multinom_UAMI5_RT_SE <- list()
  list_multinom_UAMI5_UT_SE <- list()
  list_multinom_UAMI5_SW_SE <- list()
  list_multinom_UAMI5_OU_SE <- list()
  list_multinom_UAMI5_RT_95width <- list()
  list_multinom_UAMI5_UT_95width <- list()
  list_multinom_UAMI5_SW_95width <- list()
  list_multinom_UAMI5_OU_95width <- list()
  list_multinom_UAMI5_RT_coverge <- list()
  list_multinom_UAMI5_UT_coverge <- list()
  list_multinom_UAMI5_SW_coverge <- list()
  list_multinom_UAMI5_OU_coverge <- list()
  
  list_multinom_MAMI80_RT_pred <- list()
  list_multinom_MAMI80_UT_pred <- list()
  list_multinom_MAMI80_SW_pred <- list()
  list_multinom_MAMI80_OU_pred <- list()
  list_multinom_MAMI80_RT_SE <- list()
  list_multinom_MAMI80_UT_SE <- list()
  list_multinom_MAMI80_SW_SE <- list()
  list_multinom_MAMI80_OU_SE <- list()
  list_multinom_MAMI80_RT_95width <- list()
  list_multinom_MAMI80_UT_95width <- list()
  list_multinom_MAMI80_SW_95width <- list()
  list_multinom_MAMI80_OU_95width <- list()
  list_multinom_MAMI80_RT_coverge <- list()
  list_multinom_MAMI80_UT_coverge <- list()
  list_multinom_MAMI80_SW_coverge <- list()
  list_multinom_MAMI80_OU_coverge <- list()
  
  list_multinom_MAMI50_RT_pred <- list()
  list_multinom_MAMI50_UT_pred <- list()
  list_multinom_MAMI50_SW_pred <- list()
  list_multinom_MAMI50_OU_pred <- list()
  list_multinom_MAMI50_RT_SE <- list()
  list_multinom_MAMI50_UT_SE <- list()
  list_multinom_MAMI50_SW_SE <- list()
  list_multinom_MAMI50_OU_SE <- list()
  list_multinom_MAMI50_RT_95width <- list()
  list_multinom_MAMI50_UT_95width <- list()
  list_multinom_MAMI50_SW_95width <- list()
  list_multinom_MAMI50_OU_95width <- list()
  list_multinom_MAMI50_RT_coverge <- list()
  list_multinom_MAMI50_UT_coverge <- list()
  list_multinom_MAMI50_SW_coverge <- list()
  list_multinom_MAMI50_OU_coverge <- list()
  
  list_multinom_MAMI20_RT_pred <- list()
  list_multinom_MAMI20_UT_pred <- list()
  list_multinom_MAMI20_SW_pred <- list()
  list_multinom_MAMI20_OU_pred <- list()
  list_multinom_MAMI20_RT_SE <- list()
  list_multinom_MAMI20_UT_SE <- list()
  list_multinom_MAMI20_SW_SE <- list()
  list_multinom_MAMI20_OU_SE <- list()
  list_multinom_MAMI20_RT_95width <- list()
  list_multinom_MAMI20_UT_95width <- list()
  list_multinom_MAMI20_SW_95width <- list()
  list_multinom_MAMI20_OU_95width <- list()
  list_multinom_MAMI20_RT_coverge <- list()
  list_multinom_MAMI20_UT_coverge <- list()
  list_multinom_MAMI20_SW_coverge <- list()
  list_multinom_MAMI20_OU_coverge <- list()
  
  list_multinom_MAMI5_RT_pred <- list()
  list_multinom_MAMI5_UT_pred <- list()
  list_multinom_MAMI5_SW_pred <- list()
  list_multinom_MAMI5_OU_pred <- list()
  list_multinom_MAMI5_RT_SE <- list()
  list_multinom_MAMI5_UT_SE <- list()
  list_multinom_MAMI5_SW_SE <- list()
  list_multinom_MAMI5_OU_SE <- list()
  list_multinom_MAMI5_RT_95width <- list()
  list_multinom_MAMI5_UT_95width <- list()
  list_multinom_MAMI5_SW_95width <- list()
  list_multinom_MAMI5_OU_95width <- list()
  list_multinom_MAMI5_RT_coverge <- list()
  list_multinom_MAMI5_UT_coverge <- list()
  list_multinom_MAMI5_SW_coverge <- list()
  list_multinom_MAMI5_OU_coverge <- list()
  
  list_nnet_UASI80_RT_pred <- list()
  list_nnet_UASI80_UT_pred <- list()
  list_nnet_UASI80_SW_pred <- list()
  list_nnet_UASI80_OU_pred <- list()
  list_nnet_UASI80_RT_SE <- list()
  list_nnet_UASI80_UT_SE <- list()
  list_nnet_UASI80_SW_SE <- list()
  list_nnet_UASI80_OU_SE <- list()
  list_nnet_UASI80_RT_95width <- list()
  list_nnet_UASI80_UT_95width <- list()
  list_nnet_UASI80_SW_95width <- list()
  list_nnet_UASI80_OU_95width <- list()
  list_nnet_UASI80_RT_coverge <- list()
  list_nnet_UASI80_UT_coverge <- list()
  list_nnet_UASI80_SW_coverge <- list()
  list_nnet_UASI80_OU_coverge <- list()
  
  list_nnet_UASI50_RT_pred <- list()
  list_nnet_UASI50_UT_pred <- list()
  list_nnet_UASI50_SW_pred <- list()
  list_nnet_UASI50_OU_pred <- list()
  list_nnet_UASI50_RT_SE <- list()
  list_nnet_UASI50_UT_SE <- list()
  list_nnet_UASI50_SW_SE <- list()
  list_nnet_UASI50_OU_SE <- list()
  list_nnet_UASI50_RT_95width <- list()
  list_nnet_UASI50_UT_95width <- list()
  list_nnet_UASI50_SW_95width <- list()
  list_nnet_UASI50_OU_95width <- list()
  list_nnet_UASI50_RT_coverge <- list()
  list_nnet_UASI50_UT_coverge <- list()
  list_nnet_UASI50_SW_coverge <- list()
  list_nnet_UASI50_OU_coverge <- list()
  
  list_nnet_UASI20_RT_pred <- list()
  list_nnet_UASI20_UT_pred <- list()
  list_nnet_UASI20_SW_pred <- list()
  list_nnet_UASI20_OU_pred <- list()
  list_nnet_UASI20_RT_SE <- list()
  list_nnet_UASI20_UT_SE <- list()
  list_nnet_UASI20_SW_SE <- list()
  list_nnet_UASI20_OU_SE <- list()
  list_nnet_UASI20_RT_95width <- list()
  list_nnet_UASI20_UT_95width <- list()
  list_nnet_UASI20_SW_95width <- list()
  list_nnet_UASI20_OU_95width <- list()
  list_nnet_UASI20_RT_coverge <- list()
  list_nnet_UASI20_UT_coverge <- list()
  list_nnet_UASI20_SW_coverge <- list()
  list_nnet_UASI20_OU_coverge <- list()
  
  list_nnet_UASI5_RT_pred <- list()
  list_nnet_UASI5_UT_pred <- list()
  list_nnet_UASI5_SW_pred <- list()
  list_nnet_UASI5_OU_pred <- list()
  list_nnet_UASI5_RT_SE <- list()
  list_nnet_UASI5_UT_SE <- list()
  list_nnet_UASI5_SW_SE <- list()
  list_nnet_UASI5_OU_SE <- list()
  list_nnet_UASI5_RT_95width <- list()
  list_nnet_UASI5_UT_95width <- list()
  list_nnet_UASI5_SW_95width <- list()
  list_nnet_UASI5_OU_95width <- list()
  list_nnet_UASI5_RT_coverge <- list()
  list_nnet_UASI5_UT_coverge <- list()
  list_nnet_UASI5_SW_coverge <- list()
  list_nnet_UASI5_OU_coverge <- list()
  
  list_nnet_MASI80_RT_pred <- list()
  list_nnet_MASI80_UT_pred <- list()
  list_nnet_MASI80_SW_pred <- list()
  list_nnet_MASI80_OU_pred <- list()
  list_nnet_MASI80_RT_SE <- list()
  list_nnet_MASI80_UT_SE <- list()
  list_nnet_MASI80_SW_SE <- list()
  list_nnet_MASI80_OU_SE <- list()
  list_nnet_MASI80_RT_95width <- list()
  list_nnet_MASI80_UT_95width <- list()
  list_nnet_MASI80_SW_95width <- list()
  list_nnet_MASI80_OU_95width <- list()
  list_nnet_MASI80_RT_coverge <- list()
  list_nnet_MASI80_UT_coverge <- list()
  list_nnet_MASI80_SW_coverge <- list()
  list_nnet_MASI80_OU_coverge <- list()
  
  list_nnet_MASI50_RT_pred <- list()
  list_nnet_MASI50_UT_pred <- list()
  list_nnet_MASI50_SW_pred <- list()
  list_nnet_MASI50_OU_pred <- list()
  list_nnet_MASI50_RT_SE <- list()
  list_nnet_MASI50_UT_SE <- list()
  list_nnet_MASI50_SW_SE <- list()
  list_nnet_MASI50_OU_SE <- list()
  list_nnet_MASI50_RT_95width <- list()
  list_nnet_MASI50_UT_95width <- list()
  list_nnet_MASI50_SW_95width <- list()
  list_nnet_MASI50_OU_95width <- list()
  list_nnet_MASI50_RT_coverge <- list()
  list_nnet_MASI50_UT_coverge <- list()
  list_nnet_MASI50_SW_coverge <- list()
  list_nnet_MASI50_OU_coverge <- list()
  
  list_nnet_MASI20_RT_pred <- list()
  list_nnet_MASI20_UT_pred <- list()
  list_nnet_MASI20_SW_pred <- list()
  list_nnet_MASI20_OU_pred <- list()
  list_nnet_MASI20_RT_SE <- list()
  list_nnet_MASI20_UT_SE <- list()
  list_nnet_MASI20_SW_SE <- list()
  list_nnet_MASI20_OU_SE <- list()
  list_nnet_MASI20_RT_95width <- list()
  list_nnet_MASI20_UT_95width <- list()
  list_nnet_MASI20_SW_95width <- list()
  list_nnet_MASI20_OU_95width <- list()
  list_nnet_MASI20_RT_coverge <- list()
  list_nnet_MASI20_UT_coverge <- list()
  list_nnet_MASI20_SW_coverge <- list()
  list_nnet_MASI20_OU_coverge <- list()
  
  list_nnet_MASI5_RT_pred <- list()
  list_nnet_MASI5_UT_pred <- list()
  list_nnet_MASI5_SW_pred <- list()
  list_nnet_MASI5_OU_pred <- list()
  list_nnet_MASI5_RT_SE <- list()
  list_nnet_MASI5_UT_SE <- list()
  list_nnet_MASI5_SW_SE <- list()
  list_nnet_MASI5_OU_SE <- list()
  list_nnet_MASI5_RT_95width <- list()
  list_nnet_MASI5_UT_95width <- list()
  list_nnet_MASI5_SW_95width <- list()
  list_nnet_MASI5_OU_95width <- list()
  list_nnet_MASI5_RT_coverge <- list()
  list_nnet_MASI5_UT_coverge <- list()
  list_nnet_MASI5_SW_coverge <- list()
  list_nnet_MASI5_OU_coverge <- list()
  
  list_nnet_UAMI80_RT_pred <- list()
  list_nnet_UAMI80_UT_pred <- list()
  list_nnet_UAMI80_SW_pred <- list()
  list_nnet_UAMI80_OU_pred <- list()
  list_nnet_UAMI80_RT_SE <- list()
  list_nnet_UAMI80_UT_SE <- list()
  list_nnet_UAMI80_SW_SE <- list()
  list_nnet_UAMI80_OU_SE <- list()
  list_nnet_UAMI80_RT_95width <- list()
  list_nnet_UAMI80_UT_95width <- list()
  list_nnet_UAMI80_SW_95width <- list()
  list_nnet_UAMI80_OU_95width <- list()
  list_nnet_UAMI80_RT_coverge <- list()
  list_nnet_UAMI80_UT_coverge <- list()
  list_nnet_UAMI80_SW_coverge <- list()
  list_nnet_UAMI80_OU_coverge <- list()
  
  list_nnet_UAMI50_RT_pred <- list()
  list_nnet_UAMI50_UT_pred <- list()
  list_nnet_UAMI50_SW_pred <- list()
  list_nnet_UAMI50_OU_pred <- list()
  list_nnet_UAMI50_RT_SE <- list()
  list_nnet_UAMI50_UT_SE <- list()
  list_nnet_UAMI50_SW_SE <- list()
  list_nnet_UAMI50_OU_SE <- list()
  list_nnet_UAMI50_RT_95width <- list()
  list_nnet_UAMI50_UT_95width <- list()
  list_nnet_UAMI50_SW_95width <- list()
  list_nnet_UAMI50_OU_95width <- list()
  list_nnet_UAMI50_RT_coverge <- list()
  list_nnet_UAMI50_UT_coverge <- list()
  list_nnet_UAMI50_SW_coverge <- list()
  list_nnet_UAMI50_OU_coverge <- list()
  
  list_nnet_UAMI20_RT_pred <- list()
  list_nnet_UAMI20_UT_pred <- list()
  list_nnet_UAMI20_SW_pred <- list()
  list_nnet_UAMI20_OU_pred <- list()
  list_nnet_UAMI20_RT_SE <- list()
  list_nnet_UAMI20_UT_SE <- list()
  list_nnet_UAMI20_SW_SE <- list()
  list_nnet_UAMI20_OU_SE <- list()
  list_nnet_UAMI20_RT_95width <- list()
  list_nnet_UAMI20_UT_95width <- list()
  list_nnet_UAMI20_SW_95width <- list()
  list_nnet_UAMI20_OU_95width <- list()
  list_nnet_UAMI20_RT_coverge <- list()
  list_nnet_UAMI20_UT_coverge <- list()
  list_nnet_UAMI20_SW_coverge <- list()
  list_nnet_UAMI20_OU_coverge <- list()
  
  list_nnet_UAMI5_RT_pred <- list()
  list_nnet_UAMI5_UT_pred <- list()
  list_nnet_UAMI5_SW_pred <- list()
  list_nnet_UAMI5_OU_pred <- list()
  list_nnet_UAMI5_RT_SE <- list()
  list_nnet_UAMI5_UT_SE <- list()
  list_nnet_UAMI5_SW_SE <- list()
  list_nnet_UAMI5_OU_SE <- list()
  list_nnet_UAMI5_RT_95width <- list()
  list_nnet_UAMI5_UT_95width <- list()
  list_nnet_UAMI5_SW_95width <- list()
  list_nnet_UAMI5_OU_95width <- list()
  list_nnet_UAMI5_RT_coverge <- list()
  list_nnet_UAMI5_UT_coverge <- list()
  list_nnet_UAMI5_SW_coverge <- list()
  list_nnet_UAMI5_OU_coverge <- list()
  
  list_nnet_MAMI80_RT_pred <- list()
  list_nnet_MAMI80_UT_pred <- list()
  list_nnet_MAMI80_SW_pred <- list()
  list_nnet_MAMI80_OU_pred <- list()
  list_nnet_MAMI80_RT_SE <- list()
  list_nnet_MAMI80_UT_SE <- list()
  list_nnet_MAMI80_SW_SE <- list()
  list_nnet_MAMI80_OU_SE <- list()
  list_nnet_MAMI80_RT_95width <- list()
  list_nnet_MAMI80_UT_95width <- list()
  list_nnet_MAMI80_SW_95width <- list()
  list_nnet_MAMI80_OU_95width <- list()
  list_nnet_MAMI80_RT_coverge <- list()
  list_nnet_MAMI80_UT_coverge <- list()
  list_nnet_MAMI80_SW_coverge <- list()
  list_nnet_MAMI80_OU_coverge <- list()
  
  list_nnet_MAMI50_RT_pred <- list()
  list_nnet_MAMI50_UT_pred <- list()
  list_nnet_MAMI50_SW_pred <- list()
  list_nnet_MAMI50_OU_pred <- list()
  list_nnet_MAMI50_RT_SE <- list()
  list_nnet_MAMI50_UT_SE <- list()
  list_nnet_MAMI50_SW_SE <- list()
  list_nnet_MAMI50_OU_SE <- list()
  list_nnet_MAMI50_RT_95width <- list()
  list_nnet_MAMI50_UT_95width <- list()
  list_nnet_MAMI50_SW_95width <- list()
  list_nnet_MAMI50_OU_95width <- list()
  list_nnet_MAMI50_RT_coverge <- list()
  list_nnet_MAMI50_UT_coverge <- list()
  list_nnet_MAMI50_SW_coverge <- list()
  list_nnet_MAMI50_OU_coverge <- list()
  
  list_nnet_MAMI20_RT_pred <- list()
  list_nnet_MAMI20_UT_pred <- list()
  list_nnet_MAMI20_SW_pred <- list()
  list_nnet_MAMI20_OU_pred <- list()
  list_nnet_MAMI20_RT_SE <- list()
  list_nnet_MAMI20_UT_SE <- list()
  list_nnet_MAMI20_SW_SE <- list()
  list_nnet_MAMI20_OU_SE <- list()
  list_nnet_MAMI20_RT_95width <- list()
  list_nnet_MAMI20_UT_95width <- list()
  list_nnet_MAMI20_SW_95width <- list()
  list_nnet_MAMI20_OU_95width <- list()
  list_nnet_MAMI20_RT_coverge <- list()
  list_nnet_MAMI20_UT_coverge <- list()
  list_nnet_MAMI20_SW_coverge <- list()
  list_nnet_MAMI20_OU_coverge <- list()
  
  list_nnet_MAMI5_RT_pred <- list()
  list_nnet_MAMI5_UT_pred <- list()
  list_nnet_MAMI5_SW_pred <- list()
  list_nnet_MAMI5_OU_pred <- list()
  list_nnet_MAMI5_RT_SE <- list()
  list_nnet_MAMI5_UT_SE <- list()
  list_nnet_MAMI5_SW_SE <- list()
  list_nnet_MAMI5_OU_SE <- list()
  list_nnet_MAMI5_RT_95width <- list()
  list_nnet_MAMI5_UT_95width <- list()
  list_nnet_MAMI5_SW_95width <- list()
  list_nnet_MAMI5_OU_95width <- list()
  list_nnet_MAMI5_RT_coverge <- list()
  list_nnet_MAMI5_UT_coverge <- list()
  list_nnet_MAMI5_SW_coverge <- list()
  list_nnet_MAMI5_OU_coverge <- list()
}

#Marginal Probability
{
  # The probability of each age group
  AGE_p <- c(0.186,0.49,0.324)
  
  # The probability of getting a particular antibiotic based on age
  AntibioticClass_p <- matrix(c(0.406, 0.123, 0.097, 0.041, 0.153, 0.064, 0.079, 0.001, 0.015, 0.004, 0.008,
                                0.275, 0.026, 0.120, 0.066, 0.136, 0.099, 0.140, 0.058, 0.025, 0.023, 0.032,
                                0.216, 0.052, 0.105, 0.046, 0.122, 0.158, 0.109, 0.098, 0.046, 0.030, 0.018), 
                              nrow = 3, byrow = TRUE)
  
  # The probability of having had a particular subcondition conditional on age and sex
  Indication_p <- matrix(c(0.186615187,0.133848134,0.042471042,0.222651223,0.126126126,0.105534106,0.016731017,0,0.02960103,0.002574003,0.002574003,0.019305019,0.055341055,0.047619048,0.009009009,
                           0.00137931,0.033103448,0.754482759,0.011034483,0.005517241,0.022068966,0.059310345,0,0.002758621,0.002758621,0.00137931,0.006896552,0.055172414,0.04137931,0.002758621,
                           0.001329787,0.001329787,0.001329787,0.001329787,0.025265957,0.007978723,0.752659574,0.002659574,0.003989362,0.010638298,0.002659574,0.035904255,0.102393617,0.049202128,0.001329787,
                           0.084977238,0.042488619,0.02276176,0.062215478,0.068285281,0.060698027,0.212443096,0,0.141122914,0.030349014,0.018209408,0.042488619,0.135053111,0.059180577,0.019726859,
                           0.125693161,0.072088725,0.103512015,0.144177449,0.06284658,0.096118299,0.170055453,0.014787431,0.007393715,0.027726433,0.005545287,0.020332717,0.083179298,0.04805915,0.018484288,
                           0.003194888,0.001597444,0.001597444,0.003194888,0.003194888,0.004792332,0.009584665,0.003194888,0.736421725,0.00798722,0.084664537,0.004792332,0.067092652,0.063897764,0.004792332,
                           0.12039312,0.095823096,0.00982801,0.100737101,0.00982801,0.090909091,0.14004914,0.226044226,0.00982801,0.014742015,0.007371007,0.024570025,0.073710074,0.068796069,0.007371007,
                           0.001808318,0,0,0.001808318,0.001808318,0.005424955,0.009041591,0,0.766726944,0.005424955,0.074141049,0.005424955,0.066907776,0.056057866,0.005424955,
                           0.040084388,0.023206751,0.021097046,0.042194093,0.021097046,0.029535865,0.056962025,0,0.470464135,0.018987342,0.044303797,0.014767932,0.128691983,0.063291139,0.025316456,
                           0.047368421,0.010526316,0.003508772,0.033333333,0.042105263,0.038596491,0.056140351,0,0.331578947,0.061403509,0.103508772,0.015789474,0.128070175,0.056140351,0.071929825,
                           0.016018307,0.009153318,0.011441648,0.018306636,0.013729977,0.027459954,0.171624714,0.00228833,0.04576659,0.233409611,0.027459954,0.064073227,0.185354691,0.054919908,0.118993135),
                         nrow = 11 , byrow = TRUE)
  
  # Calculate the marginal probability (averaged across age and antibiotics) of having each subcondition
  Indication_dist <- AGE_p %*% AntibioticClass_p %*% Indication_p # <-- this is matrix multiplication
  
  RT_true <- sum(Indication_dist[1:6])   # The marginal probability of having RT
  SW_true <- sum(Indication_dist[7:8])   # The marginal probability of having SW
  UT_true <- sum(Indication_dist[9:11])   # The marginal probability of having UT
  OU_true <- sum(Indication_dist[12:15])   # The marginal probability of having OU
}

for (i in 101:200){
  #simulation
  {
    set.seed(i)
    SEX <- sample(c(1,2), 10000, replace=TRUE, prob=c(0.374,0.626))
    AGE <- sample(c(1,2,3), 10000, replace=TRUE, prob=c(0.186,0.49,0.324))
    
    AntibioticClass <- rep(NA, 10000)
    AntibioticClass[AGE == 1] <- sample(c(1:11), length(AGE[AGE == 1]), replace=TRUE, prob=c(0.406, 0.123, 0.097, 0.041, 0.153, 0.064, 0.079, 0.01, 0.015, 0.004, 0.008))
    AntibioticClass[AGE == 2] <- sample(c(1:11), length(AGE[AGE == 2]), replace=TRUE, prob=c(0.275, 0.026, 0.12, 0.066, 0.136, 0.099, 0.14, 0.058, 0.025, 0.023, 0.032))
    AntibioticClass[AGE == 3] <- sample(c(1:11), length(AGE[AGE == 3]), replace=TRUE, prob=c(0.216, 0.052, 0.105, 0.046, 0.122, 0.158, 0.109, 0.098, 0.046, 0.03, 0.018))
    
    Indication <- rep(NA, 10000)
    Indication[AntibioticClass == 1] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 1]), replace=TRUE, prob=c(0.635, 0.027, 0.013, 0.102))
    Indication[AntibioticClass == 2] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 2]), replace=TRUE, prob=c(0.6, 0.005, 0.043, 0.077))
    Indication[AntibioticClass == 3] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 3]), replace=TRUE, prob=c(0.029, 0.013, 0.568, 0.142))
    Indication[AntibioticClass == 4] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 4]), replace=TRUE, prob=c(0.225, 0.125, 0.14, 0.169))
    Indication[AntibioticClass == 5] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 5]), replace=TRUE, prob=c(0.327, 0.022, 0.1, 0.092))
    Indication[AntibioticClass == 6] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 6]), replace=TRUE, prob=c(0.011, 0.519, 0.008, 0.088))
    Indication[AntibioticClass == 7] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 7]), replace=TRUE, prob=c(0.174, 0.013, 0.149, 0.071))
    Indication[AntibioticClass == 8] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 8]), replace=TRUE, prob=c(0.006, 0.468, 0.005, 0.074))
    Indication[AntibioticClass == 9] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 9]), replace=TRUE, prob=c(0.084, 0.253, 0.027, 0.11))
    Indication[AntibioticClass == 10] <- sample(c(1:4), length(AntibioticClass[AntibioticClass ==10]), replace=TRUE, prob=c(0.1, 0.283, 0.032, 0.155))
    Indication[AntibioticClass == 11] <- sample(c(1:4), length(AntibioticClass[AntibioticClass == 11]), replace=TRUE, prob=c(0.042, 0.134, 0.076, 0.185))
    
    simulated <- data.frame(SEX, AGE, AntibioticClass, Indication)
    #View(simulated)
    
    simulated$SEX[SEX == 1] <- "Male"
    simulated$SEX[SEX == 2] <- "Female"
    simulated$SEX <- factor(simulated$SEX, levels= c("Male", "Female"))
    
    simulated$AGE[AGE == 1] <- "< 19"
    simulated$AGE[AGE == 2] <- "19 - 65"
    simulated$AGE[AGE == 3] <- "> 65"
    simulated$AGE <- factor(simulated$AGE, levels= c("< 19", "19 - 65", "> 65"))
    
    simulated$AntibioticClass[AntibioticClass == 1] <- "Extended-spectrum penicillins"
    simulated$AntibioticClass[AntibioticClass == 2] <- "B-Lactamase-sensitive penicillins"
    simulated$AntibioticClass[AntibioticClass == 3] <- "B-Lactamase-resistant penicillins"
    simulated$AntibioticClass[AntibioticClass == 4] <- "Penicillin combinations"
    simulated$AntibioticClass[AntibioticClass == 5] <- "Macrolides, lincosamides and streptogramins"
    simulated$AntibioticClass[AntibioticClass == 6] <- "Sulphonamides and trimethoprim"
    simulated$AntibioticClass[AntibioticClass == 7] <- "Tetracyclines"
    simulated$AntibioticClass[AntibioticClass == 8] <- "Nitrofurantoin"
    simulated$AntibioticClass[AntibioticClass == 9] <- "Other B-lactam antibacterials"
    simulated$AntibioticClass[AntibioticClass == 10] <- "Quinolones"
    simulated$AntibioticClass[AntibioticClass == 11] <- "Others"
    simulated$AntibioticClass <- factor(simulated$AntibioticClass, levels= c("Extended-spectrum penicillins", "B-Lactamase-sensitive penicillins", "B-Lactamase-resistant penicillins", "Penicillin combinations", "Macrolides, lincosamides and streptogramins", "Sulphonamides and trimethoprim", "Tetracyclines", "Nitrofurantoin", "Other B-lactam antibacterials", "Quinolones", "Others"))
    
    simulated$Indication[Indication == 1] <- "RT/ENT"
    simulated$Indication[Indication == 2] <- "Urogenital Tract"
    simulated$Indication[Indication == 3] <- "Skin and Wounds"
    simulated$Indication[Indication == 4] <- "Other and unknown body system"
    simulated$Indication <- factor(simulated$Indication, levels= c("RT/ENT", "Urogenital Tract", "Skin and Wounds", "Other and unknown body system"))
    #View(simulated)
    
    write.csv(simulated, paste(file = "~/Desktop/dissertation/dataset/simulated/simulated",i,".csv"))
  }
  
  #amputation
  {
    UA_80 <- simulated
    set.seed(19)
    #UA_80 <- ampute(data = simulated, mech = 'MAR', freq = c(1/3,1/3,0,1/3), prop = 0.8)$amp
    UA_80$SEX[sample(c(TRUE, FALSE), nrow(UA_80), replace = TRUE, prob = c(0.4151965, 0.5848035))] <- NA
    UA_80$AGE[sample(c(TRUE, FALSE), nrow(UA_80), replace = TRUE, prob = c(0.4151965, 0.5848035))] <- NA
    UA_80$Indication[sample(c(TRUE, FALSE), nrow(UA_80), replace = TRUE, prob = c(0.4151965, 0.5848035))] <- NA
    UA_80 %>% is.na() %>% colSums()
    #nrow(UA_80[is.na(UA_80$SEX) & is.na(UA_80$AGE) & is.na(UA_80$Indication), ]) / nrow(UA_80)
    #View(UA_80)
    
    UA_50 <- simulated
    set.seed(19)
    #UA_50 <- ampute(data = simulated, mech = 'MAR', freq = c(1/3,1/3,0,1/3), prop = 0.5)$amp
    UA_50$SEX[sample(c(TRUE, FALSE), nrow(UA_50), replace = TRUE, prob = c(0.2062995, 0.7937005))] <- NA
    UA_50$AGE[sample(c(TRUE, FALSE), nrow(UA_50), replace = TRUE, prob = c(0.2062995, 0.7937005))] <- NA
    UA_50$Indication[sample(c(TRUE, FALSE), nrow(UA_50), replace = TRUE, prob = c(0.2062995, 0.7937005))] <- NA
    UA_50 %>% is.na() %>% colSums()
    #nrow(UA_50[is.na(UA_50$SEX) & is.na(UA_50$AGE) & is.na(UA_50$Indication), ]) / nrow(UA_50)
    #View(UA_50)
    
    UA_20 <- simulated
    set.seed(19)
    #UA_20 <- ampute(data = simulated, mech = 'MAR', freq = c(1/3,1/3,0,1/3), prop = 0.2)$amp
    UA_20$SEX[sample(c(TRUE, FALSE), nrow(UA_20), replace = TRUE, prob = c(0.07168222, 0.9283178))] <- NA
    UA_20$AGE[sample(c(TRUE, FALSE), nrow(UA_20), replace = TRUE, prob = c(0.07168222, 0.9283178))] <- NA
    UA_20$Indication[sample(c(TRUE, FALSE), nrow(UA_20), replace = TRUE, prob = c(0.07168222, 0.9283178))] <- NA
    UA_20 %>% is.na() %>% colSums()
    #nrow(UA_20[is.na(UA_20$SEX) & is.na(UA_20$AGE) & is.na(UA_20$Indication), ]) / nrow(UA_20)
    #View(UA_20)
    
    UA_5 <- simulated
    set.seed(19)
    #UA_5 <- ampute(data = simulated, mech = 'MAR', freq = c(1/3,1/3,0,1/3), prop = 0.05)$amp
    UA_5$SEX[sample(c(TRUE, FALSE), nrow(UA_5), replace = TRUE, prob = c(0.0169524, 0.9830476))] <- NA
    UA_5$AGE[sample(c(TRUE, FALSE), nrow(UA_5), replace = TRUE, prob = c(0.0169524, 0.9830476))] <- NA
    UA_5$Indication[sample(c(TRUE, FALSE), nrow(UA_5), replace = TRUE, prob = c(0.0169524, 0.9830476))] <- NA
    UA_5 %>% is.na() %>% colSums()
    #nrow(UA_5[is.na(UA_5$SEX) & is.na(UA_5$AGE) & is.na(UA_5$Indication), ]) / nrow(UA_5)
    #View(UA_5)
    
    MA_pattern <- matrix(c(0,1,1,1,1,0,1,1,1,1,1,0,0,0,1,1,0,1,1,0,1,0,1,0,0,0,1,0), nrow = 7, byrow = TRUE)
    
    set.seed(19)
    MA_80 <- ampute(data = simulated, mech = 'MAR', prop = 0.8, patterns = MA_pattern)$amp
    MA_80 %>% is.na() %>% colSums()
    #View(MA_80)
    
    set.seed(19)
    MA_50 <- ampute(data = simulated, mech = 'MAR', prop = 0.5, patterns = MA_pattern)$amp
    MA_50 %>% is.na() %>% colSums()
    #View(MA_50)
    
    set.seed(19)
    MA_20 <- ampute(data = simulated, mech = 'MAR', prop = 0.2, patterns = MA_pattern)$amp
    MA_20 %>% is.na() %>% colSums()
    #View(MA_20)
    
    set.seed(19)
    MA_5 <- ampute(data = simulated, mech = 'MAR', prop = 0.05, patterns = MA_pattern)$amp
    MA_5 %>% is.na() %>% colSums()
    #View(MA_5)
  }
  
  #benchmark
  {
    UA_80_benchmark_RT <- prop.table(table(UA_80[complete.cases(UA_80),]$Indication))[1]
    UA_80_benchmark_RT_SE <- sqrt((UA_80_benchmark_RT*(1 - UA_80_benchmark_RT))/10000)
    UA_80_benchmark_RT_95upper <- UA_80_benchmark_RT + 2*UA_80_benchmark_RT_SE
    UA_80_benchmark_RT_95lower <- UA_80_benchmark_RT - 2*UA_80_benchmark_RT_SE
    UA_80_benchmark_RT_95width <- UA_80_benchmark_RT_95upper - UA_80_benchmark_RT_95lower
    UA_80_benchmark_RT_coverge <- (UA_80_benchmark_RT_95lower < RT_true) & (RT_true < UA_80_benchmark_RT_95upper)
    list_UA_80_benchmark_RT <- c(list_UA_80_benchmark_RT, UA_80_benchmark_RT)
    list_UA_80_benchmark_RT_SE <- c(list_UA_80_benchmark_RT_SE, UA_80_benchmark_RT_SE)
    list_UA_80_benchmark_RT_95width <- c(list_UA_80_benchmark_RT_95width, UA_80_benchmark_RT_95width)
    list_UA_80_benchmark_RT_coverge <- c(list_UA_80_benchmark_RT_coverge, UA_80_benchmark_RT_coverge)
    UA_80_benchmark_UT <- prop.table(table(UA_80[complete.cases(UA_80),]$Indication))[2]
    UA_80_benchmark_UT_SE <- sqrt((UA_80_benchmark_UT*(1 - UA_80_benchmark_UT))/10000)
    UA_80_benchmark_UT_95upper <- UA_80_benchmark_UT + 2*UA_80_benchmark_UT_SE
    UA_80_benchmark_UT_95lower <- UA_80_benchmark_UT - 2*UA_80_benchmark_UT_SE
    UA_80_benchmark_UT_95width <- UA_80_benchmark_UT_95upper - UA_80_benchmark_UT_95lower
    UA_80_benchmark_UT_coverge <- (UA_80_benchmark_UT_95lower < UT_true) & (UT_true < UA_80_benchmark_UT_95upper)
    list_UA_80_benchmark_UT <- c(list_UA_80_benchmark_UT, UA_80_benchmark_UT)
    list_UA_80_benchmark_UT_SE <- c(list_UA_80_benchmark_UT_SE, UA_80_benchmark_UT_SE)
    list_UA_80_benchmark_UT_95width <- c(list_UA_80_benchmark_UT_95width, UA_80_benchmark_UT_95width)
    list_UA_80_benchmark_UT_coverge <- c(list_UA_80_benchmark_UT_coverge, UA_80_benchmark_UT_coverge)
    UA_80_benchmark_SW <- prop.table(table(UA_80[complete.cases(UA_80),]$Indication))[3]
    UA_80_benchmark_SW_SE <- sqrt((UA_80_benchmark_SW*(1 - UA_80_benchmark_SW))/10000)
    UA_80_benchmark_SW_95upper <- UA_80_benchmark_SW + 2*UA_80_benchmark_SW_SE
    UA_80_benchmark_SW_95lower <- UA_80_benchmark_SW - 2*UA_80_benchmark_SW_SE
    UA_80_benchmark_SW_95width <- UA_80_benchmark_SW_95upper - UA_80_benchmark_SW_95lower
    UA_80_benchmark_SW_coverge <- (UA_80_benchmark_SW_95lower < SW_true) & (SW_true < UA_80_benchmark_SW_95upper)
    list_UA_80_benchmark_SW <- c(list_UA_80_benchmark_SW, UA_80_benchmark_SW)
    list_UA_80_benchmark_SW_SE <- c(list_UA_80_benchmark_SW_SE, UA_80_benchmark_SW_SE)
    list_UA_80_benchmark_SW_95width <- c(list_UA_80_benchmark_SW_95width, UA_80_benchmark_SW_95width)
    list_UA_80_benchmark_SW_coverge <- c(list_UA_80_benchmark_SW_coverge, UA_80_benchmark_SW_coverge)
    UA_80_benchmark_OU <- prop.table(table(UA_80[complete.cases(UA_80),]$Indication))[4]
    UA_80_benchmark_OU_SE <- sqrt((UA_80_benchmark_OU*(1 - UA_80_benchmark_OU))/10000)
    UA_80_benchmark_OU_95upper <- UA_80_benchmark_OU + 2*UA_80_benchmark_OU_SE
    UA_80_benchmark_OU_95lower <- UA_80_benchmark_OU - 2*UA_80_benchmark_OU_SE
    UA_80_benchmark_OU_95width <- UA_80_benchmark_OU_95upper - UA_80_benchmark_OU_95lower
    UA_80_benchmark_OU_coverge <- (UA_80_benchmark_OU_95lower < OU_true) & (OU_true < UA_80_benchmark_OU_95upper)
    list_UA_80_benchmark_OU <- c(list_UA_80_benchmark_OU, UA_80_benchmark_OU)
    list_UA_80_benchmark_OU_SE <- c(list_UA_80_benchmark_OU_SE, UA_80_benchmark_OU_SE)
    list_UA_80_benchmark_OU_95width <- c(list_UA_80_benchmark_OU_95width, UA_80_benchmark_OU_95width)
    list_UA_80_benchmark_OU_coverge <- c(list_UA_80_benchmark_OU_coverge, UA_80_benchmark_OU_coverge)
    
    UA_50_benchmark_RT <- prop.table(table(UA_50[complete.cases(UA_50),]$Indication))[1]
    UA_50_benchmark_RT_SE <- sqrt((UA_50_benchmark_RT*(1 - UA_50_benchmark_RT))/10000)
    UA_50_benchmark_RT_95upper <- UA_50_benchmark_RT + 2*UA_50_benchmark_RT_SE
    UA_50_benchmark_RT_95lower <- UA_50_benchmark_RT - 2*UA_50_benchmark_RT_SE
    UA_50_benchmark_RT_95width <- UA_50_benchmark_RT_95upper - UA_50_benchmark_RT_95lower
    UA_50_benchmark_RT_coverge <- (UA_50_benchmark_RT_95lower < RT_true) & (RT_true < UA_50_benchmark_RT_95upper)
    list_UA_50_benchmark_RT <- c(list_UA_50_benchmark_RT, UA_50_benchmark_RT)
    list_UA_50_benchmark_RT_SE <- c(list_UA_50_benchmark_RT_SE, UA_50_benchmark_RT_SE)
    list_UA_50_benchmark_RT_95width <- c(list_UA_50_benchmark_RT_95width, UA_50_benchmark_RT_95width)
    list_UA_50_benchmark_RT_coverge <- c(list_UA_50_benchmark_RT_coverge, UA_50_benchmark_RT_coverge)
    UA_50_benchmark_UT <- prop.table(table(UA_50[complete.cases(UA_50),]$Indication))[2]
    UA_50_benchmark_UT_SE <- sqrt((UA_50_benchmark_UT*(1 - UA_50_benchmark_UT))/10000)
    UA_50_benchmark_UT_95upper <- UA_50_benchmark_UT + 2*UA_50_benchmark_UT_SE
    UA_50_benchmark_UT_95lower <- UA_50_benchmark_UT - 2*UA_50_benchmark_UT_SE
    UA_50_benchmark_UT_95width <- UA_50_benchmark_UT_95upper - UA_50_benchmark_UT_95lower
    UA_50_benchmark_UT_coverge <- (UA_50_benchmark_UT_95lower < UT_true) & (UT_true < UA_50_benchmark_UT_95upper)
    list_UA_50_benchmark_UT <- c(list_UA_50_benchmark_UT, UA_50_benchmark_UT)
    list_UA_50_benchmark_UT_SE <- c(list_UA_50_benchmark_UT_SE, UA_50_benchmark_UT_SE)
    list_UA_50_benchmark_UT_95width <- c(list_UA_50_benchmark_UT_95width, UA_50_benchmark_UT_95width)
    list_UA_50_benchmark_UT_coverge <- c(list_UA_50_benchmark_UT_coverge, UA_50_benchmark_UT_coverge)
    UA_50_benchmark_SW <- prop.table(table(UA_50[complete.cases(UA_50),]$Indication))[3]
    UA_50_benchmark_SW_SE <- sqrt((UA_50_benchmark_SW*(1 - UA_50_benchmark_SW))/10000)
    UA_50_benchmark_SW_95upper <- UA_50_benchmark_SW + 2*UA_50_benchmark_SW_SE
    UA_50_benchmark_SW_95lower <- UA_50_benchmark_SW - 2*UA_50_benchmark_SW_SE
    UA_50_benchmark_SW_95width <- UA_50_benchmark_SW_95upper - UA_50_benchmark_SW_95lower
    UA_50_benchmark_SW_coverge <- (UA_50_benchmark_SW_95lower < SW_true) & (SW_true < UA_50_benchmark_SW_95upper)
    list_UA_50_benchmark_SW <- c(list_UA_50_benchmark_SW, UA_50_benchmark_SW)
    list_UA_50_benchmark_SW_SE <- c(list_UA_50_benchmark_SW_SE, UA_50_benchmark_SW_SE)
    list_UA_50_benchmark_SW_95width <- c(list_UA_50_benchmark_SW_95width, UA_50_benchmark_SW_95width)
    list_UA_50_benchmark_SW_coverge <- c(list_UA_50_benchmark_SW_coverge, UA_50_benchmark_SW_coverge)
    UA_50_benchmark_OU <- prop.table(table(UA_50[complete.cases(UA_50),]$Indication))[4]
    UA_50_benchmark_OU_SE <- sqrt((UA_50_benchmark_OU*(1 - UA_50_benchmark_OU))/10000)
    UA_50_benchmark_OU_95upper <- UA_50_benchmark_OU + 2*UA_50_benchmark_OU_SE
    UA_50_benchmark_OU_95lower <- UA_50_benchmark_OU - 2*UA_50_benchmark_OU_SE
    UA_50_benchmark_OU_95width <- UA_50_benchmark_OU_95upper - UA_50_benchmark_OU_95lower
    UA_50_benchmark_OU_coverge <- (UA_50_benchmark_OU_95lower < OU_true) & (OU_true < UA_50_benchmark_OU_95upper)
    list_UA_50_benchmark_OU <- c(list_UA_50_benchmark_OU, UA_50_benchmark_OU)
    list_UA_50_benchmark_OU_SE <- c(list_UA_50_benchmark_OU_SE, UA_50_benchmark_OU_SE)
    list_UA_50_benchmark_OU_95width <- c(list_UA_50_benchmark_OU_95width, UA_50_benchmark_OU_95width)
    list_UA_50_benchmark_OU_coverge <- c(list_UA_50_benchmark_OU_coverge, UA_50_benchmark_OU_coverge)
    
    UA_20_benchmark_RT <- prop.table(table(UA_20[complete.cases(UA_20),]$Indication))[1]
    UA_20_benchmark_RT_SE <- sqrt((UA_20_benchmark_RT*(1 - UA_20_benchmark_RT))/10000)
    UA_20_benchmark_RT_95upper <- UA_20_benchmark_RT + 2*UA_20_benchmark_RT_SE
    UA_20_benchmark_RT_95lower <- UA_20_benchmark_RT - 2*UA_20_benchmark_RT_SE
    UA_20_benchmark_RT_95width <- UA_20_benchmark_RT_95upper - UA_20_benchmark_RT_95lower
    UA_20_benchmark_RT_coverge <- (UA_20_benchmark_RT_95lower < RT_true) & (RT_true < UA_20_benchmark_RT_95upper)
    list_UA_20_benchmark_RT <- c(list_UA_20_benchmark_RT, UA_20_benchmark_RT)
    list_UA_20_benchmark_RT_SE <- c(list_UA_20_benchmark_RT_SE, UA_20_benchmark_RT_SE)
    list_UA_20_benchmark_RT_95width <- c(list_UA_20_benchmark_RT_95width, UA_20_benchmark_RT_95width)
    list_UA_20_benchmark_RT_coverge <- c(list_UA_20_benchmark_RT_coverge, UA_20_benchmark_RT_coverge)
    UA_20_benchmark_UT <- prop.table(table(UA_20[complete.cases(UA_20),]$Indication))[2]
    UA_20_benchmark_UT_SE <- sqrt((UA_20_benchmark_UT*(1 - UA_20_benchmark_UT))/10000)
    UA_20_benchmark_UT_95upper <- UA_20_benchmark_UT + 2*UA_20_benchmark_UT_SE
    UA_20_benchmark_UT_95lower <- UA_20_benchmark_UT - 2*UA_20_benchmark_UT_SE
    UA_20_benchmark_UT_95width <- UA_20_benchmark_UT_95upper - UA_20_benchmark_UT_95lower
    UA_20_benchmark_UT_coverge <- (UA_20_benchmark_UT_95lower < UT_true) & (UT_true < UA_20_benchmark_UT_95upper)
    list_UA_20_benchmark_UT <- c(list_UA_20_benchmark_UT, UA_20_benchmark_UT)
    list_UA_20_benchmark_UT_SE <- c(list_UA_20_benchmark_UT_SE, UA_20_benchmark_UT_SE)
    list_UA_20_benchmark_UT_95width <- c(list_UA_20_benchmark_UT_95width, UA_20_benchmark_UT_95width)
    list_UA_20_benchmark_UT_coverge <- c(list_UA_20_benchmark_UT_coverge, UA_20_benchmark_UT_coverge)
    UA_20_benchmark_SW <- prop.table(table(UA_20[complete.cases(UA_20),]$Indication))[3]
    UA_20_benchmark_SW_SE <- sqrt((UA_20_benchmark_SW*(1 - UA_20_benchmark_SW))/10000)
    UA_20_benchmark_SW_95upper <- UA_20_benchmark_SW + 2*UA_20_benchmark_SW_SE
    UA_20_benchmark_SW_95lower <- UA_20_benchmark_SW - 2*UA_20_benchmark_SW_SE
    UA_20_benchmark_SW_95width <- UA_20_benchmark_SW_95upper - UA_20_benchmark_SW_95lower
    UA_20_benchmark_SW_coverge <- (UA_20_benchmark_SW_95lower < SW_true) & (SW_true < UA_20_benchmark_SW_95upper)
    list_UA_20_benchmark_SW <- c(list_UA_20_benchmark_SW, UA_20_benchmark_SW)
    list_UA_20_benchmark_SW_SE <- c(list_UA_20_benchmark_SW_SE, UA_20_benchmark_SW_SE)
    list_UA_20_benchmark_SW_95width <- c(list_UA_20_benchmark_SW_95width, UA_20_benchmark_SW_95width)
    list_UA_20_benchmark_SW_coverge <- c(list_UA_20_benchmark_SW_coverge, UA_20_benchmark_SW_coverge)
    UA_20_benchmark_OU <- prop.table(table(UA_20[complete.cases(UA_20),]$Indication))[4]
    UA_20_benchmark_OU_SE <- sqrt((UA_20_benchmark_OU*(1 - UA_20_benchmark_OU))/10000)
    UA_20_benchmark_OU_95upper <- UA_20_benchmark_OU + 2*UA_20_benchmark_OU_SE
    UA_20_benchmark_OU_95lower <- UA_20_benchmark_OU - 2*UA_20_benchmark_OU_SE
    UA_20_benchmark_OU_95width <- UA_20_benchmark_OU_95upper - UA_20_benchmark_OU_95lower
    UA_20_benchmark_OU_coverge <- (UA_20_benchmark_OU_95lower < OU_true) & (OU_true < UA_20_benchmark_OU_95upper)
    list_UA_20_benchmark_OU <- c(list_UA_20_benchmark_OU, UA_20_benchmark_OU)
    list_UA_20_benchmark_OU_SE <- c(list_UA_20_benchmark_OU_SE, UA_20_benchmark_OU_SE)
    list_UA_20_benchmark_OU_95width <- c(list_UA_20_benchmark_OU_95width, UA_20_benchmark_OU_95width)
    list_UA_20_benchmark_OU_coverge <- c(list_UA_20_benchmark_OU_coverge, UA_20_benchmark_OU_coverge)
    
    UA_5_benchmark_RT <- prop.table(table(UA_5[complete.cases(UA_5),]$Indication))[1]
    UA_5_benchmark_RT_SE <- sqrt((UA_5_benchmark_RT*(1 - UA_5_benchmark_RT))/10000)
    UA_5_benchmark_RT_95upper <- UA_5_benchmark_RT + 2*UA_5_benchmark_RT_SE
    UA_5_benchmark_RT_95lower <- UA_5_benchmark_RT - 2*UA_5_benchmark_RT_SE
    UA_5_benchmark_RT_95width <- UA_5_benchmark_RT_95upper - UA_5_benchmark_RT_95lower
    UA_5_benchmark_RT_coverge <- (UA_5_benchmark_RT_95lower < RT_true) & (RT_true < UA_5_benchmark_RT_95upper)
    list_UA_5_benchmark_RT <- c(list_UA_5_benchmark_RT, UA_5_benchmark_RT)
    list_UA_5_benchmark_RT_SE <- c(list_UA_5_benchmark_RT_SE, UA_5_benchmark_RT_SE)
    list_UA_5_benchmark_RT_95width <- c(list_UA_5_benchmark_RT_95width, UA_5_benchmark_RT_95width)
    list_UA_5_benchmark_RT_coverge <- c(list_UA_5_benchmark_RT_coverge, UA_5_benchmark_RT_coverge)
    UA_5_benchmark_UT <- prop.table(table(UA_5[complete.cases(UA_5),]$Indication))[2]
    UA_5_benchmark_UT_SE <- sqrt((UA_5_benchmark_UT*(1 - UA_5_benchmark_UT))/10000)
    UA_5_benchmark_UT_95upper <- UA_5_benchmark_UT + 2*UA_5_benchmark_UT_SE
    UA_5_benchmark_UT_95lower <- UA_5_benchmark_UT - 2*UA_5_benchmark_UT_SE
    UA_5_benchmark_UT_95width <- UA_5_benchmark_UT_95upper - UA_5_benchmark_UT_95lower
    UA_5_benchmark_UT_coverge <- (UA_5_benchmark_UT_95lower < UT_true) & (UT_true < UA_5_benchmark_UT_95upper)
    list_UA_5_benchmark_UT <- c(list_UA_5_benchmark_UT, UA_5_benchmark_UT)
    list_UA_5_benchmark_UT_SE <- c(list_UA_5_benchmark_UT_SE, UA_5_benchmark_UT_SE)
    list_UA_5_benchmark_UT_95width <- c(list_UA_5_benchmark_UT_95width, UA_5_benchmark_UT_95width)
    list_UA_5_benchmark_UT_coverge <- c(list_UA_5_benchmark_UT_coverge, UA_5_benchmark_UT_coverge)
    UA_5_benchmark_SW <- prop.table(table(UA_5[complete.cases(UA_5),]$Indication))[3]
    UA_5_benchmark_SW_SE <- sqrt((UA_5_benchmark_SW*(1 - UA_5_benchmark_SW))/10000)
    UA_5_benchmark_SW_95upper <- UA_5_benchmark_SW + 2*UA_5_benchmark_SW_SE
    UA_5_benchmark_SW_95lower <- UA_5_benchmark_SW - 2*UA_5_benchmark_SW_SE
    UA_5_benchmark_SW_95width <- UA_5_benchmark_SW_95upper - UA_5_benchmark_SW_95lower
    UA_5_benchmark_SW_coverge <- (UA_5_benchmark_SW_95lower < SW_true) & (SW_true < UA_5_benchmark_SW_95upper)
    list_UA_5_benchmark_SW <- c(list_UA_5_benchmark_SW, UA_5_benchmark_SW)
    list_UA_5_benchmark_SW_SE <- c(list_UA_5_benchmark_SW_SE, UA_5_benchmark_SW_SE)
    list_UA_5_benchmark_SW_95width <- c(list_UA_5_benchmark_SW_95width, UA_5_benchmark_SW_95width)
    list_UA_5_benchmark_SW_coverge <- c(list_UA_5_benchmark_SW_coverge, UA_5_benchmark_SW_coverge)
    UA_5_benchmark_OU <- prop.table(table(UA_5[complete.cases(UA_5),]$Indication))[4]
    UA_5_benchmark_OU_SE <- sqrt((UA_5_benchmark_OU*(1 - UA_5_benchmark_OU))/10000)
    UA_5_benchmark_OU_95upper <- UA_5_benchmark_OU + 2*UA_5_benchmark_OU_SE
    UA_5_benchmark_OU_95lower <- UA_5_benchmark_OU - 2*UA_5_benchmark_OU_SE
    UA_5_benchmark_OU_95width <- UA_5_benchmark_OU_95upper - UA_5_benchmark_OU_95lower
    UA_5_benchmark_OU_coverge <- (UA_5_benchmark_OU_95lower < OU_true) & (OU_true < UA_5_benchmark_OU_95upper)
    list_UA_5_benchmark_OU <- c(list_UA_5_benchmark_OU, UA_5_benchmark_OU)
    list_UA_5_benchmark_OU_SE <- c(list_UA_5_benchmark_OU_SE, UA_5_benchmark_OU_SE)
    list_UA_5_benchmark_OU_95width <- c(list_UA_5_benchmark_OU_95width, UA_5_benchmark_OU_95width)
    list_UA_5_benchmark_OU_coverge <- c(list_UA_5_benchmark_OU_coverge, UA_5_benchmark_OU_coverge)
    
    MA_80_benchmark_RT <- prop.table(table(MA_80[complete.cases(MA_80),]$Indication))[1]
    MA_80_benchmark_RT_SE <- sqrt((MA_80_benchmark_RT*(1 - MA_80_benchmark_RT))/10000)
    MA_80_benchmark_RT_95upper <- MA_80_benchmark_RT + 2*MA_80_benchmark_RT_SE
    MA_80_benchmark_RT_95lower <- MA_80_benchmark_RT - 2*MA_80_benchmark_RT_SE
    MA_80_benchmark_RT_95width <- MA_80_benchmark_RT_95upper - MA_80_benchmark_RT_95lower
    MA_80_benchmark_RT_coverge <- (MA_80_benchmark_RT_95lower < RT_true) & (RT_true < MA_80_benchmark_RT_95upper)
    list_MA_80_benchmark_RT <- c(list_MA_80_benchmark_RT, MA_80_benchmark_RT)
    list_MA_80_benchmark_RT_SE <- c(list_MA_80_benchmark_RT_SE, MA_80_benchmark_RT_SE)
    list_MA_80_benchmark_RT_95width <- c(list_MA_80_benchmark_RT_95width, MA_80_benchmark_RT_95width)
    list_MA_80_benchmark_RT_coverge <- c(list_MA_80_benchmark_RT_coverge, MA_80_benchmark_RT_coverge)
    MA_80_benchmark_UT <- prop.table(table(MA_80[complete.cases(MA_80),]$Indication))[2]
    MA_80_benchmark_UT_SE <- sqrt((MA_80_benchmark_UT*(1 - MA_80_benchmark_UT))/10000)
    MA_80_benchmark_UT_95upper <- MA_80_benchmark_UT + 2*MA_80_benchmark_UT_SE
    MA_80_benchmark_UT_95lower <- MA_80_benchmark_UT - 2*MA_80_benchmark_UT_SE
    MA_80_benchmark_UT_95width <- MA_80_benchmark_UT_95upper - MA_80_benchmark_UT_95lower
    MA_80_benchmark_UT_coverge <- (MA_80_benchmark_UT_95lower < UT_true) & (UT_true < MA_80_benchmark_UT_95upper)
    list_MA_80_benchmark_UT <- c(list_MA_80_benchmark_UT, MA_80_benchmark_UT)
    list_MA_80_benchmark_UT_SE <- c(list_MA_80_benchmark_UT_SE, MA_80_benchmark_UT_SE)
    list_MA_80_benchmark_UT_95width <- c(list_MA_80_benchmark_UT_95width, MA_80_benchmark_UT_95width)
    list_MA_80_benchmark_UT_coverge <- c(list_MA_80_benchmark_UT_coverge, MA_80_benchmark_UT_coverge)
    MA_80_benchmark_SW <- prop.table(table(MA_80[complete.cases(MA_80),]$Indication))[3]
    MA_80_benchmark_SW_SE <- sqrt((MA_80_benchmark_SW*(1 - MA_80_benchmark_SW))/10000)
    MA_80_benchmark_SW_95upper <- MA_80_benchmark_SW + 2*MA_80_benchmark_SW_SE
    MA_80_benchmark_SW_95lower <- MA_80_benchmark_SW - 2*MA_80_benchmark_SW_SE
    MA_80_benchmark_SW_95width <- MA_80_benchmark_SW_95upper - MA_80_benchmark_SW_95lower
    MA_80_benchmark_SW_coverge <- (MA_80_benchmark_SW_95lower < SW_true) & (SW_true < MA_80_benchmark_SW_95upper)
    list_MA_80_benchmark_SW <- c(list_MA_80_benchmark_SW, MA_80_benchmark_SW)
    list_MA_80_benchmark_SW_SE <- c(list_MA_80_benchmark_SW_SE, MA_80_benchmark_SW_SE)
    list_MA_80_benchmark_SW_95width <- c(list_MA_80_benchmark_SW_95width, MA_80_benchmark_SW_95width)
    list_MA_80_benchmark_SW_coverge <- c(list_MA_80_benchmark_SW_coverge, MA_80_benchmark_SW_coverge)
    MA_80_benchmark_OU <- prop.table(table(MA_80[complete.cases(MA_80),]$Indication))[4]
    MA_80_benchmark_OU_SE <- sqrt((MA_80_benchmark_OU*(1 - MA_80_benchmark_OU))/10000)
    MA_80_benchmark_OU_95upper <- MA_80_benchmark_OU + 2*MA_80_benchmark_OU_SE
    MA_80_benchmark_OU_95lower <- MA_80_benchmark_OU - 2*MA_80_benchmark_OU_SE
    MA_80_benchmark_OU_95width <- MA_80_benchmark_OU_95upper - MA_80_benchmark_OU_95lower
    MA_80_benchmark_OU_coverge <- (MA_80_benchmark_OU_95lower < OU_true) & (OU_true < MA_80_benchmark_OU_95upper)
    list_MA_80_benchmark_OU <- c(list_MA_80_benchmark_OU, MA_80_benchmark_OU)
    list_MA_80_benchmark_OU_SE <- c(list_MA_80_benchmark_OU_SE, MA_80_benchmark_OU_SE)
    list_MA_80_benchmark_OU_95width <- c(list_MA_80_benchmark_OU_95width, MA_80_benchmark_OU_95width)
    list_MA_80_benchmark_OU_coverge <- c(list_MA_80_benchmark_OU_coverge, MA_80_benchmark_OU_coverge)
    
    MA_50_benchmark_RT <- prop.table(table(MA_50[complete.cases(MA_50),]$Indication))[1]
    MA_50_benchmark_RT_SE <- sqrt((MA_50_benchmark_RT*(1 - MA_50_benchmark_RT))/10000)
    MA_50_benchmark_RT_95upper <- MA_50_benchmark_RT + 2*MA_50_benchmark_RT_SE
    MA_50_benchmark_RT_95lower <- MA_50_benchmark_RT - 2*MA_50_benchmark_RT_SE
    MA_50_benchmark_RT_95width <- MA_50_benchmark_RT_95upper - MA_50_benchmark_RT_95lower
    MA_50_benchmark_RT_coverge <- (MA_50_benchmark_RT_95lower < RT_true) & (RT_true < MA_50_benchmark_RT_95upper)
    list_MA_50_benchmark_RT <- c(list_MA_50_benchmark_RT, MA_50_benchmark_RT)
    list_MA_50_benchmark_RT_SE <- c(list_MA_50_benchmark_RT_SE, MA_50_benchmark_RT_SE)
    list_MA_50_benchmark_RT_95width <- c(list_MA_50_benchmark_RT_95width, MA_50_benchmark_RT_95width)
    list_MA_50_benchmark_RT_coverge <- c(list_MA_50_benchmark_RT_coverge, MA_50_benchmark_RT_coverge)
    MA_50_benchmark_UT <- prop.table(table(MA_50[complete.cases(MA_50),]$Indication))[2]
    MA_50_benchmark_UT_SE <- sqrt((MA_50_benchmark_UT*(1 - MA_50_benchmark_UT))/10000)
    MA_50_benchmark_UT_95upper <- MA_50_benchmark_UT + 2*MA_50_benchmark_UT_SE
    MA_50_benchmark_UT_95lower <- MA_50_benchmark_UT - 2*MA_50_benchmark_UT_SE
    MA_50_benchmark_UT_95width <- MA_50_benchmark_UT_95upper - MA_50_benchmark_UT_95lower
    MA_50_benchmark_UT_coverge <- (MA_50_benchmark_UT_95lower < UT_true) & (UT_true < MA_50_benchmark_UT_95upper)
    list_MA_50_benchmark_UT <- c(list_MA_50_benchmark_UT, MA_50_benchmark_UT)
    list_MA_50_benchmark_UT_SE <- c(list_MA_50_benchmark_UT_SE, MA_50_benchmark_UT_SE)
    list_MA_50_benchmark_UT_95width <- c(list_MA_50_benchmark_UT_95width, MA_50_benchmark_UT_95width)
    list_MA_50_benchmark_UT_coverge <- c(list_MA_50_benchmark_UT_coverge, MA_50_benchmark_UT_coverge)
    MA_50_benchmark_SW <- prop.table(table(MA_50[complete.cases(MA_50),]$Indication))[3]
    MA_50_benchmark_SW_SE <- sqrt((MA_50_benchmark_SW*(1 - MA_50_benchmark_SW))/10000)
    MA_50_benchmark_SW_95upper <- MA_50_benchmark_SW + 2*MA_50_benchmark_SW_SE
    MA_50_benchmark_SW_95lower <- MA_50_benchmark_SW - 2*MA_50_benchmark_SW_SE
    MA_50_benchmark_SW_95width <- MA_50_benchmark_SW_95upper - MA_50_benchmark_SW_95lower
    MA_50_benchmark_SW_coverge <- (MA_50_benchmark_SW_95lower < SW_true) & (SW_true < MA_50_benchmark_SW_95upper)
    list_MA_50_benchmark_SW <- c(list_MA_50_benchmark_SW, MA_50_benchmark_SW)
    list_MA_50_benchmark_SW_SE <- c(list_MA_50_benchmark_SW_SE, MA_50_benchmark_SW_SE)
    list_MA_50_benchmark_SW_95width <- c(list_MA_50_benchmark_SW_95width, MA_50_benchmark_SW_95width)
    list_MA_50_benchmark_SW_coverge <- c(list_MA_50_benchmark_SW_coverge, MA_50_benchmark_SW_coverge)
    MA_50_benchmark_OU <- prop.table(table(MA_50[complete.cases(MA_50),]$Indication))[4]
    MA_50_benchmark_OU_SE <- sqrt((MA_50_benchmark_OU*(1 - MA_50_benchmark_OU))/10000)
    MA_50_benchmark_OU_95upper <- MA_50_benchmark_OU + 2*MA_50_benchmark_OU_SE
    MA_50_benchmark_OU_95lower <- MA_50_benchmark_OU - 2*MA_50_benchmark_OU_SE
    MA_50_benchmark_OU_95width <- MA_50_benchmark_OU_95upper - MA_50_benchmark_OU_95lower
    MA_50_benchmark_OU_coverge <- (MA_50_benchmark_OU_95lower < OU_true) & (OU_true < MA_50_benchmark_OU_95upper)
    list_MA_50_benchmark_OU <- c(list_MA_50_benchmark_OU, MA_50_benchmark_OU)
    list_MA_50_benchmark_OU_SE <- c(list_MA_50_benchmark_OU_SE, MA_50_benchmark_OU_SE)
    list_MA_50_benchmark_OU_95width <- c(list_MA_50_benchmark_OU_95width, MA_50_benchmark_OU_95width)
    list_MA_50_benchmark_OU_coverge <- c(list_MA_50_benchmark_OU_coverge, MA_50_benchmark_OU_coverge)
    
    MA_20_benchmark_RT <- prop.table(table(MA_20[complete.cases(MA_20),]$Indication))[1]
    MA_20_benchmark_RT_SE <- sqrt((MA_20_benchmark_RT*(1 - MA_20_benchmark_RT))/10000)
    MA_20_benchmark_RT_95upper <- MA_20_benchmark_RT + 2*MA_20_benchmark_RT_SE
    MA_20_benchmark_RT_95lower <- MA_20_benchmark_RT - 2*MA_20_benchmark_RT_SE
    MA_20_benchmark_RT_95width <- MA_20_benchmark_RT_95upper - MA_20_benchmark_RT_95lower
    MA_20_benchmark_RT_coverge <- (MA_20_benchmark_RT_95lower < RT_true) & (RT_true < MA_20_benchmark_RT_95upper)
    list_MA_20_benchmark_RT <- c(list_MA_20_benchmark_RT, MA_20_benchmark_RT)
    list_MA_20_benchmark_RT_SE <- c(list_MA_20_benchmark_RT_SE, MA_20_benchmark_RT_SE)
    list_MA_20_benchmark_RT_95width <- c(list_MA_20_benchmark_RT_95width, MA_20_benchmark_RT_95width)
    list_MA_20_benchmark_RT_coverge <- c(list_MA_20_benchmark_RT_coverge, MA_20_benchmark_RT_coverge)
    MA_20_benchmark_UT <- prop.table(table(MA_20[complete.cases(MA_20),]$Indication))[2]
    MA_20_benchmark_UT_SE <- sqrt((MA_20_benchmark_UT*(1 - MA_20_benchmark_UT))/10000)
    MA_20_benchmark_UT_95upper <- MA_20_benchmark_UT + 2*MA_20_benchmark_UT_SE
    MA_20_benchmark_UT_95lower <- MA_20_benchmark_UT - 2*MA_20_benchmark_UT_SE
    MA_20_benchmark_UT_95width <- MA_20_benchmark_UT_95upper - MA_20_benchmark_UT_95lower
    MA_20_benchmark_UT_coverge <- (MA_20_benchmark_UT_95lower < UT_true) & (UT_true < MA_20_benchmark_UT_95upper)
    list_MA_20_benchmark_UT <- c(list_MA_20_benchmark_UT, MA_20_benchmark_UT)
    list_MA_20_benchmark_UT_SE <- c(list_MA_20_benchmark_UT_SE, MA_20_benchmark_UT_SE)
    list_MA_20_benchmark_UT_95width <- c(list_MA_20_benchmark_UT_95width, MA_20_benchmark_UT_95width)
    list_MA_20_benchmark_UT_coverge <- c(list_MA_20_benchmark_UT_coverge, MA_20_benchmark_UT_coverge)
    MA_20_benchmark_SW <- prop.table(table(MA_20[complete.cases(MA_20),]$Indication))[3]
    MA_20_benchmark_SW_SE <- sqrt((MA_20_benchmark_SW*(1 - MA_20_benchmark_SW))/10000)
    MA_20_benchmark_SW_95upper <- MA_20_benchmark_SW + 2*MA_20_benchmark_SW_SE
    MA_20_benchmark_SW_95lower <- MA_20_benchmark_SW - 2*MA_20_benchmark_SW_SE
    MA_20_benchmark_SW_95width <- MA_20_benchmark_SW_95upper - MA_20_benchmark_SW_95lower
    MA_20_benchmark_SW_coverge <- (MA_20_benchmark_SW_95lower < SW_true) & (SW_true < MA_20_benchmark_SW_95upper)
    list_MA_20_benchmark_SW <- c(list_MA_20_benchmark_SW, MA_20_benchmark_SW)
    list_MA_20_benchmark_SW_SE <- c(list_MA_20_benchmark_SW_SE, MA_20_benchmark_SW_SE)
    list_MA_20_benchmark_SW_95width <- c(list_MA_20_benchmark_SW_95width, MA_20_benchmark_SW_95width)
    list_MA_20_benchmark_SW_coverge <- c(list_MA_20_benchmark_SW_coverge, MA_20_benchmark_SW_coverge)
    MA_20_benchmark_OU <- prop.table(table(MA_20[complete.cases(MA_20),]$Indication))[4]
    MA_20_benchmark_OU_SE <- sqrt((MA_20_benchmark_OU*(1 - MA_20_benchmark_OU))/10000)
    MA_20_benchmark_OU_95upper <- MA_20_benchmark_OU + 2*MA_20_benchmark_OU_SE
    MA_20_benchmark_OU_95lower <- MA_20_benchmark_OU - 2*MA_20_benchmark_OU_SE
    MA_20_benchmark_OU_95width <- MA_20_benchmark_OU_95upper - MA_20_benchmark_OU_95lower
    MA_20_benchmark_OU_coverge <- (MA_20_benchmark_OU_95lower < OU_true) & (OU_true < MA_20_benchmark_OU_95upper)
    list_MA_20_benchmark_OU <- c(list_MA_20_benchmark_OU, MA_20_benchmark_OU)
    list_MA_20_benchmark_OU_SE <- c(list_MA_20_benchmark_OU_SE, MA_20_benchmark_OU_SE)
    list_MA_20_benchmark_OU_95width <- c(list_MA_20_benchmark_OU_95width, MA_20_benchmark_OU_95width)
    list_MA_20_benchmark_OU_coverge <- c(list_MA_20_benchmark_OU_coverge, MA_20_benchmark_OU_coverge)
    
    MA_5_benchmark_RT <- prop.table(table(MA_5[complete.cases(MA_5),]$Indication))[1]
    MA_5_benchmark_RT_SE <- sqrt((MA_5_benchmark_RT*(1 - MA_5_benchmark_RT))/10000)
    MA_5_benchmark_RT_95upper <- MA_5_benchmark_RT + 2*MA_5_benchmark_RT_SE
    MA_5_benchmark_RT_95lower <- MA_5_benchmark_RT - 2*MA_5_benchmark_RT_SE
    MA_5_benchmark_RT_95width <- MA_5_benchmark_RT_95upper - MA_5_benchmark_RT_95lower
    MA_5_benchmark_RT_coverge <- (MA_5_benchmark_RT_95lower < RT_true) & (RT_true < MA_5_benchmark_RT_95upper)
    list_MA_5_benchmark_RT <- c(list_MA_5_benchmark_RT, MA_5_benchmark_RT)
    list_MA_5_benchmark_RT_SE <- c(list_MA_5_benchmark_RT_SE, MA_5_benchmark_RT_SE)
    list_MA_5_benchmark_RT_95width <- c(list_MA_5_benchmark_RT_95width, MA_5_benchmark_RT_95width)
    list_MA_5_benchmark_RT_coverge <- c(list_MA_5_benchmark_RT_coverge, MA_5_benchmark_RT_coverge)
    MA_5_benchmark_UT <- prop.table(table(MA_5[complete.cases(MA_5),]$Indication))[2]
    MA_5_benchmark_UT_SE <- sqrt((MA_5_benchmark_UT*(1 - MA_5_benchmark_UT))/10000)
    MA_5_benchmark_UT_95upper <- MA_5_benchmark_UT + 2*MA_5_benchmark_UT_SE
    MA_5_benchmark_UT_95lower <- MA_5_benchmark_UT - 2*MA_5_benchmark_UT_SE
    MA_5_benchmark_UT_95width <- MA_5_benchmark_UT_95upper - MA_5_benchmark_UT_95lower
    MA_5_benchmark_UT_coverge <- (MA_5_benchmark_UT_95lower < UT_true) & (UT_true < MA_5_benchmark_UT_95upper)
    list_MA_5_benchmark_UT <- c(list_MA_5_benchmark_UT, MA_5_benchmark_UT)
    list_MA_5_benchmark_UT_SE <- c(list_MA_5_benchmark_UT_SE, MA_5_benchmark_UT_SE)
    list_MA_5_benchmark_UT_95width <- c(list_MA_5_benchmark_UT_95width, MA_5_benchmark_UT_95width)
    list_MA_5_benchmark_UT_coverge <- c(list_MA_5_benchmark_UT_coverge, MA_5_benchmark_UT_coverge)
    MA_5_benchmark_SW <- prop.table(table(MA_5[complete.cases(MA_5),]$Indication))[3]
    MA_5_benchmark_SW_SE <- sqrt((MA_5_benchmark_SW*(1 - MA_5_benchmark_SW))/10000)
    MA_5_benchmark_SW_95upper <- MA_5_benchmark_SW + 2*MA_5_benchmark_SW_SE
    MA_5_benchmark_SW_95lower <- MA_5_benchmark_SW - 2*MA_5_benchmark_SW_SE
    MA_5_benchmark_SW_95width <- MA_5_benchmark_SW_95upper - MA_5_benchmark_SW_95lower
    MA_5_benchmark_SW_coverge <- (MA_5_benchmark_SW_95lower < SW_true) & (SW_true < MA_5_benchmark_SW_95upper)
    list_MA_5_benchmark_SW <- c(list_MA_5_benchmark_SW, MA_5_benchmark_SW)
    list_MA_5_benchmark_SW_SE <- c(list_MA_5_benchmark_SW_SE, MA_5_benchmark_SW_SE)
    list_MA_5_benchmark_SW_95width <- c(list_MA_5_benchmark_SW_95width, MA_5_benchmark_SW_95width)
    list_MA_5_benchmark_SW_coverge <- c(list_MA_5_benchmark_SW_coverge, MA_5_benchmark_SW_coverge)
    MA_5_benchmark_OU <- prop.table(table(MA_5[complete.cases(MA_5),]$Indication))[4]
    MA_5_benchmark_OU_SE <- sqrt((MA_5_benchmark_OU*(1 - MA_5_benchmark_OU))/10000)
    MA_5_benchmark_OU_95upper <- MA_5_benchmark_OU + 2*MA_5_benchmark_OU_SE
    MA_5_benchmark_OU_95lower <- MA_5_benchmark_OU - 2*MA_5_benchmark_OU_SE
    MA_5_benchmark_OU_95width <- MA_5_benchmark_OU_95upper - MA_5_benchmark_OU_95lower
    MA_5_benchmark_OU_coverge <- (MA_5_benchmark_OU_95lower < OU_true) & (OU_true < MA_5_benchmark_OU_95upper)
    list_MA_5_benchmark_OU <- c(list_MA_5_benchmark_OU, MA_5_benchmark_OU)
    list_MA_5_benchmark_OU_SE <- c(list_MA_5_benchmark_OU_SE, MA_5_benchmark_OU_SE)
    list_MA_5_benchmark_OU_95width <- c(list_MA_5_benchmark_OU_95width, MA_5_benchmark_OU_95width)
    list_MA_5_benchmark_OU_coverge <- c(list_MA_5_benchmark_OU_coverge, MA_5_benchmark_OU_coverge)
  }
  
  #imputation
  {
    #mice single imputation
    {
      #impute UA_80
      {
        #model
        {
          md.pattern(UA_80, plot = FALSE)
          md.pairs(UA_80)
          UA_80_mice_plot <- aggr(UA_80,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_80),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_80$SEX <- factor(UA_80$SEX, labels = levels(simulated$SEX))
          UA_80$AGE <- factor(UA_80$AGE, labels = levels(simulated$AGE))
          UA_80$Indication <- factor(UA_80$Indication, labels = levels(simulated$Indication))
          UA_80$AntibioticClass <- factor(UA_80$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_80 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UASI_80_mice_imp <- mice(UA_80, maxit = 10, m = 1, method = methods_UA_80, print = TRUE, seed = 19)
          summary(UASI_80_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UASI_80_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UASI80_RT_pred <- prop.table(table(complete(UASI_80_mice_imp,1)$Indication))[1]
          mice_UASI80_UT_pred <- prop.table(table(complete(UASI_80_mice_imp,1)$Indication))[2]
          mice_UASI80_SW_pred <- prop.table(table(complete(UASI_80_mice_imp,1)$Indication))[3]
          mice_UASI80_OU_pred <- prop.table(table(complete(UASI_80_mice_imp,1)$Indication))[4]
          
          mice_UASI80_RT_SE <- sqrt((mice_UASI80_RT_pred*(1 - mice_UASI80_RT_pred))/10000)
          mice_UASI80_UT_SE <- sqrt((mice_UASI80_UT_pred*(1 - mice_UASI80_UT_pred))/10000)
          mice_UASI80_SW_SE <- sqrt((mice_UASI80_SW_pred*(1 - mice_UASI80_SW_pred))/10000)
          mice_UASI80_OU_SE <- sqrt((mice_UASI80_OU_pred*(1 - mice_UASI80_OU_pred))/10000)
          
          mice_UASI80_RT_95upper <- mice_UASI80_RT_pred + 2*mice_UASI80_RT_SE
          mice_UASI80_RT_95lower <- mice_UASI80_RT_pred - 2*mice_UASI80_RT_SE
          mice_UASI80_RT_95width <- mice_UASI80_RT_95upper - mice_UASI80_RT_95lower
          mice_UASI80_UT_95upper <- mice_UASI80_UT_pred + 2*mice_UASI80_UT_SE
          mice_UASI80_UT_95lower <- mice_UASI80_UT_pred - 2*mice_UASI80_UT_SE
          mice_UASI80_UT_95width <- mice_UASI80_UT_95upper - mice_UASI80_UT_95lower
          mice_UASI80_SW_95upper <- mice_UASI80_SW_pred + 2*mice_UASI80_SW_SE
          mice_UASI80_SW_95lower <- mice_UASI80_SW_pred - 2*mice_UASI80_SW_SE
          mice_UASI80_SW_95width <- mice_UASI80_SW_95upper - mice_UASI80_SW_95lower
          mice_UASI80_OU_95upper <- mice_UASI80_OU_pred + 2*mice_UASI80_OU_SE
          mice_UASI80_OU_95lower <- mice_UASI80_OU_pred - 2*mice_UASI80_OU_SE
          mice_UASI80_OU_95width <- mice_UASI80_OU_95upper - mice_UASI80_OU_95lower
          
          mice_UASI80_RT_coverge <- (mice_UASI80_RT_95lower < RT_true) & (RT_true < mice_UASI80_RT_95upper)
          mice_UASI80_UT_coverge <- (mice_UASI80_UT_95lower < UT_true) & (UT_true < mice_UASI80_UT_95upper)
          mice_UASI80_SW_coverge <- (mice_UASI80_SW_95lower < SW_true) & (SW_true < mice_UASI80_SW_95upper)
          mice_UASI80_OU_coverge <- (mice_UASI80_OU_95lower < OU_true) & (OU_true < mice_UASI80_OU_95upper)
          
          list_mice_UASI80_RT_pred <- c(list_mice_UASI80_RT_pred, mice_UASI80_RT_pred)
          list_mice_UASI80_UT_pred <- c(list_mice_UASI80_UT_pred, mice_UASI80_UT_pred)
          list_mice_UASI80_SW_pred <- c(list_mice_UASI80_SW_pred, mice_UASI80_SW_pred)
          list_mice_UASI80_OU_pred <- c(list_mice_UASI80_OU_pred, mice_UASI80_OU_pred)
          list_mice_UASI80_RT_SE <- c(list_mice_UASI80_RT_SE, mice_UASI80_RT_SE)
          list_mice_UASI80_UT_SE <- c(list_mice_UASI80_UT_SE, mice_UASI80_UT_SE)
          list_mice_UASI80_SW_SE <- c(list_mice_UASI80_SW_SE, mice_UASI80_SW_SE)
          list_mice_UASI80_OU_SE <- c(list_mice_UASI80_OU_SE, mice_UASI80_OU_SE)
          list_mice_UASI80_RT_95width <- c(list_mice_UASI80_RT_95width, mice_UASI80_RT_95width)
          list_mice_UASI80_UT_95width <- c(list_mice_UASI80_UT_95width, mice_UASI80_UT_95width)
          list_mice_UASI80_SW_95width <- c(list_mice_UASI80_SW_95width, mice_UASI80_SW_95width)
          list_mice_UASI80_OU_95width <- c(list_mice_UASI80_OU_95width, mice_UASI80_OU_95width)
          list_mice_UASI80_RT_coverge <- c(list_mice_UASI80_RT_coverge, mice_UASI80_RT_coverge)
          list_mice_UASI80_UT_coverge <- c(list_mice_UASI80_UT_coverge, mice_UASI80_UT_coverge)
          list_mice_UASI80_SW_coverge <- c(list_mice_UASI80_SW_coverge, mice_UASI80_SW_coverge)
          list_mice_UASI80_OU_coverge <- c(list_mice_UASI80_OU_coverge, mice_UASI80_OU_coverge)
        }
      }
      
      #impute UA_50
      {
        #model
        {
          md.pattern(UA_50, plot = FALSE)
          md.pairs(UA_50)
          UA_50_mice_plot <- aggr(UA_50,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_50),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_50$SEX <- factor(UA_50$SEX, labels = levels(simulated$SEX))
          UA_50$AGE <- factor(UA_50$AGE, labels = levels(simulated$AGE))
          UA_50$Indication <- factor(UA_50$Indication, labels = levels(simulated$Indication))
          UA_50$AntibioticClass <- factor(UA_50$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_50 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UASI_50_mice_imp <- mice(UA_50, maxit = 10, m = 1, method = methods_UA_50, print = TRUE, seed = 19)
          summary(UASI_50_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UASI_50_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UASI50_RT_pred <- prop.table(table(complete(UASI_50_mice_imp,1)$Indication))[1]
          mice_UASI50_UT_pred <- prop.table(table(complete(UASI_50_mice_imp,1)$Indication))[2]
          mice_UASI50_SW_pred <- prop.table(table(complete(UASI_50_mice_imp,1)$Indication))[3]
          mice_UASI50_OU_pred <- prop.table(table(complete(UASI_50_mice_imp,1)$Indication))[4]
          
          mice_UASI50_RT_SE <- sqrt((mice_UASI50_RT_pred*(1 - mice_UASI50_RT_pred))/10000)
          mice_UASI50_UT_SE <- sqrt((mice_UASI50_UT_pred*(1 - mice_UASI50_UT_pred))/10000)
          mice_UASI50_SW_SE <- sqrt((mice_UASI50_SW_pred*(1 - mice_UASI50_SW_pred))/10000)
          mice_UASI50_OU_SE <- sqrt((mice_UASI50_OU_pred*(1 - mice_UASI50_OU_pred))/10000)
          
          mice_UASI50_RT_95upper <- mice_UASI50_RT_pred + 2*mice_UASI50_RT_SE
          mice_UASI50_RT_95lower <- mice_UASI50_RT_pred - 2*mice_UASI50_RT_SE
          mice_UASI50_RT_95width <- mice_UASI50_RT_95upper - mice_UASI50_RT_95lower
          mice_UASI50_UT_95upper <- mice_UASI50_UT_pred + 2*mice_UASI50_UT_SE
          mice_UASI50_UT_95lower <- mice_UASI50_UT_pred - 2*mice_UASI50_UT_SE
          mice_UASI50_UT_95width <- mice_UASI50_UT_95upper - mice_UASI50_UT_95lower
          mice_UASI50_SW_95upper <- mice_UASI50_SW_pred + 2*mice_UASI50_SW_SE
          mice_UASI50_SW_95lower <- mice_UASI50_SW_pred - 2*mice_UASI50_SW_SE
          mice_UASI50_SW_95width <- mice_UASI50_SW_95upper - mice_UASI50_SW_95lower
          mice_UASI50_OU_95upper <- mice_UASI50_OU_pred + 2*mice_UASI50_OU_SE
          mice_UASI50_OU_95lower <- mice_UASI50_OU_pred - 2*mice_UASI50_OU_SE
          mice_UASI50_OU_95width <- mice_UASI50_OU_95upper - mice_UASI50_OU_95lower
          
          mice_UASI50_RT_coverge <- (mice_UASI50_RT_95lower < RT_true) & (RT_true < mice_UASI50_RT_95upper)
          mice_UASI50_UT_coverge <- (mice_UASI50_UT_95lower < UT_true) & (UT_true < mice_UASI50_UT_95upper)
          mice_UASI50_SW_coverge <- (mice_UASI50_SW_95lower < SW_true) & (SW_true < mice_UASI50_SW_95upper)
          mice_UASI50_OU_coverge <- (mice_UASI50_OU_95lower < OU_true) & (OU_true < mice_UASI50_OU_95upper)
          
          list_mice_UASI50_RT_pred <- c(list_mice_UASI50_RT_pred, mice_UASI50_RT_pred)
          list_mice_UASI50_UT_pred <- c(list_mice_UASI50_UT_pred, mice_UASI50_UT_pred)
          list_mice_UASI50_SW_pred <- c(list_mice_UASI50_SW_pred, mice_UASI50_SW_pred)
          list_mice_UASI50_OU_pred <- c(list_mice_UASI50_OU_pred, mice_UASI50_OU_pred)
          list_mice_UASI50_RT_SE <- c(list_mice_UASI50_RT_SE, mice_UASI50_RT_SE)
          list_mice_UASI50_UT_SE <- c(list_mice_UASI50_UT_SE, mice_UASI50_UT_SE)
          list_mice_UASI50_SW_SE <- c(list_mice_UASI50_SW_SE, mice_UASI50_SW_SE)
          list_mice_UASI50_OU_SE <- c(list_mice_UASI50_OU_SE, mice_UASI50_OU_SE)
          list_mice_UASI50_RT_95width <- c(list_mice_UASI50_RT_95width, mice_UASI50_RT_95width)
          list_mice_UASI50_UT_95width <- c(list_mice_UASI50_UT_95width, mice_UASI50_UT_95width)
          list_mice_UASI50_SW_95width <- c(list_mice_UASI50_SW_95width, mice_UASI50_SW_95width)
          list_mice_UASI50_OU_95width <- c(list_mice_UASI50_OU_95width, mice_UASI50_OU_95width)
          list_mice_UASI50_RT_coverge <- c(list_mice_UASI50_RT_coverge, mice_UASI50_RT_coverge)
          list_mice_UASI50_UT_coverge <- c(list_mice_UASI50_UT_coverge, mice_UASI50_UT_coverge)
          list_mice_UASI50_SW_coverge <- c(list_mice_UASI50_SW_coverge, mice_UASI50_SW_coverge)
          list_mice_UASI50_OU_coverge <- c(list_mice_UASI50_OU_coverge, mice_UASI50_OU_coverge)
        }
      }
      
      #impute UA_20
      {
        #model
        {
          md.pattern(UA_20, plot = FALSE)
          md.pairs(UA_20)
          UA_20_mice_plot <- aggr(UA_20,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_20),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_20$SEX <- factor(UA_20$SEX, labels = levels(simulated$SEX))
          UA_20$AGE <- factor(UA_20$AGE, labels = levels(simulated$AGE))
          UA_20$Indication <- factor(UA_20$Indication, labels = levels(simulated$Indication))
          UA_20$AntibioticClass <- factor(UA_20$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_20 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UASI_20_mice_imp <- mice(UA_20, maxit = 10, m = 1, method = methods_UA_20, print = TRUE, seed = 19)
          summary(UASI_20_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UASI_20_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UASI20_RT_pred <- prop.table(table(complete(UASI_20_mice_imp,1)$Indication))[1]
          mice_UASI20_UT_pred <- prop.table(table(complete(UASI_20_mice_imp,1)$Indication))[2]
          mice_UASI20_SW_pred <- prop.table(table(complete(UASI_20_mice_imp,1)$Indication))[3]
          mice_UASI20_OU_pred <- prop.table(table(complete(UASI_20_mice_imp,1)$Indication))[4]
          
          mice_UASI20_RT_SE <- sqrt((mice_UASI20_RT_pred*(1 - mice_UASI20_RT_pred))/10000)
          mice_UASI20_UT_SE <- sqrt((mice_UASI20_UT_pred*(1 - mice_UASI20_UT_pred))/10000)
          mice_UASI20_SW_SE <- sqrt((mice_UASI20_SW_pred*(1 - mice_UASI20_SW_pred))/10000)
          mice_UASI20_OU_SE <- sqrt((mice_UASI20_OU_pred*(1 - mice_UASI20_OU_pred))/10000)
          
          mice_UASI20_RT_95upper <- mice_UASI20_RT_pred + 2*mice_UASI20_RT_SE
          mice_UASI20_RT_95lower <- mice_UASI20_RT_pred - 2*mice_UASI20_RT_SE
          mice_UASI20_RT_95width <- mice_UASI20_RT_95upper - mice_UASI20_RT_95lower
          mice_UASI20_UT_95upper <- mice_UASI20_UT_pred + 2*mice_UASI20_UT_SE
          mice_UASI20_UT_95lower <- mice_UASI20_UT_pred - 2*mice_UASI20_UT_SE
          mice_UASI20_UT_95width <- mice_UASI20_UT_95upper - mice_UASI20_UT_95lower
          mice_UASI20_SW_95upper <- mice_UASI20_SW_pred + 2*mice_UASI20_SW_SE
          mice_UASI20_SW_95lower <- mice_UASI20_SW_pred - 2*mice_UASI20_SW_SE
          mice_UASI20_SW_95width <- mice_UASI20_SW_95upper - mice_UASI20_SW_95lower
          mice_UASI20_OU_95upper <- mice_UASI20_OU_pred + 2*mice_UASI20_OU_SE
          mice_UASI20_OU_95lower <- mice_UASI20_OU_pred - 2*mice_UASI20_OU_SE
          mice_UASI20_OU_95width <- mice_UASI20_OU_95upper - mice_UASI20_OU_95lower
          
          mice_UASI20_RT_coverge <- (mice_UASI20_RT_95lower < RT_true) & (RT_true < mice_UASI20_RT_95upper)
          mice_UASI20_UT_coverge <- (mice_UASI20_UT_95lower < UT_true) & (UT_true < mice_UASI20_UT_95upper)
          mice_UASI20_SW_coverge <- (mice_UASI20_SW_95lower < SW_true) & (SW_true < mice_UASI20_SW_95upper)
          mice_UASI20_OU_coverge <- (mice_UASI20_OU_95lower < OU_true) & (OU_true < mice_UASI20_OU_95upper)
          
          list_mice_UASI20_RT_pred <- c(list_mice_UASI20_RT_pred, mice_UASI20_RT_pred)
          list_mice_UASI20_UT_pred <- c(list_mice_UASI20_UT_pred, mice_UASI20_UT_pred)
          list_mice_UASI20_SW_pred <- c(list_mice_UASI20_SW_pred, mice_UASI20_SW_pred)
          list_mice_UASI20_OU_pred <- c(list_mice_UASI20_OU_pred, mice_UASI20_OU_pred)
          list_mice_UASI20_RT_SE <- c(list_mice_UASI20_RT_SE, mice_UASI20_RT_SE)
          list_mice_UASI20_UT_SE <- c(list_mice_UASI20_UT_SE, mice_UASI20_UT_SE)
          list_mice_UASI20_SW_SE <- c(list_mice_UASI20_SW_SE, mice_UASI20_SW_SE)
          list_mice_UASI20_OU_SE <- c(list_mice_UASI20_OU_SE, mice_UASI20_OU_SE)
          list_mice_UASI20_RT_95width <- c(list_mice_UASI20_RT_95width, mice_UASI20_RT_95width)
          list_mice_UASI20_UT_95width <- c(list_mice_UASI20_UT_95width, mice_UASI20_UT_95width)
          list_mice_UASI20_SW_95width <- c(list_mice_UASI20_SW_95width, mice_UASI20_SW_95width)
          list_mice_UASI20_OU_95width <- c(list_mice_UASI20_OU_95width, mice_UASI20_OU_95width)
          list_mice_UASI20_RT_coverge <- c(list_mice_UASI20_RT_coverge, mice_UASI20_RT_coverge)
          list_mice_UASI20_UT_coverge <- c(list_mice_UASI20_UT_coverge, mice_UASI20_UT_coverge)
          list_mice_UASI20_SW_coverge <- c(list_mice_UASI20_SW_coverge, mice_UASI20_SW_coverge)
          list_mice_UASI20_OU_coverge <- c(list_mice_UASI20_OU_coverge, mice_UASI20_OU_coverge)
        }
      }
      
      #impute UA_5
      {
        #model
        {
          md.pattern(UA_5, plot = FALSE)
          md.pairs(UA_5)
          UA_5_mice_plot <- aggr(UA_5,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_5),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_5$SEX <- factor(UA_5$SEX, labels = levels(simulated$SEX))
          UA_5$AGE <- factor(UA_5$AGE, labels = levels(simulated$AGE))
          UA_5$Indication <- factor(UA_5$Indication, labels = levels(simulated$Indication))
          UA_5$AntibioticClass <- factor(UA_5$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_5 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UASI_5_mice_imp <- mice(UA_5, maxit = 10, m = 1, method = methods_UA_5, print = TRUE, seed = 19)
          summary(UASI_5_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UASI_5_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UASI5_RT_pred <- prop.table(table(complete(UASI_5_mice_imp,1)$Indication))[1]
          mice_UASI5_UT_pred <- prop.table(table(complete(UASI_5_mice_imp,1)$Indication))[2]
          mice_UASI5_SW_pred <- prop.table(table(complete(UASI_5_mice_imp,1)$Indication))[3]
          mice_UASI5_OU_pred <- prop.table(table(complete(UASI_5_mice_imp,1)$Indication))[4]
          
          mice_UASI5_RT_SE <- sqrt((mice_UASI5_RT_pred*(1 - mice_UASI5_RT_pred))/10000)
          mice_UASI5_UT_SE <- sqrt((mice_UASI5_UT_pred*(1 - mice_UASI5_UT_pred))/10000)
          mice_UASI5_SW_SE <- sqrt((mice_UASI5_SW_pred*(1 - mice_UASI5_SW_pred))/10000)
          mice_UASI5_OU_SE <- sqrt((mice_UASI5_OU_pred*(1 - mice_UASI5_OU_pred))/10000)
          
          mice_UASI5_RT_95upper <- mice_UASI5_RT_pred + 2*mice_UASI5_RT_SE
          mice_UASI5_RT_95lower <- mice_UASI5_RT_pred - 2*mice_UASI5_RT_SE
          mice_UASI5_RT_95width <- mice_UASI5_RT_95upper - mice_UASI5_RT_95lower
          mice_UASI5_UT_95upper <- mice_UASI5_UT_pred + 2*mice_UASI5_UT_SE
          mice_UASI5_UT_95lower <- mice_UASI5_UT_pred - 2*mice_UASI5_UT_SE
          mice_UASI5_UT_95width <- mice_UASI5_UT_95upper - mice_UASI5_UT_95lower
          mice_UASI5_SW_95upper <- mice_UASI5_SW_pred + 2*mice_UASI5_SW_SE
          mice_UASI5_SW_95lower <- mice_UASI5_SW_pred - 2*mice_UASI5_SW_SE
          mice_UASI5_SW_95width <- mice_UASI5_SW_95upper - mice_UASI5_SW_95lower
          mice_UASI5_OU_95upper <- mice_UASI5_OU_pred + 2*mice_UASI5_OU_SE
          mice_UASI5_OU_95lower <- mice_UASI5_OU_pred - 2*mice_UASI5_OU_SE
          mice_UASI5_OU_95width <- mice_UASI5_OU_95upper - mice_UASI5_OU_95lower
          
          mice_UASI5_RT_coverge <- (mice_UASI5_RT_95lower < RT_true) & (RT_true < mice_UASI5_RT_95upper)
          mice_UASI5_UT_coverge <- (mice_UASI5_UT_95lower < UT_true) & (UT_true < mice_UASI5_UT_95upper)
          mice_UASI5_SW_coverge <- (mice_UASI5_SW_95lower < SW_true) & (SW_true < mice_UASI5_SW_95upper)
          mice_UASI5_OU_coverge <- (mice_UASI5_OU_95lower < OU_true) & (OU_true < mice_UASI5_OU_95upper)
          
          list_mice_UASI5_RT_pred <- c(list_mice_UASI5_RT_pred, mice_UASI5_RT_pred)
          list_mice_UASI5_UT_pred <- c(list_mice_UASI5_UT_pred, mice_UASI5_UT_pred)
          list_mice_UASI5_SW_pred <- c(list_mice_UASI5_SW_pred, mice_UASI5_SW_pred)
          list_mice_UASI5_OU_pred <- c(list_mice_UASI5_OU_pred, mice_UASI5_OU_pred)
          list_mice_UASI5_RT_SE <- c(list_mice_UASI5_RT_SE, mice_UASI5_RT_SE)
          list_mice_UASI5_UT_SE <- c(list_mice_UASI5_UT_SE, mice_UASI5_UT_SE)
          list_mice_UASI5_SW_SE <- c(list_mice_UASI5_SW_SE, mice_UASI5_SW_SE)
          list_mice_UASI5_OU_SE <- c(list_mice_UASI5_OU_SE, mice_UASI5_OU_SE)
          list_mice_UASI5_RT_95width <- c(list_mice_UASI5_RT_95width, mice_UASI5_RT_95width)
          list_mice_UASI5_UT_95width <- c(list_mice_UASI5_UT_95width, mice_UASI5_UT_95width)
          list_mice_UASI5_SW_95width <- c(list_mice_UASI5_SW_95width, mice_UASI5_SW_95width)
          list_mice_UASI5_OU_95width <- c(list_mice_UASI5_OU_95width, mice_UASI5_OU_95width)
          list_mice_UASI5_RT_coverge <- c(list_mice_UASI5_RT_coverge, mice_UASI5_RT_coverge)
          list_mice_UASI5_UT_coverge <- c(list_mice_UASI5_UT_coverge, mice_UASI5_UT_coverge)
          list_mice_UASI5_SW_coverge <- c(list_mice_UASI5_SW_coverge, mice_UASI5_SW_coverge)
          list_mice_UASI5_OU_coverge <- c(list_mice_UASI5_OU_coverge, mice_UASI5_OU_coverge)
        }
      }
      
      #impute MA_80
      {
        #model
        {
          md.pattern(MA_80, plot = FALSE)
          md.pairs(MA_80)
          MA_80_mice_plot <- aggr(MA_80,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_80),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_80$SEX <- factor(MA_80$SEX, labels = levels(simulated$SEX))
          MA_80$AGE <- factor(MA_80$AGE, labels = levels(simulated$AGE))
          MA_80$Indication <- factor(MA_80$Indication, labels = levels(simulated$Indication))
          MA_80$AntibioticClass <- factor(MA_80$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_80 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MASI_80_mice_imp <- mice(MA_80, maxit = 10, m = 1, method = methods_MA_80, print = TRUE, seed = 19)
          summary(MASI_80_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MASI_80_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MASI80_RT_pred <- prop.table(table(complete(MASI_80_mice_imp,1)$Indication))[1]
          mice_MASI80_UT_pred <- prop.table(table(complete(MASI_80_mice_imp,1)$Indication))[2]
          mice_MASI80_SW_pred <- prop.table(table(complete(MASI_80_mice_imp,1)$Indication))[3]
          mice_MASI80_OU_pred <- prop.table(table(complete(MASI_80_mice_imp,1)$Indication))[4]
          
          mice_MASI80_RT_SE <- sqrt((mice_MASI80_RT_pred*(1 - mice_MASI80_RT_pred))/10000)
          mice_MASI80_UT_SE <- sqrt((mice_MASI80_UT_pred*(1 - mice_MASI80_UT_pred))/10000)
          mice_MASI80_SW_SE <- sqrt((mice_MASI80_SW_pred*(1 - mice_MASI80_SW_pred))/10000)
          mice_MASI80_OU_SE <- sqrt((mice_MASI80_OU_pred*(1 - mice_MASI80_OU_pred))/10000)
          
          mice_MASI80_RT_95upper <- mice_MASI80_RT_pred + 2*mice_MASI80_RT_SE
          mice_MASI80_RT_95lower <- mice_MASI80_RT_pred - 2*mice_MASI80_RT_SE
          mice_MASI80_RT_95width <- mice_MASI80_RT_95upper - mice_MASI80_RT_95lower
          mice_MASI80_UT_95upper <- mice_MASI80_UT_pred + 2*mice_MASI80_UT_SE
          mice_MASI80_UT_95lower <- mice_MASI80_UT_pred - 2*mice_MASI80_UT_SE
          mice_MASI80_UT_95width <- mice_MASI80_UT_95upper - mice_MASI80_UT_95lower
          mice_MASI80_SW_95upper <- mice_MASI80_SW_pred + 2*mice_MASI80_SW_SE
          mice_MASI80_SW_95lower <- mice_MASI80_SW_pred - 2*mice_MASI80_SW_SE
          mice_MASI80_SW_95width <- mice_MASI80_SW_95upper - mice_MASI80_SW_95lower
          mice_MASI80_OU_95upper <- mice_MASI80_OU_pred + 2*mice_MASI80_OU_SE
          mice_MASI80_OU_95lower <- mice_MASI80_OU_pred - 2*mice_MASI80_OU_SE
          mice_MASI80_OU_95width <- mice_MASI80_OU_95upper - mice_MASI80_OU_95lower
          
          mice_MASI80_RT_coverge <- (mice_MASI80_RT_95lower < RT_true) & (RT_true < mice_MASI80_RT_95upper)
          mice_MASI80_UT_coverge <- (mice_MASI80_UT_95lower < UT_true) & (UT_true < mice_MASI80_UT_95upper)
          mice_MASI80_SW_coverge <- (mice_MASI80_SW_95lower < SW_true) & (SW_true < mice_MASI80_SW_95upper)
          mice_MASI80_OU_coverge <- (mice_MASI80_OU_95lower < OU_true) & (OU_true < mice_MASI80_OU_95upper)
          
          list_mice_MASI80_RT_pred <- c(list_mice_MASI80_RT_pred, mice_MASI80_RT_pred)
          list_mice_MASI80_UT_pred <- c(list_mice_MASI80_UT_pred, mice_MASI80_UT_pred)
          list_mice_MASI80_SW_pred <- c(list_mice_MASI80_SW_pred, mice_MASI80_SW_pred)
          list_mice_MASI80_OU_pred <- c(list_mice_MASI80_OU_pred, mice_MASI80_OU_pred)
          list_mice_MASI80_RT_SE <- c(list_mice_MASI80_RT_SE, mice_MASI80_RT_SE)
          list_mice_MASI80_UT_SE <- c(list_mice_MASI80_UT_SE, mice_MASI80_UT_SE)
          list_mice_MASI80_SW_SE <- c(list_mice_MASI80_SW_SE, mice_MASI80_SW_SE)
          list_mice_MASI80_OU_SE <- c(list_mice_MASI80_OU_SE, mice_MASI80_OU_SE)
          list_mice_MASI80_RT_95width <- c(list_mice_MASI80_RT_95width, mice_MASI80_RT_95width)
          list_mice_MASI80_UT_95width <- c(list_mice_MASI80_UT_95width, mice_MASI80_UT_95width)
          list_mice_MASI80_SW_95width <- c(list_mice_MASI80_SW_95width, mice_MASI80_SW_95width)
          list_mice_MASI80_OU_95width <- c(list_mice_MASI80_OU_95width, mice_MASI80_OU_95width)
          list_mice_MASI80_RT_coverge <- c(list_mice_MASI80_RT_coverge, mice_MASI80_RT_coverge)
          list_mice_MASI80_UT_coverge <- c(list_mice_MASI80_UT_coverge, mice_MASI80_UT_coverge)
          list_mice_MASI80_SW_coverge <- c(list_mice_MASI80_SW_coverge, mice_MASI80_SW_coverge)
          list_mice_MASI80_OU_coverge <- c(list_mice_MASI80_OU_coverge, mice_MASI80_OU_coverge)
        }
      }
      
      #impute MA_50
      {
        #model
        {
          md.pattern(MA_50, plot = FALSE)
          md.pairs(MA_50)
          MA_50_mice_plot <- aggr(MA_50,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_50),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_50$SEX <- factor(MA_50$SEX, labels = levels(simulated$SEX))
          MA_50$AGE <- factor(MA_50$AGE, labels = levels(simulated$AGE))
          MA_50$Indication <- factor(MA_50$Indication, labels = levels(simulated$Indication))
          MA_50$AntibioticClass <- factor(MA_50$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_50 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MASI_50_mice_imp <- mice(MA_50, maxit = 10, m = 1, method = methods_MA_50, print = TRUE, seed = 19)
          summary(MASI_50_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MASI_50_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MASI50_RT_pred <- prop.table(table(complete(MASI_50_mice_imp,1)$Indication))[1]
          mice_MASI50_UT_pred <- prop.table(table(complete(MASI_50_mice_imp,1)$Indication))[2]
          mice_MASI50_SW_pred <- prop.table(table(complete(MASI_50_mice_imp,1)$Indication))[3]
          mice_MASI50_OU_pred <- prop.table(table(complete(MASI_50_mice_imp,1)$Indication))[4]
          
          mice_MASI50_RT_SE <- sqrt((mice_MASI50_RT_pred*(1 - mice_MASI50_RT_pred))/10000)
          mice_MASI50_UT_SE <- sqrt((mice_MASI50_UT_pred*(1 - mice_MASI50_UT_pred))/10000)
          mice_MASI50_SW_SE <- sqrt((mice_MASI50_SW_pred*(1 - mice_MASI50_SW_pred))/10000)
          mice_MASI50_OU_SE <- sqrt((mice_MASI50_OU_pred*(1 - mice_MASI50_OU_pred))/10000)
          
          mice_MASI50_RT_95upper <- mice_MASI50_RT_pred + 2*mice_MASI50_RT_SE
          mice_MASI50_RT_95lower <- mice_MASI50_RT_pred - 2*mice_MASI50_RT_SE
          mice_MASI50_RT_95width <- mice_MASI50_RT_95upper - mice_MASI50_RT_95lower
          mice_MASI50_UT_95upper <- mice_MASI50_UT_pred + 2*mice_MASI50_UT_SE
          mice_MASI50_UT_95lower <- mice_MASI50_UT_pred - 2*mice_MASI50_UT_SE
          mice_MASI50_UT_95width <- mice_MASI50_UT_95upper - mice_MASI50_UT_95lower
          mice_MASI50_SW_95upper <- mice_MASI50_SW_pred + 2*mice_MASI50_SW_SE
          mice_MASI50_SW_95lower <- mice_MASI50_SW_pred - 2*mice_MASI50_SW_SE
          mice_MASI50_SW_95width <- mice_MASI50_SW_95upper - mice_MASI50_SW_95lower
          mice_MASI50_OU_95upper <- mice_MASI50_OU_pred + 2*mice_MASI50_OU_SE
          mice_MASI50_OU_95lower <- mice_MASI50_OU_pred - 2*mice_MASI50_OU_SE
          mice_MASI50_OU_95width <- mice_MASI50_OU_95upper - mice_MASI50_OU_95lower
          
          mice_MASI50_RT_coverge <- (mice_MASI50_RT_95lower < RT_true) & (RT_true < mice_MASI50_RT_95upper)
          mice_MASI50_UT_coverge <- (mice_MASI50_UT_95lower < UT_true) & (UT_true < mice_MASI50_UT_95upper)
          mice_MASI50_SW_coverge <- (mice_MASI50_SW_95lower < SW_true) & (SW_true < mice_MASI50_SW_95upper)
          mice_MASI50_OU_coverge <- (mice_MASI50_OU_95lower < OU_true) & (OU_true < mice_MASI50_OU_95upper)
          
          list_mice_MASI50_RT_pred <- c(list_mice_MASI50_RT_pred, mice_MASI50_RT_pred)
          list_mice_MASI50_UT_pred <- c(list_mice_MASI50_UT_pred, mice_MASI50_UT_pred)
          list_mice_MASI50_SW_pred <- c(list_mice_MASI50_SW_pred, mice_MASI50_SW_pred)
          list_mice_MASI50_OU_pred <- c(list_mice_MASI50_OU_pred, mice_MASI50_OU_pred)
          list_mice_MASI50_RT_SE <- c(list_mice_MASI50_RT_SE, mice_MASI50_RT_SE)
          list_mice_MASI50_UT_SE <- c(list_mice_MASI50_UT_SE, mice_MASI50_UT_SE)
          list_mice_MASI50_SW_SE <- c(list_mice_MASI50_SW_SE, mice_MASI50_SW_SE)
          list_mice_MASI50_OU_SE <- c(list_mice_MASI50_OU_SE, mice_MASI50_OU_SE)
          list_mice_MASI50_RT_95width <- c(list_mice_MASI50_RT_95width, mice_MASI50_RT_95width)
          list_mice_MASI50_UT_95width <- c(list_mice_MASI50_UT_95width, mice_MASI50_UT_95width)
          list_mice_MASI50_SW_95width <- c(list_mice_MASI50_SW_95width, mice_MASI50_SW_95width)
          list_mice_MASI50_OU_95width <- c(list_mice_MASI50_OU_95width, mice_MASI50_OU_95width)
          list_mice_MASI50_RT_coverge <- c(list_mice_MASI50_RT_coverge, mice_MASI50_RT_coverge)
          list_mice_MASI50_UT_coverge <- c(list_mice_MASI50_UT_coverge, mice_MASI50_UT_coverge)
          list_mice_MASI50_SW_coverge <- c(list_mice_MASI50_SW_coverge, mice_MASI50_SW_coverge)
          list_mice_MASI50_OU_coverge <- c(list_mice_MASI50_OU_coverge, mice_MASI50_OU_coverge)
        }
      }
      
      #impute MA_20
      {
        #model
        {
          md.pattern(MA_20, plot = FALSE)
          md.pairs(MA_20)
          MA_20_mice_plot <- aggr(MA_20,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_20),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_20$SEX <- factor(MA_20$SEX, labels = levels(simulated$SEX))
          MA_20$AGE <- factor(MA_20$AGE, labels = levels(simulated$AGE))
          MA_20$Indication <- factor(MA_20$Indication, labels = levels(simulated$Indication))
          MA_20$AntibioticClass <- factor(MA_20$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_20 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MASI_20_mice_imp <- mice(MA_20, maxit = 10, m = 1, method = methods_MA_20, print = TRUE, seed = 19)
          summary(MASI_20_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MASI_20_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MASI20_RT_pred <- prop.table(table(complete(MASI_20_mice_imp,1)$Indication))[1]
          mice_MASI20_UT_pred <- prop.table(table(complete(MASI_20_mice_imp,1)$Indication))[2]
          mice_MASI20_SW_pred <- prop.table(table(complete(MASI_20_mice_imp,1)$Indication))[3]
          mice_MASI20_OU_pred <- prop.table(table(complete(MASI_20_mice_imp,1)$Indication))[4]
          
          mice_MASI20_RT_SE <- sqrt((mice_MASI20_RT_pred*(1 - mice_MASI20_RT_pred))/10000)
          mice_MASI20_UT_SE <- sqrt((mice_MASI20_UT_pred*(1 - mice_MASI20_UT_pred))/10000)
          mice_MASI20_SW_SE <- sqrt((mice_MASI20_SW_pred*(1 - mice_MASI20_SW_pred))/10000)
          mice_MASI20_OU_SE <- sqrt((mice_MASI20_OU_pred*(1 - mice_MASI20_OU_pred))/10000)
          
          mice_MASI20_RT_95upper <- mice_MASI20_RT_pred + 2*mice_MASI20_RT_SE
          mice_MASI20_RT_95lower <- mice_MASI20_RT_pred - 2*mice_MASI20_RT_SE
          mice_MASI20_RT_95width <- mice_MASI20_RT_95upper - mice_MASI20_RT_95lower
          mice_MASI20_UT_95upper <- mice_MASI20_UT_pred + 2*mice_MASI20_UT_SE
          mice_MASI20_UT_95lower <- mice_MASI20_UT_pred - 2*mice_MASI20_UT_SE
          mice_MASI20_UT_95width <- mice_MASI20_UT_95upper - mice_MASI20_UT_95lower
          mice_MASI20_SW_95upper <- mice_MASI20_SW_pred + 2*mice_MASI20_SW_SE
          mice_MASI20_SW_95lower <- mice_MASI20_SW_pred - 2*mice_MASI20_SW_SE
          mice_MASI20_SW_95width <- mice_MASI20_SW_95upper - mice_MASI20_SW_95lower
          mice_MASI20_OU_95upper <- mice_MASI20_OU_pred + 2*mice_MASI20_OU_SE
          mice_MASI20_OU_95lower <- mice_MASI20_OU_pred - 2*mice_MASI20_OU_SE
          mice_MASI20_OU_95width <- mice_MASI20_OU_95upper - mice_MASI20_OU_95lower
          
          mice_MASI20_RT_coverge <- (mice_MASI20_RT_95lower < RT_true) & (RT_true < mice_MASI20_RT_95upper)
          mice_MASI20_UT_coverge <- (mice_MASI20_UT_95lower < UT_true) & (UT_true < mice_MASI20_UT_95upper)
          mice_MASI20_SW_coverge <- (mice_MASI20_SW_95lower < SW_true) & (SW_true < mice_MASI20_SW_95upper)
          mice_MASI20_OU_coverge <- (mice_MASI20_OU_95lower < OU_true) & (OU_true < mice_MASI20_OU_95upper)
          
          list_mice_MASI20_RT_pred <- c(list_mice_MASI20_RT_pred, mice_MASI20_RT_pred)
          list_mice_MASI20_UT_pred <- c(list_mice_MASI20_UT_pred, mice_MASI20_UT_pred)
          list_mice_MASI20_SW_pred <- c(list_mice_MASI20_SW_pred, mice_MASI20_SW_pred)
          list_mice_MASI20_OU_pred <- c(list_mice_MASI20_OU_pred, mice_MASI20_OU_pred)
          list_mice_MASI20_RT_SE <- c(list_mice_MASI20_RT_SE, mice_MASI20_RT_SE)
          list_mice_MASI20_UT_SE <- c(list_mice_MASI20_UT_SE, mice_MASI20_UT_SE)
          list_mice_MASI20_SW_SE <- c(list_mice_MASI20_SW_SE, mice_MASI20_SW_SE)
          list_mice_MASI20_OU_SE <- c(list_mice_MASI20_OU_SE, mice_MASI20_OU_SE)
          list_mice_MASI20_RT_95width <- c(list_mice_MASI20_RT_95width, mice_MASI20_RT_95width)
          list_mice_MASI20_UT_95width <- c(list_mice_MASI20_UT_95width, mice_MASI20_UT_95width)
          list_mice_MASI20_SW_95width <- c(list_mice_MASI20_SW_95width, mice_MASI20_SW_95width)
          list_mice_MASI20_OU_95width <- c(list_mice_MASI20_OU_95width, mice_MASI20_OU_95width)
          list_mice_MASI20_RT_coverge <- c(list_mice_MASI20_RT_coverge, mice_MASI20_RT_coverge)
          list_mice_MASI20_UT_coverge <- c(list_mice_MASI20_UT_coverge, mice_MASI20_UT_coverge)
          list_mice_MASI20_SW_coverge <- c(list_mice_MASI20_SW_coverge, mice_MASI20_SW_coverge)
          list_mice_MASI20_OU_coverge <- c(list_mice_MASI20_OU_coverge, mice_MASI20_OU_coverge)
        }
      }
      
      #impute MA_5
      {
        #model
        {
          md.pattern(MA_5, plot = FALSE)
          md.pairs(MA_5)
          MA_5_mice_plot <- aggr(MA_5,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_5),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_5$SEX <- factor(MA_5$SEX, labels = levels(simulated$SEX))
          MA_5$AGE <- factor(MA_5$AGE, labels = levels(simulated$AGE))
          MA_5$Indication <- factor(MA_5$Indication, labels = levels(simulated$Indication))
          MA_5$AntibioticClass <- factor(MA_5$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_5 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MASI_5_mice_imp <- mice(MA_5, maxit = 10, m = 1, method = methods_MA_5, print = TRUE, seed = 19)
          summary(MASI_5_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MASI_5_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MASI5_RT_pred <- prop.table(table(complete(MASI_5_mice_imp,1)$Indication))[1]
          mice_MASI5_UT_pred <- prop.table(table(complete(MASI_5_mice_imp,1)$Indication))[2]
          mice_MASI5_SW_pred <- prop.table(table(complete(MASI_5_mice_imp,1)$Indication))[3]
          mice_MASI5_OU_pred <- prop.table(table(complete(MASI_5_mice_imp,1)$Indication))[4]
          
          mice_MASI5_RT_SE <- sqrt((mice_MASI5_RT_pred*(1 - mice_MASI5_RT_pred))/10000)
          mice_MASI5_UT_SE <- sqrt((mice_MASI5_UT_pred*(1 - mice_MASI5_UT_pred))/10000)
          mice_MASI5_SW_SE <- sqrt((mice_MASI5_SW_pred*(1 - mice_MASI5_SW_pred))/10000)
          mice_MASI5_OU_SE <- sqrt((mice_MASI5_OU_pred*(1 - mice_MASI5_OU_pred))/10000)
          
          mice_MASI5_RT_95upper <- mice_MASI5_RT_pred + 2*mice_MASI5_RT_SE
          mice_MASI5_RT_95lower <- mice_MASI5_RT_pred - 2*mice_MASI5_RT_SE
          mice_MASI5_RT_95width <- mice_MASI5_RT_95upper - mice_MASI5_RT_95lower
          mice_MASI5_UT_95upper <- mice_MASI5_UT_pred + 2*mice_MASI5_UT_SE
          mice_MASI5_UT_95lower <- mice_MASI5_UT_pred - 2*mice_MASI5_UT_SE
          mice_MASI5_UT_95width <- mice_MASI5_UT_95upper - mice_MASI5_UT_95lower
          mice_MASI5_SW_95upper <- mice_MASI5_SW_pred + 2*mice_MASI5_SW_SE
          mice_MASI5_SW_95lower <- mice_MASI5_SW_pred - 2*mice_MASI5_SW_SE
          mice_MASI5_SW_95width <- mice_MASI5_SW_95upper - mice_MASI5_SW_95lower
          mice_MASI5_OU_95upper <- mice_MASI5_OU_pred + 2*mice_MASI5_OU_SE
          mice_MASI5_OU_95lower <- mice_MASI5_OU_pred - 2*mice_MASI5_OU_SE
          mice_MASI5_OU_95width <- mice_MASI5_OU_95upper - mice_MASI5_OU_95lower
          
          mice_MASI5_RT_coverge <- (mice_MASI5_RT_95lower < RT_true) & (RT_true < mice_MASI5_RT_95upper)
          mice_MASI5_UT_coverge <- (mice_MASI5_UT_95lower < UT_true) & (UT_true < mice_MASI5_UT_95upper)
          mice_MASI5_SW_coverge <- (mice_MASI5_SW_95lower < SW_true) & (SW_true < mice_MASI5_SW_95upper)
          mice_MASI5_OU_coverge <- (mice_MASI5_OU_95lower < OU_true) & (OU_true < mice_MASI5_OU_95upper)
          
          list_mice_MASI5_RT_pred <- c(list_mice_MASI5_RT_pred, mice_MASI5_RT_pred)
          list_mice_MASI5_UT_pred <- c(list_mice_MASI5_UT_pred, mice_MASI5_UT_pred)
          list_mice_MASI5_SW_pred <- c(list_mice_MASI5_SW_pred, mice_MASI5_SW_pred)
          list_mice_MASI5_OU_pred <- c(list_mice_MASI5_OU_pred, mice_MASI5_OU_pred)
          list_mice_MASI5_RT_SE <- c(list_mice_MASI5_RT_SE, mice_MASI5_RT_SE)
          list_mice_MASI5_UT_SE <- c(list_mice_MASI5_UT_SE, mice_MASI5_UT_SE)
          list_mice_MASI5_SW_SE <- c(list_mice_MASI5_SW_SE, mice_MASI5_SW_SE)
          list_mice_MASI5_OU_SE <- c(list_mice_MASI5_OU_SE, mice_MASI5_OU_SE)
          list_mice_MASI5_RT_95width <- c(list_mice_MASI5_RT_95width, mice_MASI5_RT_95width)
          list_mice_MASI5_UT_95width <- c(list_mice_MASI5_UT_95width, mice_MASI5_UT_95width)
          list_mice_MASI5_SW_95width <- c(list_mice_MASI5_SW_95width, mice_MASI5_SW_95width)
          list_mice_MASI5_OU_95width <- c(list_mice_MASI5_OU_95width, mice_MASI5_OU_95width)
          list_mice_MASI5_RT_coverge <- c(list_mice_MASI5_RT_coverge, mice_MASI5_RT_coverge)
          list_mice_MASI5_UT_coverge <- c(list_mice_MASI5_UT_coverge, mice_MASI5_UT_coverge)
          list_mice_MASI5_SW_coverge <- c(list_mice_MASI5_SW_coverge, mice_MASI5_SW_coverge)
          list_mice_MASI5_OU_coverge <- c(list_mice_MASI5_OU_coverge, mice_MASI5_OU_coverge)
        }
      }
    }
    
    #multinom single imputation
    {
      #impute UA_80 
      {
        #model
        {
          set.seed(19)
          UASI_80_multinom_imp <- hotdeck(UA_80) # Step 1
          
          missing_SEX <- UASI_80_multinom_imp$SEX_imp
          missing_AGE <- UASI_80_multinom_imp$AGE_imp
          missing_Indication <- UASI_80_multinom_imp$Indication_imp
          missing_AntibioticClass <- UASI_80_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              UASI_80_multinom_imp$SEX <- factor(UASI_80_multinom_imp$SEX, labels = levels(simulated$SEX))
              UASI_80_multinom_imp$AGE <- factor(UASI_80_multinom_imp$AGE, labels = levels(simulated$AGE))
              UASI_80_multinom_imp$Indication <- factor(UASI_80_multinom_imp$Indication, labels = levels(simulated$Indication))
              UASI_80_multinom_imp$AntibioticClass <- factor(UASI_80_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              # Step 5 -- start
              UASI_80_multinom_imp$SEX[missing_SEX] <- NA # Step 2
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UASI_80_multinom_imp[!is.na(UASI_80_multinom_imp$SEX), ], family= multipleClasses) # Step3
              # Step4 -- start
              probs <- predict(multinom_model, newdata = UASI_80_multinom_imp[is.na(UASI_80_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UASI_80_multinom_imp$SEX <- as.numeric(UASI_80_multinom_imp$SEX)
              UASI_80_multinom_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              UASI_80_multinom_imp$AGE[missing_AGE] <- NA # Step 2
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UASI_80_multinom_imp[!is.na(UASI_80_multinom_imp$AGE), ], family= multipleClasses) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              probs <- predict(multinom_model, newdata = UASI_80_multinom_imp[is.na(UASI_80_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_80_multinom_imp$AGE <- as.numeric(UASI_80_multinom_imp$AGE)
              UASI_80_multinom_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              UASI_80_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UASI_80_multinom_imp[!is.na(UASI_80_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UASI_80_multinom_imp[is.na(UASI_80_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_80_multinom_imp$Indication <- as.numeric(UASI_80_multinom_imp$Indication)
              UASI_80_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_UASI80_RT_pred <- prop.table(table(UASI_80_multinom_imp$Indication))[1]
          multinom_UASI80_UT_pred <- prop.table(table(UASI_80_multinom_imp$Indication))[2]
          multinom_UASI80_SW_pred <- prop.table(table(UASI_80_multinom_imp$Indication))[3]
          multinom_UASI80_OU_pred <- prop.table(table(UASI_80_multinom_imp$Indication))[4]
          
          multinom_UASI80_RT_SE <- sqrt((multinom_UASI80_RT_pred*(1 - multinom_UASI80_RT_pred))/10000)
          multinom_UASI80_UT_SE <- sqrt((multinom_UASI80_UT_pred*(1 - multinom_UASI80_UT_pred))/10000)
          multinom_UASI80_SW_SE <- sqrt((multinom_UASI80_SW_pred*(1 - multinom_UASI80_SW_pred))/10000)
          multinom_UASI80_OU_SE <- sqrt((multinom_UASI80_OU_pred*(1 - multinom_UASI80_OU_pred))/10000)
          
          multinom_UASI80_RT_95upper <- multinom_UASI80_RT_pred + 2*multinom_UASI80_RT_SE
          multinom_UASI80_RT_95lower <- multinom_UASI80_RT_pred - 2*multinom_UASI80_RT_SE
          multinom_UASI80_RT_95width <- multinom_UASI80_RT_95upper - multinom_UASI80_RT_95lower
          multinom_UASI80_UT_95upper <- multinom_UASI80_UT_pred + 2*multinom_UASI80_UT_SE
          multinom_UASI80_UT_95lower <- multinom_UASI80_UT_pred - 2*multinom_UASI80_UT_SE
          multinom_UASI80_UT_95width <- multinom_UASI80_UT_95upper - multinom_UASI80_UT_95lower
          multinom_UASI80_SW_95upper <- multinom_UASI80_SW_pred + 2*multinom_UASI80_SW_SE
          multinom_UASI80_SW_95lower <- multinom_UASI80_SW_pred - 2*multinom_UASI80_SW_SE
          multinom_UASI80_SW_95width <- multinom_UASI80_SW_95upper - multinom_UASI80_SW_95lower
          multinom_UASI80_OU_95upper <- multinom_UASI80_OU_pred + 2*multinom_UASI80_OU_SE
          multinom_UASI80_OU_95lower <- multinom_UASI80_OU_pred - 2*multinom_UASI80_OU_SE
          multinom_UASI80_OU_95width <- multinom_UASI80_OU_95upper - multinom_UASI80_OU_95lower
          
          multinom_UASI80_RT_coverge <- (multinom_UASI80_RT_95lower < RT_true) & (RT_true < multinom_UASI80_RT_95upper)
          multinom_UASI80_UT_coverge <- (multinom_UASI80_UT_95lower < UT_true) & (UT_true < multinom_UASI80_UT_95upper)
          multinom_UASI80_SW_coverge <- (multinom_UASI80_SW_95lower < SW_true) & (SW_true < multinom_UASI80_SW_95upper)
          multinom_UASI80_OU_coverge <- (multinom_UASI80_OU_95lower < OU_true) & (OU_true < multinom_UASI80_OU_95upper)
          
          list_multinom_UASI80_RT_pred <- c(list_multinom_UASI80_RT_pred, multinom_UASI80_RT_pred)
          list_multinom_UASI80_UT_pred <- c(list_multinom_UASI80_UT_pred, multinom_UASI80_UT_pred)
          list_multinom_UASI80_SW_pred <- c(list_multinom_UASI80_SW_pred, multinom_UASI80_SW_pred)
          list_multinom_UASI80_OU_pred <- c(list_multinom_UASI80_OU_pred, multinom_UASI80_OU_pred)
          list_multinom_UASI80_RT_SE <- c(list_multinom_UASI80_RT_SE, multinom_UASI80_RT_SE)
          list_multinom_UASI80_UT_SE <- c(list_multinom_UASI80_UT_SE, multinom_UASI80_UT_SE)
          list_multinom_UASI80_SW_SE <- c(list_multinom_UASI80_SW_SE, multinom_UASI80_SW_SE)
          list_multinom_UASI80_OU_SE <- c(list_multinom_UASI80_OU_SE, multinom_UASI80_OU_SE)
          list_multinom_UASI80_RT_95width <- c(list_multinom_UASI80_RT_95width, multinom_UASI80_RT_95width)
          list_multinom_UASI80_UT_95width <- c(list_multinom_UASI80_UT_95width, multinom_UASI80_UT_95width)
          list_multinom_UASI80_SW_95width <- c(list_multinom_UASI80_SW_95width, multinom_UASI80_SW_95width)
          list_multinom_UASI80_OU_95width <- c(list_multinom_UASI80_OU_95width, multinom_UASI80_OU_95width)
          list_multinom_UASI80_RT_coverge <- c(list_multinom_UASI80_RT_coverge, multinom_UASI80_RT_coverge)
          list_multinom_UASI80_UT_coverge <- c(list_multinom_UASI80_UT_coverge, multinom_UASI80_UT_coverge)
          list_multinom_UASI80_SW_coverge <- c(list_multinom_UASI80_SW_coverge, multinom_UASI80_SW_coverge)
          list_multinom_UASI80_OU_coverge <- c(list_multinom_UASI80_OU_coverge, multinom_UASI80_OU_coverge)
        }
      }
      
      #impute UA_50 
      {
        #model
        {
          set.seed(19)
          UASI_50_multinom_imp <- hotdeck(UA_50) 
          
          missing_SEX <- UASI_50_multinom_imp$SEX_imp
          missing_AGE <- UASI_50_multinom_imp$AGE_imp
          missing_Indication <- UASI_50_multinom_imp$Indication_imp
          missing_AntibioticClass <- UASI_50_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              UASI_50_multinom_imp$SEX <- factor(UASI_50_multinom_imp$SEX, labels = levels(simulated$SEX))
              UASI_50_multinom_imp$AGE <- factor(UASI_50_multinom_imp$AGE, labels = levels(simulated$AGE))
              UASI_50_multinom_imp$Indication <- factor(UASI_50_multinom_imp$Indication, labels = levels(simulated$Indication))
              UASI_50_multinom_imp$AntibioticClass <- factor(UASI_50_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_50_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UASI_50_multinom_imp[!is.na(UASI_50_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_50_multinom_imp[is.na(UASI_50_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UASI_50_multinom_imp$SEX <- as.numeric(UASI_50_multinom_imp$SEX)
              UASI_50_multinom_imp$SEX[missing_SEX] <- pred
              
              UASI_50_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UASI_50_multinom_imp[!is.na(UASI_50_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_50_multinom_imp[is.na(UASI_50_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_50_multinom_imp$AGE <- as.numeric(UASI_50_multinom_imp$AGE)
              UASI_50_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_50_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UASI_50_multinom_imp[!is.na(UASI_50_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UASI_50_multinom_imp[is.na(UASI_50_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_50_multinom_imp$Indication <- as.numeric(UASI_50_multinom_imp$Indication)
              UASI_50_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_UASI50_RT_pred <- prop.table(table(UASI_50_multinom_imp$Indication))[1]
          multinom_UASI50_UT_pred <- prop.table(table(UASI_50_multinom_imp$Indication))[2]
          multinom_UASI50_SW_pred <- prop.table(table(UASI_50_multinom_imp$Indication))[3]
          multinom_UASI50_OU_pred <- prop.table(table(UASI_50_multinom_imp$Indication))[4]
          
          multinom_UASI50_RT_SE <- sqrt((multinom_UASI50_RT_pred*(1 - multinom_UASI50_RT_pred))/10000)
          multinom_UASI50_UT_SE <- sqrt((multinom_UASI50_UT_pred*(1 - multinom_UASI50_UT_pred))/10000)
          multinom_UASI50_SW_SE <- sqrt((multinom_UASI50_SW_pred*(1 - multinom_UASI50_SW_pred))/10000)
          multinom_UASI50_OU_SE <- sqrt((multinom_UASI50_OU_pred*(1 - multinom_UASI50_OU_pred))/10000)
          
          multinom_UASI50_RT_95upper <- multinom_UASI50_RT_pred + 2*multinom_UASI50_RT_SE
          multinom_UASI50_RT_95lower <- multinom_UASI50_RT_pred - 2*multinom_UASI50_RT_SE
          multinom_UASI50_RT_95width <- multinom_UASI50_RT_95upper - multinom_UASI50_RT_95lower
          multinom_UASI50_UT_95upper <- multinom_UASI50_UT_pred + 2*multinom_UASI50_UT_SE
          multinom_UASI50_UT_95lower <- multinom_UASI50_UT_pred - 2*multinom_UASI50_UT_SE
          multinom_UASI50_UT_95width <- multinom_UASI50_UT_95upper - multinom_UASI50_UT_95lower
          multinom_UASI50_SW_95upper <- multinom_UASI50_SW_pred + 2*multinom_UASI50_SW_SE
          multinom_UASI50_SW_95lower <- multinom_UASI50_SW_pred - 2*multinom_UASI50_SW_SE
          multinom_UASI50_SW_95width <- multinom_UASI50_SW_95upper - multinom_UASI50_SW_95lower
          multinom_UASI50_OU_95upper <- multinom_UASI50_OU_pred + 2*multinom_UASI50_OU_SE
          multinom_UASI50_OU_95lower <- multinom_UASI50_OU_pred - 2*multinom_UASI50_OU_SE
          multinom_UASI50_OU_95width <- multinom_UASI50_OU_95upper - multinom_UASI50_OU_95lower
          
          multinom_UASI50_RT_coverge <- (multinom_UASI50_RT_95lower < RT_true) & (RT_true < multinom_UASI50_RT_95upper)
          multinom_UASI50_UT_coverge <- (multinom_UASI50_UT_95lower < UT_true) & (UT_true < multinom_UASI50_UT_95upper)
          multinom_UASI50_SW_coverge <- (multinom_UASI50_SW_95lower < SW_true) & (SW_true < multinom_UASI50_SW_95upper)
          multinom_UASI50_OU_coverge <- (multinom_UASI50_OU_95lower < OU_true) & (OU_true < multinom_UASI50_OU_95upper)
          
          list_multinom_UASI50_RT_pred <- c(list_multinom_UASI50_RT_pred, multinom_UASI50_RT_pred)
          list_multinom_UASI50_UT_pred <- c(list_multinom_UASI50_UT_pred, multinom_UASI50_UT_pred)
          list_multinom_UASI50_SW_pred <- c(list_multinom_UASI50_SW_pred, multinom_UASI50_SW_pred)
          list_multinom_UASI50_OU_pred <- c(list_multinom_UASI50_OU_pred, multinom_UASI50_OU_pred)
          list_multinom_UASI50_RT_SE <- c(list_multinom_UASI50_RT_SE, multinom_UASI50_RT_SE)
          list_multinom_UASI50_UT_SE <- c(list_multinom_UASI50_UT_SE, multinom_UASI50_UT_SE)
          list_multinom_UASI50_SW_SE <- c(list_multinom_UASI50_SW_SE, multinom_UASI50_SW_SE)
          list_multinom_UASI50_OU_SE <- c(list_multinom_UASI50_OU_SE, multinom_UASI50_OU_SE)
          list_multinom_UASI50_RT_95width <- c(list_multinom_UASI50_RT_95width, multinom_UASI50_RT_95width)
          list_multinom_UASI50_UT_95width <- c(list_multinom_UASI50_UT_95width, multinom_UASI50_UT_95width)
          list_multinom_UASI50_SW_95width <- c(list_multinom_UASI50_SW_95width, multinom_UASI50_SW_95width)
          list_multinom_UASI50_OU_95width <- c(list_multinom_UASI50_OU_95width, multinom_UASI50_OU_95width)
          list_multinom_UASI50_RT_coverge <- c(list_multinom_UASI50_RT_coverge, multinom_UASI50_RT_coverge)
          list_multinom_UASI50_UT_coverge <- c(list_multinom_UASI50_UT_coverge, multinom_UASI50_UT_coverge)
          list_multinom_UASI50_SW_coverge <- c(list_multinom_UASI50_SW_coverge, multinom_UASI50_SW_coverge)
          list_multinom_UASI50_OU_coverge <- c(list_multinom_UASI50_OU_coverge, multinom_UASI50_OU_coverge)
        }
      }
      
      #impute UA_20 
      {
        #model
        {
          set.seed(19)
          UASI_20_multinom_imp <- hotdeck(UA_20) 
          
          missing_SEX <- UASI_20_multinom_imp$SEX_imp
          missing_AGE <- UASI_20_multinom_imp$AGE_imp
          missing_Indication <- UASI_20_multinom_imp$Indication_imp
          missing_AntibioticClass <- UASI_20_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              UASI_20_multinom_imp$SEX <- factor(UASI_20_multinom_imp$SEX, labels = levels(simulated$SEX))
              UASI_20_multinom_imp$AGE <- factor(UASI_20_multinom_imp$AGE, labels = levels(simulated$AGE))
              UASI_20_multinom_imp$Indication <- factor(UASI_20_multinom_imp$Indication, labels = levels(simulated$Indication))
              UASI_20_multinom_imp$AntibioticClass <- factor(UASI_20_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_20_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UASI_20_multinom_imp[!is.na(UASI_20_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_20_multinom_imp[is.na(UASI_20_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UASI_20_multinom_imp$SEX <- as.numeric(UASI_20_multinom_imp$SEX)
              UASI_20_multinom_imp$SEX[missing_SEX] <- pred
              
              UASI_20_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UASI_20_multinom_imp[!is.na(UASI_20_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_20_multinom_imp[is.na(UASI_20_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_20_multinom_imp$AGE <- as.numeric(UASI_20_multinom_imp$AGE)
              UASI_20_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_20_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UASI_20_multinom_imp[!is.na(UASI_20_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UASI_20_multinom_imp[is.na(UASI_20_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_20_multinom_imp$Indication <- as.numeric(UASI_20_multinom_imp$Indication)
              UASI_20_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_UASI20_RT_pred <- prop.table(table(UASI_20_multinom_imp$Indication))[1]
          multinom_UASI20_UT_pred <- prop.table(table(UASI_20_multinom_imp$Indication))[2]
          multinom_UASI20_SW_pred <- prop.table(table(UASI_20_multinom_imp$Indication))[3]
          multinom_UASI20_OU_pred <- prop.table(table(UASI_20_multinom_imp$Indication))[4]
          
          multinom_UASI20_RT_SE <- sqrt((multinom_UASI20_RT_pred*(1 - multinom_UASI20_RT_pred))/10000)
          multinom_UASI20_UT_SE <- sqrt((multinom_UASI20_UT_pred*(1 - multinom_UASI20_UT_pred))/10000)
          multinom_UASI20_SW_SE <- sqrt((multinom_UASI20_SW_pred*(1 - multinom_UASI20_SW_pred))/10000)
          multinom_UASI20_OU_SE <- sqrt((multinom_UASI20_OU_pred*(1 - multinom_UASI20_OU_pred))/10000)
          
          multinom_UASI20_RT_95upper <- multinom_UASI20_RT_pred + 2*multinom_UASI20_RT_SE
          multinom_UASI20_RT_95lower <- multinom_UASI20_RT_pred - 2*multinom_UASI20_RT_SE
          multinom_UASI20_RT_95width <- multinom_UASI20_RT_95upper - multinom_UASI20_RT_95lower
          multinom_UASI20_UT_95upper <- multinom_UASI20_UT_pred + 2*multinom_UASI20_UT_SE
          multinom_UASI20_UT_95lower <- multinom_UASI20_UT_pred - 2*multinom_UASI20_UT_SE
          multinom_UASI20_UT_95width <- multinom_UASI20_UT_95upper - multinom_UASI20_UT_95lower
          multinom_UASI20_SW_95upper <- multinom_UASI20_SW_pred + 2*multinom_UASI20_SW_SE
          multinom_UASI20_SW_95lower <- multinom_UASI20_SW_pred - 2*multinom_UASI20_SW_SE
          multinom_UASI20_SW_95width <- multinom_UASI20_SW_95upper - multinom_UASI20_SW_95lower
          multinom_UASI20_OU_95upper <- multinom_UASI20_OU_pred + 2*multinom_UASI20_OU_SE
          multinom_UASI20_OU_95lower <- multinom_UASI20_OU_pred - 2*multinom_UASI20_OU_SE
          multinom_UASI20_OU_95width <- multinom_UASI20_OU_95upper - multinom_UASI20_OU_95lower
          
          multinom_UASI20_RT_coverge <- (multinom_UASI20_RT_95lower < RT_true) & (RT_true < multinom_UASI20_RT_95upper)
          multinom_UASI20_UT_coverge <- (multinom_UASI20_UT_95lower < UT_true) & (UT_true < multinom_UASI20_UT_95upper)
          multinom_UASI20_SW_coverge <- (multinom_UASI20_SW_95lower < SW_true) & (SW_true < multinom_UASI20_SW_95upper)
          multinom_UASI20_OU_coverge <- (multinom_UASI20_OU_95lower < OU_true) & (OU_true < multinom_UASI20_OU_95upper)
          
          list_multinom_UASI20_RT_pred <- c(list_multinom_UASI20_RT_pred, multinom_UASI20_RT_pred)
          list_multinom_UASI20_UT_pred <- c(list_multinom_UASI20_UT_pred, multinom_UASI20_UT_pred)
          list_multinom_UASI20_SW_pred <- c(list_multinom_UASI20_SW_pred, multinom_UASI20_SW_pred)
          list_multinom_UASI20_OU_pred <- c(list_multinom_UASI20_OU_pred, multinom_UASI20_OU_pred)
          list_multinom_UASI20_RT_SE <- c(list_multinom_UASI20_RT_SE, multinom_UASI20_RT_SE)
          list_multinom_UASI20_UT_SE <- c(list_multinom_UASI20_UT_SE, multinom_UASI20_UT_SE)
          list_multinom_UASI20_SW_SE <- c(list_multinom_UASI20_SW_SE, multinom_UASI20_SW_SE)
          list_multinom_UASI20_OU_SE <- c(list_multinom_UASI20_OU_SE, multinom_UASI20_OU_SE)
          list_multinom_UASI20_RT_95width <- c(list_multinom_UASI20_RT_95width, multinom_UASI20_RT_95width)
          list_multinom_UASI20_UT_95width <- c(list_multinom_UASI20_UT_95width, multinom_UASI20_UT_95width)
          list_multinom_UASI20_SW_95width <- c(list_multinom_UASI20_SW_95width, multinom_UASI20_SW_95width)
          list_multinom_UASI20_OU_95width <- c(list_multinom_UASI20_OU_95width, multinom_UASI20_OU_95width)
          list_multinom_UASI20_RT_coverge <- c(list_multinom_UASI20_RT_coverge, multinom_UASI20_RT_coverge)
          list_multinom_UASI20_UT_coverge <- c(list_multinom_UASI20_UT_coverge, multinom_UASI20_UT_coverge)
          list_multinom_UASI20_SW_coverge <- c(list_multinom_UASI20_SW_coverge, multinom_UASI20_SW_coverge)
          list_multinom_UASI20_OU_coverge <- c(list_multinom_UASI20_OU_coverge, multinom_UASI20_OU_coverge)
        }
      }
      
      #impute UA_5 
      {
        #model
        {
          set.seed(19)
          UASI_5_multinom_imp <- hotdeck(UA_5) 
          
          missing_SEX <- UASI_5_multinom_imp$SEX_imp
          missing_AGE <- UASI_5_multinom_imp$AGE_imp
          missing_Indication <- UASI_5_multinom_imp$Indication_imp
          missing_AntibioticClass <- UASI_5_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              UASI_5_multinom_imp$SEX <- factor(UASI_5_multinom_imp$SEX, labels = levels(simulated$SEX))
              UASI_5_multinom_imp$AGE <- factor(UASI_5_multinom_imp$AGE, labels = levels(simulated$AGE))
              UASI_5_multinom_imp$Indication <- factor(UASI_5_multinom_imp$Indication, labels = levels(simulated$Indication))
              UASI_5_multinom_imp$AntibioticClass <- factor(UASI_5_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_5_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UASI_5_multinom_imp[!is.na(UASI_5_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_5_multinom_imp[is.na(UASI_5_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UASI_5_multinom_imp$SEX <- as.numeric(UASI_5_multinom_imp$SEX)
              UASI_5_multinom_imp$SEX[missing_SEX] <- pred
              
              UASI_5_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UASI_5_multinom_imp[!is.na(UASI_5_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UASI_5_multinom_imp[is.na(UASI_5_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_5_multinom_imp$AGE <- as.numeric(UASI_5_multinom_imp$AGE)
              UASI_5_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_5_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UASI_5_multinom_imp[!is.na(UASI_5_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UASI_5_multinom_imp[is.na(UASI_5_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_5_multinom_imp$Indication <- as.numeric(UASI_5_multinom_imp$Indication)
              UASI_5_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_UASI5_RT_pred <- prop.table(table(UASI_5_multinom_imp$Indication))[1]
          multinom_UASI5_UT_pred <- prop.table(table(UASI_5_multinom_imp$Indication))[2]
          multinom_UASI5_SW_pred <- prop.table(table(UASI_5_multinom_imp$Indication))[3]
          multinom_UASI5_OU_pred <- prop.table(table(UASI_5_multinom_imp$Indication))[4]
          
          multinom_UASI5_RT_SE <- sqrt((multinom_UASI5_RT_pred*(1 - multinom_UASI5_RT_pred))/10000)
          multinom_UASI5_UT_SE <- sqrt((multinom_UASI5_UT_pred*(1 - multinom_UASI5_UT_pred))/10000)
          multinom_UASI5_SW_SE <- sqrt((multinom_UASI5_SW_pred*(1 - multinom_UASI5_SW_pred))/10000)
          multinom_UASI5_OU_SE <- sqrt((multinom_UASI5_OU_pred*(1 - multinom_UASI5_OU_pred))/10000)
          
          multinom_UASI5_RT_95upper <- multinom_UASI5_RT_pred + 2*multinom_UASI5_RT_SE
          multinom_UASI5_RT_95lower <- multinom_UASI5_RT_pred - 2*multinom_UASI5_RT_SE
          multinom_UASI5_RT_95width <- multinom_UASI5_RT_95upper - multinom_UASI5_RT_95lower
          multinom_UASI5_UT_95upper <- multinom_UASI5_UT_pred + 2*multinom_UASI5_UT_SE
          multinom_UASI5_UT_95lower <- multinom_UASI5_UT_pred - 2*multinom_UASI5_UT_SE
          multinom_UASI5_UT_95width <- multinom_UASI5_UT_95upper - multinom_UASI5_UT_95lower
          multinom_UASI5_SW_95upper <- multinom_UASI5_SW_pred + 2*multinom_UASI5_SW_SE
          multinom_UASI5_SW_95lower <- multinom_UASI5_SW_pred - 2*multinom_UASI5_SW_SE
          multinom_UASI5_SW_95width <- multinom_UASI5_SW_95upper - multinom_UASI5_SW_95lower
          multinom_UASI5_OU_95upper <- multinom_UASI5_OU_pred + 2*multinom_UASI5_OU_SE
          multinom_UASI5_OU_95lower <- multinom_UASI5_OU_pred - 2*multinom_UASI5_OU_SE
          multinom_UASI5_OU_95width <- multinom_UASI5_OU_95upper - multinom_UASI5_OU_95lower
          
          multinom_UASI5_RT_coverge <- (multinom_UASI5_RT_95lower < RT_true) & (RT_true < multinom_UASI5_RT_95upper)
          multinom_UASI5_UT_coverge <- (multinom_UASI5_UT_95lower < UT_true) & (UT_true < multinom_UASI5_UT_95upper)
          multinom_UASI5_SW_coverge <- (multinom_UASI5_SW_95lower < SW_true) & (SW_true < multinom_UASI5_SW_95upper)
          multinom_UASI5_OU_coverge <- (multinom_UASI5_OU_95lower < OU_true) & (OU_true < multinom_UASI5_OU_95upper)
          
          list_multinom_UASI5_RT_pred <- c(list_multinom_UASI5_RT_pred, multinom_UASI5_RT_pred)
          list_multinom_UASI5_UT_pred <- c(list_multinom_UASI5_UT_pred, multinom_UASI5_UT_pred)
          list_multinom_UASI5_SW_pred <- c(list_multinom_UASI5_SW_pred, multinom_UASI5_SW_pred)
          list_multinom_UASI5_OU_pred <- c(list_multinom_UASI5_OU_pred, multinom_UASI5_OU_pred)
          list_multinom_UASI5_RT_SE <- c(list_multinom_UASI5_RT_SE, multinom_UASI5_RT_SE)
          list_multinom_UASI5_UT_SE <- c(list_multinom_UASI5_UT_SE, multinom_UASI5_UT_SE)
          list_multinom_UASI5_SW_SE <- c(list_multinom_UASI5_SW_SE, multinom_UASI5_SW_SE)
          list_multinom_UASI5_OU_SE <- c(list_multinom_UASI5_OU_SE, multinom_UASI5_OU_SE)
          list_multinom_UASI5_RT_95width <- c(list_multinom_UASI5_RT_95width, multinom_UASI5_RT_95width)
          list_multinom_UASI5_UT_95width <- c(list_multinom_UASI5_UT_95width, multinom_UASI5_UT_95width)
          list_multinom_UASI5_SW_95width <- c(list_multinom_UASI5_SW_95width, multinom_UASI5_SW_95width)
          list_multinom_UASI5_OU_95width <- c(list_multinom_UASI5_OU_95width, multinom_UASI5_OU_95width)
          list_multinom_UASI5_RT_coverge <- c(list_multinom_UASI5_RT_coverge, multinom_UASI5_RT_coverge)
          list_multinom_UASI5_UT_coverge <- c(list_multinom_UASI5_UT_coverge, multinom_UASI5_UT_coverge)
          list_multinom_UASI5_SW_coverge <- c(list_multinom_UASI5_SW_coverge, multinom_UASI5_SW_coverge)
          list_multinom_UASI5_OU_coverge <- c(list_multinom_UASI5_OU_coverge, multinom_UASI5_OU_coverge)
        }
      }
      
      #impute MA_80 
      {
        #model
        {
          set.seed(19)
          MASI_80_multinom_imp <- hotdeck(MA_80) # Step 1
          
          missing_SEX <- MASI_80_multinom_imp$SEX_imp
          missing_AGE <- MASI_80_multinom_imp$AGE_imp
          missing_Indication <- MASI_80_multinom_imp$Indication_imp
          missing_AntibioticClass <- MASI_80_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              MASI_80_multinom_imp$SEX <- factor(MASI_80_multinom_imp$SEX, labels = levels(simulated$SEX))
              MASI_80_multinom_imp$AGE <- factor(MASI_80_multinom_imp$AGE, labels = levels(simulated$AGE))
              MASI_80_multinom_imp$Indication <- factor(MASI_80_multinom_imp$Indication, labels = levels(simulated$Indication))
              MASI_80_multinom_imp$AntibioticClass <- factor(MASI_80_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              # Step 5 -- start
              MASI_80_multinom_imp$SEX[missing_SEX] <- NA # Step 2
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MASI_80_multinom_imp[!is.na(MASI_80_multinom_imp$SEX), ], family= multipleClasses) # Step3
              # Step4 -- start
              probs <- predict(multinom_model, newdata = MASI_80_multinom_imp[is.na(MASI_80_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MASI_80_multinom_imp$SEX <- as.numeric(MASI_80_multinom_imp$SEX)
              MASI_80_multinom_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              MASI_80_multinom_imp$AGE[missing_AGE] <- NA # Step 2
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MASI_80_multinom_imp[!is.na(MASI_80_multinom_imp$AGE), ], family= multipleClasses) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              probs <- predict(multinom_model, newdata = MASI_80_multinom_imp[is.na(MASI_80_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_80_multinom_imp$AGE <- as.numeric(MASI_80_multinom_imp$AGE)
              MASI_80_multinom_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              MASI_80_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MASI_80_multinom_imp[!is.na(MASI_80_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MASI_80_multinom_imp[is.na(MASI_80_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_80_multinom_imp$Indication <- as.numeric(MASI_80_multinom_imp$Indication)
              MASI_80_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_MASI80_RT_pred <- prop.table(table(MASI_80_multinom_imp$Indication))[1]
          multinom_MASI80_UT_pred <- prop.table(table(MASI_80_multinom_imp$Indication))[2]
          multinom_MASI80_SW_pred <- prop.table(table(MASI_80_multinom_imp$Indication))[3]
          multinom_MASI80_OU_pred <- prop.table(table(MASI_80_multinom_imp$Indication))[4]
          
          multinom_MASI80_RT_SE <- sqrt((multinom_MASI80_RT_pred*(1 - multinom_MASI80_RT_pred))/10000)
          multinom_MASI80_UT_SE <- sqrt((multinom_MASI80_UT_pred*(1 - multinom_MASI80_UT_pred))/10000)
          multinom_MASI80_SW_SE <- sqrt((multinom_MASI80_SW_pred*(1 - multinom_MASI80_SW_pred))/10000)
          multinom_MASI80_OU_SE <- sqrt((multinom_MASI80_OU_pred*(1 - multinom_MASI80_OU_pred))/10000)
          
          multinom_MASI80_RT_95upper <- multinom_MASI80_RT_pred + 2*multinom_MASI80_RT_SE
          multinom_MASI80_RT_95lower <- multinom_MASI80_RT_pred - 2*multinom_MASI80_RT_SE
          multinom_MASI80_RT_95width <- multinom_MASI80_RT_95upper - multinom_MASI80_RT_95lower
          multinom_MASI80_UT_95upper <- multinom_MASI80_UT_pred + 2*multinom_MASI80_UT_SE
          multinom_MASI80_UT_95lower <- multinom_MASI80_UT_pred - 2*multinom_MASI80_UT_SE
          multinom_MASI80_UT_95width <- multinom_MASI80_UT_95upper - multinom_MASI80_UT_95lower
          multinom_MASI80_SW_95upper <- multinom_MASI80_SW_pred + 2*multinom_MASI80_SW_SE
          multinom_MASI80_SW_95lower <- multinom_MASI80_SW_pred - 2*multinom_MASI80_SW_SE
          multinom_MASI80_SW_95width <- multinom_MASI80_SW_95upper - multinom_MASI80_SW_95lower
          multinom_MASI80_OU_95upper <- multinom_MASI80_OU_pred + 2*multinom_MASI80_OU_SE
          multinom_MASI80_OU_95lower <- multinom_MASI80_OU_pred - 2*multinom_MASI80_OU_SE
          multinom_MASI80_OU_95width <- multinom_MASI80_OU_95upper - multinom_MASI80_OU_95lower
          
          multinom_MASI80_RT_coverge <- (multinom_MASI80_RT_95lower < RT_true) & (RT_true < multinom_MASI80_RT_95upper)
          multinom_MASI80_UT_coverge <- (multinom_MASI80_UT_95lower < UT_true) & (UT_true < multinom_MASI80_UT_95upper)
          multinom_MASI80_SW_coverge <- (multinom_MASI80_SW_95lower < SW_true) & (SW_true < multinom_MASI80_SW_95upper)
          multinom_MASI80_OU_coverge <- (multinom_MASI80_OU_95lower < OU_true) & (OU_true < multinom_MASI80_OU_95upper)
          
          list_multinom_MASI80_RT_pred <- c(list_multinom_MASI80_RT_pred, multinom_MASI80_RT_pred)
          list_multinom_MASI80_UT_pred <- c(list_multinom_MASI80_UT_pred, multinom_MASI80_UT_pred)
          list_multinom_MASI80_SW_pred <- c(list_multinom_MASI80_SW_pred, multinom_MASI80_SW_pred)
          list_multinom_MASI80_OU_pred <- c(list_multinom_MASI80_OU_pred, multinom_MASI80_OU_pred)
          list_multinom_MASI80_RT_SE <- c(list_multinom_MASI80_RT_SE, multinom_MASI80_RT_SE)
          list_multinom_MASI80_UT_SE <- c(list_multinom_MASI80_UT_SE, multinom_MASI80_UT_SE)
          list_multinom_MASI80_SW_SE <- c(list_multinom_MASI80_SW_SE, multinom_MASI80_SW_SE)
          list_multinom_MASI80_OU_SE <- c(list_multinom_MASI80_OU_SE, multinom_MASI80_OU_SE)
          list_multinom_MASI80_RT_95width <- c(list_multinom_MASI80_RT_95width, multinom_MASI80_RT_95width)
          list_multinom_MASI80_UT_95width <- c(list_multinom_MASI80_UT_95width, multinom_MASI80_UT_95width)
          list_multinom_MASI80_SW_95width <- c(list_multinom_MASI80_SW_95width, multinom_MASI80_SW_95width)
          list_multinom_MASI80_OU_95width <- c(list_multinom_MASI80_OU_95width, multinom_MASI80_OU_95width)
          list_multinom_MASI80_RT_coverge <- c(list_multinom_MASI80_RT_coverge, multinom_MASI80_RT_coverge)
          list_multinom_MASI80_UT_coverge <- c(list_multinom_MASI80_UT_coverge, multinom_MASI80_UT_coverge)
          list_multinom_MASI80_SW_coverge <- c(list_multinom_MASI80_SW_coverge, multinom_MASI80_SW_coverge)
          list_multinom_MASI80_OU_coverge <- c(list_multinom_MASI80_OU_coverge, multinom_MASI80_OU_coverge)
        }
      }
      
      #impute MA_50 
      {
        #model
        {
          set.seed(19)
          MASI_50_multinom_imp <- hotdeck(MA_50) 
          
          missing_SEX <- MASI_50_multinom_imp$SEX_imp
          missing_AGE <- MASI_50_multinom_imp$AGE_imp
          missing_Indication <- MASI_50_multinom_imp$Indication_imp
          missing_AntibioticClass <- MASI_50_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              MASI_50_multinom_imp$SEX <- factor(MASI_50_multinom_imp$SEX, labels = levels(simulated$SEX))
              MASI_50_multinom_imp$AGE <- factor(MASI_50_multinom_imp$AGE, labels = levels(simulated$AGE))
              MASI_50_multinom_imp$Indication <- factor(MASI_50_multinom_imp$Indication, labels = levels(simulated$Indication))
              MASI_50_multinom_imp$AntibioticClass <- factor(MASI_50_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_50_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MASI_50_multinom_imp[!is.na(MASI_50_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_50_multinom_imp[is.na(MASI_50_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MASI_50_multinom_imp$SEX <- as.numeric(MASI_50_multinom_imp$SEX)
              MASI_50_multinom_imp$SEX[missing_SEX] <- pred
              
              MASI_50_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MASI_50_multinom_imp[!is.na(MASI_50_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_50_multinom_imp[is.na(MASI_50_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_50_multinom_imp$AGE <- as.numeric(MASI_50_multinom_imp$AGE)
              MASI_50_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_50_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MASI_50_multinom_imp[!is.na(MASI_50_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MASI_50_multinom_imp[is.na(MASI_50_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_50_multinom_imp$Indication <- as.numeric(MASI_50_multinom_imp$Indication)
              MASI_50_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_MASI50_RT_pred <- prop.table(table(MASI_50_multinom_imp$Indication))[1]
          multinom_MASI50_UT_pred <- prop.table(table(MASI_50_multinom_imp$Indication))[2]
          multinom_MASI50_SW_pred <- prop.table(table(MASI_50_multinom_imp$Indication))[3]
          multinom_MASI50_OU_pred <- prop.table(table(MASI_50_multinom_imp$Indication))[4]
          
          multinom_MASI50_RT_SE <- sqrt((multinom_MASI50_RT_pred*(1 - multinom_MASI50_RT_pred))/10000)
          multinom_MASI50_UT_SE <- sqrt((multinom_MASI50_UT_pred*(1 - multinom_MASI50_UT_pred))/10000)
          multinom_MASI50_SW_SE <- sqrt((multinom_MASI50_SW_pred*(1 - multinom_MASI50_SW_pred))/10000)
          multinom_MASI50_OU_SE <- sqrt((multinom_MASI50_OU_pred*(1 - multinom_MASI50_OU_pred))/10000)
          
          multinom_MASI50_RT_95upper <- multinom_MASI50_RT_pred + 2*multinom_MASI50_RT_SE
          multinom_MASI50_RT_95lower <- multinom_MASI50_RT_pred - 2*multinom_MASI50_RT_SE
          multinom_MASI50_RT_95width <- multinom_MASI50_RT_95upper - multinom_MASI50_RT_95lower
          multinom_MASI50_UT_95upper <- multinom_MASI50_UT_pred + 2*multinom_MASI50_UT_SE
          multinom_MASI50_UT_95lower <- multinom_MASI50_UT_pred - 2*multinom_MASI50_UT_SE
          multinom_MASI50_UT_95width <- multinom_MASI50_UT_95upper - multinom_MASI50_UT_95lower
          multinom_MASI50_SW_95upper <- multinom_MASI50_SW_pred + 2*multinom_MASI50_SW_SE
          multinom_MASI50_SW_95lower <- multinom_MASI50_SW_pred - 2*multinom_MASI50_SW_SE
          multinom_MASI50_SW_95width <- multinom_MASI50_SW_95upper - multinom_MASI50_SW_95lower
          multinom_MASI50_OU_95upper <- multinom_MASI50_OU_pred + 2*multinom_MASI50_OU_SE
          multinom_MASI50_OU_95lower <- multinom_MASI50_OU_pred - 2*multinom_MASI50_OU_SE
          multinom_MASI50_OU_95width <- multinom_MASI50_OU_95upper - multinom_MASI50_OU_95lower
          
          multinom_MASI50_RT_coverge <- (multinom_MASI50_RT_95lower < RT_true) & (RT_true < multinom_MASI50_RT_95upper)
          multinom_MASI50_UT_coverge <- (multinom_MASI50_UT_95lower < UT_true) & (UT_true < multinom_MASI50_UT_95upper)
          multinom_MASI50_SW_coverge <- (multinom_MASI50_SW_95lower < SW_true) & (SW_true < multinom_MASI50_SW_95upper)
          multinom_MASI50_OU_coverge <- (multinom_MASI50_OU_95lower < OU_true) & (OU_true < multinom_MASI50_OU_95upper)
          
          list_multinom_MASI50_RT_pred <- c(list_multinom_MASI50_RT_pred, multinom_MASI50_RT_pred)
          list_multinom_MASI50_UT_pred <- c(list_multinom_MASI50_UT_pred, multinom_MASI50_UT_pred)
          list_multinom_MASI50_SW_pred <- c(list_multinom_MASI50_SW_pred, multinom_MASI50_SW_pred)
          list_multinom_MASI50_OU_pred <- c(list_multinom_MASI50_OU_pred, multinom_MASI50_OU_pred)
          list_multinom_MASI50_RT_SE <- c(list_multinom_MASI50_RT_SE, multinom_MASI50_RT_SE)
          list_multinom_MASI50_UT_SE <- c(list_multinom_MASI50_UT_SE, multinom_MASI50_UT_SE)
          list_multinom_MASI50_SW_SE <- c(list_multinom_MASI50_SW_SE, multinom_MASI50_SW_SE)
          list_multinom_MASI50_OU_SE <- c(list_multinom_MASI50_OU_SE, multinom_MASI50_OU_SE)
          list_multinom_MASI50_RT_95width <- c(list_multinom_MASI50_RT_95width, multinom_MASI50_RT_95width)
          list_multinom_MASI50_UT_95width <- c(list_multinom_MASI50_UT_95width, multinom_MASI50_UT_95width)
          list_multinom_MASI50_SW_95width <- c(list_multinom_MASI50_SW_95width, multinom_MASI50_SW_95width)
          list_multinom_MASI50_OU_95width <- c(list_multinom_MASI50_OU_95width, multinom_MASI50_OU_95width)
          list_multinom_MASI50_RT_coverge <- c(list_multinom_MASI50_RT_coverge, multinom_MASI50_RT_coverge)
          list_multinom_MASI50_UT_coverge <- c(list_multinom_MASI50_UT_coverge, multinom_MASI50_UT_coverge)
          list_multinom_MASI50_SW_coverge <- c(list_multinom_MASI50_SW_coverge, multinom_MASI50_SW_coverge)
          list_multinom_MASI50_OU_coverge <- c(list_multinom_MASI50_OU_coverge, multinom_MASI50_OU_coverge)
        }
      }
      
      #impute MA_20 
      {
        #model
        {
          set.seed(19)
          MASI_20_multinom_imp <- hotdeck(MA_20) 
          
          missing_SEX <- MASI_20_multinom_imp$SEX_imp
          missing_AGE <- MASI_20_multinom_imp$AGE_imp
          missing_Indication <- MASI_20_multinom_imp$Indication_imp
          missing_AntibioticClass <- MASI_20_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              MASI_20_multinom_imp$SEX <- factor(MASI_20_multinom_imp$SEX, labels = levels(simulated$SEX))
              MASI_20_multinom_imp$AGE <- factor(MASI_20_multinom_imp$AGE, labels = levels(simulated$AGE))
              MASI_20_multinom_imp$Indication <- factor(MASI_20_multinom_imp$Indication, labels = levels(simulated$Indication))
              MASI_20_multinom_imp$AntibioticClass <- factor(MASI_20_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_20_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MASI_20_multinom_imp[!is.na(MASI_20_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_20_multinom_imp[is.na(MASI_20_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MASI_20_multinom_imp$SEX <- as.numeric(MASI_20_multinom_imp$SEX)
              MASI_20_multinom_imp$SEX[missing_SEX] <- pred
              
              MASI_20_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MASI_20_multinom_imp[!is.na(MASI_20_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_20_multinom_imp[is.na(MASI_20_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_20_multinom_imp$AGE <- as.numeric(MASI_20_multinom_imp$AGE)
              MASI_20_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_20_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MASI_20_multinom_imp[!is.na(MASI_20_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MASI_20_multinom_imp[is.na(MASI_20_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_20_multinom_imp$Indication <- as.numeric(MASI_20_multinom_imp$Indication)
              MASI_20_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_MASI20_RT_pred <- prop.table(table(MASI_20_multinom_imp$Indication))[1]
          multinom_MASI20_UT_pred <- prop.table(table(MASI_20_multinom_imp$Indication))[2]
          multinom_MASI20_SW_pred <- prop.table(table(MASI_20_multinom_imp$Indication))[3]
          multinom_MASI20_OU_pred <- prop.table(table(MASI_20_multinom_imp$Indication))[4]
          
          multinom_MASI20_RT_SE <- sqrt((multinom_MASI20_RT_pred*(1 - multinom_MASI20_RT_pred))/10000)
          multinom_MASI20_UT_SE <- sqrt((multinom_MASI20_UT_pred*(1 - multinom_MASI20_UT_pred))/10000)
          multinom_MASI20_SW_SE <- sqrt((multinom_MASI20_SW_pred*(1 - multinom_MASI20_SW_pred))/10000)
          multinom_MASI20_OU_SE <- sqrt((multinom_MASI20_OU_pred*(1 - multinom_MASI20_OU_pred))/10000)
          
          multinom_MASI20_RT_95upper <- multinom_MASI20_RT_pred + 2*multinom_MASI20_RT_SE
          multinom_MASI20_RT_95lower <- multinom_MASI20_RT_pred - 2*multinom_MASI20_RT_SE
          multinom_MASI20_RT_95width <- multinom_MASI20_RT_95upper - multinom_MASI20_RT_95lower
          multinom_MASI20_UT_95upper <- multinom_MASI20_UT_pred + 2*multinom_MASI20_UT_SE
          multinom_MASI20_UT_95lower <- multinom_MASI20_UT_pred - 2*multinom_MASI20_UT_SE
          multinom_MASI20_UT_95width <- multinom_MASI20_UT_95upper - multinom_MASI20_UT_95lower
          multinom_MASI20_SW_95upper <- multinom_MASI20_SW_pred + 2*multinom_MASI20_SW_SE
          multinom_MASI20_SW_95lower <- multinom_MASI20_SW_pred - 2*multinom_MASI20_SW_SE
          multinom_MASI20_SW_95width <- multinom_MASI20_SW_95upper - multinom_MASI20_SW_95lower
          multinom_MASI20_OU_95upper <- multinom_MASI20_OU_pred + 2*multinom_MASI20_OU_SE
          multinom_MASI20_OU_95lower <- multinom_MASI20_OU_pred - 2*multinom_MASI20_OU_SE
          multinom_MASI20_OU_95width <- multinom_MASI20_OU_95upper - multinom_MASI20_OU_95lower
          
          multinom_MASI20_RT_coverge <- (multinom_MASI20_RT_95lower < RT_true) & (RT_true < multinom_MASI20_RT_95upper)
          multinom_MASI20_UT_coverge <- (multinom_MASI20_UT_95lower < UT_true) & (UT_true < multinom_MASI20_UT_95upper)
          multinom_MASI20_SW_coverge <- (multinom_MASI20_SW_95lower < SW_true) & (SW_true < multinom_MASI20_SW_95upper)
          multinom_MASI20_OU_coverge <- (multinom_MASI20_OU_95lower < OU_true) & (OU_true < multinom_MASI20_OU_95upper)
          
          list_multinom_MASI20_RT_pred <- c(list_multinom_MASI20_RT_pred, multinom_MASI20_RT_pred)
          list_multinom_MASI20_UT_pred <- c(list_multinom_MASI20_UT_pred, multinom_MASI20_UT_pred)
          list_multinom_MASI20_SW_pred <- c(list_multinom_MASI20_SW_pred, multinom_MASI20_SW_pred)
          list_multinom_MASI20_OU_pred <- c(list_multinom_MASI20_OU_pred, multinom_MASI20_OU_pred)
          list_multinom_MASI20_RT_SE <- c(list_multinom_MASI20_RT_SE, multinom_MASI20_RT_SE)
          list_multinom_MASI20_UT_SE <- c(list_multinom_MASI20_UT_SE, multinom_MASI20_UT_SE)
          list_multinom_MASI20_SW_SE <- c(list_multinom_MASI20_SW_SE, multinom_MASI20_SW_SE)
          list_multinom_MASI20_OU_SE <- c(list_multinom_MASI20_OU_SE, multinom_MASI20_OU_SE)
          list_multinom_MASI20_RT_95width <- c(list_multinom_MASI20_RT_95width, multinom_MASI20_RT_95width)
          list_multinom_MASI20_UT_95width <- c(list_multinom_MASI20_UT_95width, multinom_MASI20_UT_95width)
          list_multinom_MASI20_SW_95width <- c(list_multinom_MASI20_SW_95width, multinom_MASI20_SW_95width)
          list_multinom_MASI20_OU_95width <- c(list_multinom_MASI20_OU_95width, multinom_MASI20_OU_95width)
          list_multinom_MASI20_RT_coverge <- c(list_multinom_MASI20_RT_coverge, multinom_MASI20_RT_coverge)
          list_multinom_MASI20_UT_coverge <- c(list_multinom_MASI20_UT_coverge, multinom_MASI20_UT_coverge)
          list_multinom_MASI20_SW_coverge <- c(list_multinom_MASI20_SW_coverge, multinom_MASI20_SW_coverge)
          list_multinom_MASI20_OU_coverge <- c(list_multinom_MASI20_OU_coverge, multinom_MASI20_OU_coverge)
        }
      }
      
      #impute MA_5 
      {
        #model
        {
          set.seed(19)
          MASI_5_multinom_imp <- hotdeck(MA_5) 
          
          missing_SEX <- MASI_5_multinom_imp$SEX_imp
          missing_AGE <- MASI_5_multinom_imp$AGE_imp
          missing_Indication <- MASI_5_multinom_imp$Indication_imp
          missing_AntibioticClass <- MASI_5_multinom_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              MASI_5_multinom_imp$SEX <- factor(MASI_5_multinom_imp$SEX, labels = levels(simulated$SEX))
              MASI_5_multinom_imp$AGE <- factor(MASI_5_multinom_imp$AGE, labels = levels(simulated$AGE))
              MASI_5_multinom_imp$Indication <- factor(MASI_5_multinom_imp$Indication, labels = levels(simulated$Indication))
              MASI_5_multinom_imp$AntibioticClass <- factor(MASI_5_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_5_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MASI_5_multinom_imp[!is.na(MASI_5_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_5_multinom_imp[is.na(MASI_5_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MASI_5_multinom_imp$SEX <- as.numeric(MASI_5_multinom_imp$SEX)
              MASI_5_multinom_imp$SEX[missing_SEX] <- pred
              
              MASI_5_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MASI_5_multinom_imp[!is.na(MASI_5_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MASI_5_multinom_imp[is.na(MASI_5_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_5_multinom_imp$AGE <- as.numeric(MASI_5_multinom_imp$AGE)
              MASI_5_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_5_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MASI_5_multinom_imp[!is.na(MASI_5_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MASI_5_multinom_imp[is.na(MASI_5_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_5_multinom_imp$Indication <- as.numeric(MASI_5_multinom_imp$Indication)
              MASI_5_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
          }  
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          multinom_MASI5_RT_pred <- prop.table(table(MASI_5_multinom_imp$Indication))[1]
          multinom_MASI5_UT_pred <- prop.table(table(MASI_5_multinom_imp$Indication))[2]
          multinom_MASI5_SW_pred <- prop.table(table(MASI_5_multinom_imp$Indication))[3]
          multinom_MASI5_OU_pred <- prop.table(table(MASI_5_multinom_imp$Indication))[4]
          
          multinom_MASI5_RT_SE <- sqrt((multinom_MASI5_RT_pred*(1 - multinom_MASI5_RT_pred))/10000)
          multinom_MASI5_UT_SE <- sqrt((multinom_MASI5_UT_pred*(1 - multinom_MASI5_UT_pred))/10000)
          multinom_MASI5_SW_SE <- sqrt((multinom_MASI5_SW_pred*(1 - multinom_MASI5_SW_pred))/10000)
          multinom_MASI5_OU_SE <- sqrt((multinom_MASI5_OU_pred*(1 - multinom_MASI5_OU_pred))/10000)
          
          multinom_MASI5_RT_95upper <- multinom_MASI5_RT_pred + 2*multinom_MASI5_RT_SE
          multinom_MASI5_RT_95lower <- multinom_MASI5_RT_pred - 2*multinom_MASI5_RT_SE
          multinom_MASI5_RT_95width <- multinom_MASI5_RT_95upper - multinom_MASI5_RT_95lower
          multinom_MASI5_UT_95upper <- multinom_MASI5_UT_pred + 2*multinom_MASI5_UT_SE
          multinom_MASI5_UT_95lower <- multinom_MASI5_UT_pred - 2*multinom_MASI5_UT_SE
          multinom_MASI5_UT_95width <- multinom_MASI5_UT_95upper - multinom_MASI5_UT_95lower
          multinom_MASI5_SW_95upper <- multinom_MASI5_SW_pred + 2*multinom_MASI5_SW_SE
          multinom_MASI5_SW_95lower <- multinom_MASI5_SW_pred - 2*multinom_MASI5_SW_SE
          multinom_MASI5_SW_95width <- multinom_MASI5_SW_95upper - multinom_MASI5_SW_95lower
          multinom_MASI5_OU_95upper <- multinom_MASI5_OU_pred + 2*multinom_MASI5_OU_SE
          multinom_MASI5_OU_95lower <- multinom_MASI5_OU_pred - 2*multinom_MASI5_OU_SE
          multinom_MASI5_OU_95width <- multinom_MASI5_OU_95upper - multinom_MASI5_OU_95lower
          
          multinom_MASI5_RT_coverge <- (multinom_MASI5_RT_95lower < RT_true) & (RT_true < multinom_MASI5_RT_95upper)
          multinom_MASI5_UT_coverge <- (multinom_MASI5_UT_95lower < UT_true) & (UT_true < multinom_MASI5_UT_95upper)
          multinom_MASI5_SW_coverge <- (multinom_MASI5_SW_95lower < SW_true) & (SW_true < multinom_MASI5_SW_95upper)
          multinom_MASI5_OU_coverge <- (multinom_MASI5_OU_95lower < OU_true) & (OU_true < multinom_MASI5_OU_95upper)
          
          list_multinom_MASI5_RT_pred <- c(list_multinom_MASI5_RT_pred, multinom_MASI5_RT_pred)
          list_multinom_MASI5_UT_pred <- c(list_multinom_MASI5_UT_pred, multinom_MASI5_UT_pred)
          list_multinom_MASI5_SW_pred <- c(list_multinom_MASI5_SW_pred, multinom_MASI5_SW_pred)
          list_multinom_MASI5_OU_pred <- c(list_multinom_MASI5_OU_pred, multinom_MASI5_OU_pred)
          list_multinom_MASI5_RT_SE <- c(list_multinom_MASI5_RT_SE, multinom_MASI5_RT_SE)
          list_multinom_MASI5_UT_SE <- c(list_multinom_MASI5_UT_SE, multinom_MASI5_UT_SE)
          list_multinom_MASI5_SW_SE <- c(list_multinom_MASI5_SW_SE, multinom_MASI5_SW_SE)
          list_multinom_MASI5_OU_SE <- c(list_multinom_MASI5_OU_SE, multinom_MASI5_OU_SE)
          list_multinom_MASI5_RT_95width <- c(list_multinom_MASI5_RT_95width, multinom_MASI5_RT_95width)
          list_multinom_MASI5_UT_95width <- c(list_multinom_MASI5_UT_95width, multinom_MASI5_UT_95width)
          list_multinom_MASI5_SW_95width <- c(list_multinom_MASI5_SW_95width, multinom_MASI5_SW_95width)
          list_multinom_MASI5_OU_95width <- c(list_multinom_MASI5_OU_95width, multinom_MASI5_OU_95width)
          list_multinom_MASI5_RT_coverge <- c(list_multinom_MASI5_RT_coverge, multinom_MASI5_RT_coverge)
          list_multinom_MASI5_UT_coverge <- c(list_multinom_MASI5_UT_coverge, multinom_MASI5_UT_coverge)
          list_multinom_MASI5_SW_coverge <- c(list_multinom_MASI5_SW_coverge, multinom_MASI5_SW_coverge)
          list_multinom_MASI5_OU_coverge <- c(list_multinom_MASI5_OU_coverge, multinom_MASI5_OU_coverge)
        }
      }
    }
    
    #nnet single imputation
    {
      #impute UA_80 
      {
        #model
        {
          set.seed(19)
          UASI_80_nnet_imp <- hotdeck(UA_80) # Step 1
          
          missing_SEX <- UASI_80_nnet_imp$SEX_imp
          missing_AGE <- UASI_80_nnet_imp$AGE_imp
          missing_Indication <- UASI_80_nnet_imp$Indication_imp
          missing_AntibioticClass <- UASI_80_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              # Step 5 -- start
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UASI_80_nnet_imp$SEX <- factor(UASI_80_nnet_imp$SEX, labels = levels(simulated$SEX))
              UASI_80_nnet_imp$AGE <- factor(UASI_80_nnet_imp$AGE, labels = levels(simulated$AGE))
              UASI_80_nnet_imp$Indication <- factor(UASI_80_nnet_imp$Indication, labels = levels(simulated$Indication))
              UASI_80_nnet_imp$AntibioticClass <- factor(UASI_80_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_80_nnet_imp$SEX[missing_SEX] <- NA # Step 2
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) # Step3
              # Step4 -- start
              raws <- predict(nnet_model, newdata = UASI_80_nnet_imp[is.na(UASI_80_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UASI_80_nnet_imp$SEX <- as.numeric(UASI_80_nnet_imp$SEX)
              UASI_80_nnet_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              UASI_80_nnet_imp$AGE[missing_AGE] <- NA # Step 2
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              raws <- predict(nnet_model, newdata = UASI_80_nnet_imp[is.na(UASI_80_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_80_nnet_imp$AGE <- as.numeric(UASI_80_nnet_imp$AGE)
              UASI_80_nnet_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              UASI_80_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UASI_80_nnet_imp[!is.na(UASI_80_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UASI_80_nnet_imp[is.na(UASI_80_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_80_nnet_imp$Indication <- as.numeric(UASI_80_nnet_imp$Indication)
              UASI_80_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_UASI80_RT_pred <- prop.table(table(UASI_80_nnet_imp$Indication))[1]
          nnet_UASI80_UT_pred <- prop.table(table(UASI_80_nnet_imp$Indication))[2]
          nnet_UASI80_SW_pred <- prop.table(table(UASI_80_nnet_imp$Indication))[3]
          nnet_UASI80_OU_pred <- prop.table(table(UASI_80_nnet_imp$Indication))[4]
          
          nnet_UASI80_RT_SE <- sqrt((nnet_UASI80_RT_pred*(1 - nnet_UASI80_RT_pred))/10000)
          nnet_UASI80_UT_SE <- sqrt((nnet_UASI80_UT_pred*(1 - nnet_UASI80_UT_pred))/10000)
          nnet_UASI80_SW_SE <- sqrt((nnet_UASI80_SW_pred*(1 - nnet_UASI80_SW_pred))/10000)
          nnet_UASI80_OU_SE <- sqrt((nnet_UASI80_OU_pred*(1 - nnet_UASI80_OU_pred))/10000)
          
          nnet_UASI80_RT_95upper <- nnet_UASI80_RT_pred + 2*nnet_UASI80_RT_SE
          nnet_UASI80_RT_95lower <- nnet_UASI80_RT_pred - 2*nnet_UASI80_RT_SE
          nnet_UASI80_RT_95width <- nnet_UASI80_RT_95upper - nnet_UASI80_RT_95lower
          nnet_UASI80_UT_95upper <- nnet_UASI80_UT_pred + 2*nnet_UASI80_UT_SE
          nnet_UASI80_UT_95lower <- nnet_UASI80_UT_pred - 2*nnet_UASI80_UT_SE
          nnet_UASI80_UT_95width <- nnet_UASI80_UT_95upper - nnet_UASI80_UT_95lower
          nnet_UASI80_SW_95upper <- nnet_UASI80_SW_pred + 2*nnet_UASI80_SW_SE
          nnet_UASI80_SW_95lower <- nnet_UASI80_SW_pred - 2*nnet_UASI80_SW_SE
          nnet_UASI80_SW_95width <- nnet_UASI80_SW_95upper - nnet_UASI80_SW_95lower
          nnet_UASI80_OU_95upper <- nnet_UASI80_OU_pred + 2*nnet_UASI80_OU_SE
          nnet_UASI80_OU_95lower <- nnet_UASI80_OU_pred - 2*nnet_UASI80_OU_SE
          nnet_UASI80_OU_95width <- nnet_UASI80_OU_95upper - nnet_UASI80_OU_95lower
          
          nnet_UASI80_RT_coverge <- (nnet_UASI80_RT_95lower < RT_true) & (RT_true < nnet_UASI80_RT_95upper)
          nnet_UASI80_UT_coverge <- (nnet_UASI80_UT_95lower < UT_true) & (UT_true < nnet_UASI80_UT_95upper)
          nnet_UASI80_SW_coverge <- (nnet_UASI80_SW_95lower < SW_true) & (SW_true < nnet_UASI80_SW_95upper)
          nnet_UASI80_OU_coverge <- (nnet_UASI80_OU_95lower < OU_true) & (OU_true < nnet_UASI80_OU_95upper)
          
          list_nnet_UASI80_RT_pred <- c(list_nnet_UASI80_RT_pred, nnet_UASI80_RT_pred)
          list_nnet_UASI80_UT_pred <- c(list_nnet_UASI80_UT_pred, nnet_UASI80_UT_pred)
          list_nnet_UASI80_SW_pred <- c(list_nnet_UASI80_SW_pred, nnet_UASI80_SW_pred)
          list_nnet_UASI80_OU_pred <- c(list_nnet_UASI80_OU_pred, nnet_UASI80_OU_pred)
          list_nnet_UASI80_RT_SE <- c(list_nnet_UASI80_RT_SE, nnet_UASI80_RT_SE)
          list_nnet_UASI80_UT_SE <- c(list_nnet_UASI80_UT_SE, nnet_UASI80_UT_SE)
          list_nnet_UASI80_SW_SE <- c(list_nnet_UASI80_SW_SE, nnet_UASI80_SW_SE)
          list_nnet_UASI80_OU_SE <- c(list_nnet_UASI80_OU_SE, nnet_UASI80_OU_SE)
          list_nnet_UASI80_RT_95width <- c(list_nnet_UASI80_RT_95width, nnet_UASI80_RT_95width)
          list_nnet_UASI80_UT_95width <- c(list_nnet_UASI80_UT_95width, nnet_UASI80_UT_95width)
          list_nnet_UASI80_SW_95width <- c(list_nnet_UASI80_SW_95width, nnet_UASI80_SW_95width)
          list_nnet_UASI80_OU_95width <- c(list_nnet_UASI80_OU_95width, nnet_UASI80_OU_95width)
          list_nnet_UASI80_RT_coverge <- c(list_nnet_UASI80_RT_coverge, nnet_UASI80_RT_coverge)
          list_nnet_UASI80_UT_coverge <- c(list_nnet_UASI80_UT_coverge, nnet_UASI80_UT_coverge)
          list_nnet_UASI80_SW_coverge <- c(list_nnet_UASI80_SW_coverge, nnet_UASI80_SW_coverge)
          list_nnet_UASI80_OU_coverge <- c(list_nnet_UASI80_OU_coverge, nnet_UASI80_OU_coverge)
        }
      }
      
      #impute UA_50 
      {
        #model
        {
          set.seed(19)
          UASI_50_nnet_imp <- hotdeck(UA_50) 
          
          missing_SEX <- UASI_50_nnet_imp$SEX_imp
          missing_AGE <- UASI_50_nnet_imp$AGE_imp
          missing_Indication <- UASI_50_nnet_imp$Indication_imp
          missing_AntibioticClass <- UASI_50_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UASI_50_nnet_imp$SEX <- factor(UASI_50_nnet_imp$SEX, labels = levels(simulated$SEX))
              UASI_50_nnet_imp$AGE <- factor(UASI_50_nnet_imp$AGE, labels = levels(simulated$AGE))
              UASI_50_nnet_imp$Indication <- factor(UASI_50_nnet_imp$Indication, labels = levels(simulated$Indication))
              UASI_50_nnet_imp$AntibioticClass <- factor(UASI_50_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_50_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UASI_50_nnet_imp[is.na(UASI_50_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UASI_50_nnet_imp$SEX <- as.numeric(UASI_50_nnet_imp$SEX)
              UASI_50_nnet_imp$SEX[missing_SEX] <- pred
              
              UASI_50_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UASI_50_nnet_imp[is.na(UASI_50_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_50_nnet_imp$AGE <- as.numeric(UASI_50_nnet_imp$AGE)
              UASI_50_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_50_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UASI_50_nnet_imp[!is.na(UASI_50_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UASI_50_nnet_imp[is.na(UASI_50_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_50_nnet_imp$Indication <- as.numeric(UASI_50_nnet_imp$Indication)
              UASI_50_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_UASI50_RT_pred <- prop.table(table(UASI_50_nnet_imp$Indication))[1]
          nnet_UASI50_UT_pred <- prop.table(table(UASI_50_nnet_imp$Indication))[2]
          nnet_UASI50_SW_pred <- prop.table(table(UASI_50_nnet_imp$Indication))[3]
          nnet_UASI50_OU_pred <- prop.table(table(UASI_50_nnet_imp$Indication))[4]
          
          nnet_UASI50_RT_SE <- sqrt((nnet_UASI50_RT_pred*(1 - nnet_UASI50_RT_pred))/10000)
          nnet_UASI50_UT_SE <- sqrt((nnet_UASI50_UT_pred*(1 - nnet_UASI50_UT_pred))/10000)
          nnet_UASI50_SW_SE <- sqrt((nnet_UASI50_SW_pred*(1 - nnet_UASI50_SW_pred))/10000)
          nnet_UASI50_OU_SE <- sqrt((nnet_UASI50_OU_pred*(1 - nnet_UASI50_OU_pred))/10000)
          
          nnet_UASI50_RT_95upper <- nnet_UASI50_RT_pred + 2*nnet_UASI50_RT_SE
          nnet_UASI50_RT_95lower <- nnet_UASI50_RT_pred - 2*nnet_UASI50_RT_SE
          nnet_UASI50_RT_95width <- nnet_UASI50_RT_95upper - nnet_UASI50_RT_95lower
          nnet_UASI50_UT_95upper <- nnet_UASI50_UT_pred + 2*nnet_UASI50_UT_SE
          nnet_UASI50_UT_95lower <- nnet_UASI50_UT_pred - 2*nnet_UASI50_UT_SE
          nnet_UASI50_UT_95width <- nnet_UASI50_UT_95upper - nnet_UASI50_UT_95lower
          nnet_UASI50_SW_95upper <- nnet_UASI50_SW_pred + 2*nnet_UASI50_SW_SE
          nnet_UASI50_SW_95lower <- nnet_UASI50_SW_pred - 2*nnet_UASI50_SW_SE
          nnet_UASI50_SW_95width <- nnet_UASI50_SW_95upper - nnet_UASI50_SW_95lower
          nnet_UASI50_OU_95upper <- nnet_UASI50_OU_pred + 2*nnet_UASI50_OU_SE
          nnet_UASI50_OU_95lower <- nnet_UASI50_OU_pred - 2*nnet_UASI50_OU_SE
          nnet_UASI50_OU_95width <- nnet_UASI50_OU_95upper - nnet_UASI50_OU_95lower
          
          nnet_UASI50_RT_coverge <- (nnet_UASI50_RT_95lower < RT_true) & (RT_true < nnet_UASI50_RT_95upper)
          nnet_UASI50_UT_coverge <- (nnet_UASI50_UT_95lower < UT_true) & (UT_true < nnet_UASI50_UT_95upper)
          nnet_UASI50_SW_coverge <- (nnet_UASI50_SW_95lower < SW_true) & (SW_true < nnet_UASI50_SW_95upper)
          nnet_UASI50_OU_coverge <- (nnet_UASI50_OU_95lower < OU_true) & (OU_true < nnet_UASI50_OU_95upper)
          
          list_nnet_UASI50_RT_pred <- c(list_nnet_UASI50_RT_pred, nnet_UASI50_RT_pred)
          list_nnet_UASI50_UT_pred <- c(list_nnet_UASI50_UT_pred, nnet_UASI50_UT_pred)
          list_nnet_UASI50_SW_pred <- c(list_nnet_UASI50_SW_pred, nnet_UASI50_SW_pred)
          list_nnet_UASI50_OU_pred <- c(list_nnet_UASI50_OU_pred, nnet_UASI50_OU_pred)
          list_nnet_UASI50_RT_SE <- c(list_nnet_UASI50_RT_SE, nnet_UASI50_RT_SE)
          list_nnet_UASI50_UT_SE <- c(list_nnet_UASI50_UT_SE, nnet_UASI50_UT_SE)
          list_nnet_UASI50_SW_SE <- c(list_nnet_UASI50_SW_SE, nnet_UASI50_SW_SE)
          list_nnet_UASI50_OU_SE <- c(list_nnet_UASI50_OU_SE, nnet_UASI50_OU_SE)
          list_nnet_UASI50_RT_95width <- c(list_nnet_UASI50_RT_95width, nnet_UASI50_RT_95width)
          list_nnet_UASI50_UT_95width <- c(list_nnet_UASI50_UT_95width, nnet_UASI50_UT_95width)
          list_nnet_UASI50_SW_95width <- c(list_nnet_UASI50_SW_95width, nnet_UASI50_SW_95width)
          list_nnet_UASI50_OU_95width <- c(list_nnet_UASI50_OU_95width, nnet_UASI50_OU_95width)
          list_nnet_UASI50_RT_coverge <- c(list_nnet_UASI50_RT_coverge, nnet_UASI50_RT_coverge)
          list_nnet_UASI50_UT_coverge <- c(list_nnet_UASI50_UT_coverge, nnet_UASI50_UT_coverge)
          list_nnet_UASI50_SW_coverge <- c(list_nnet_UASI50_SW_coverge, nnet_UASI50_SW_coverge)
          list_nnet_UASI50_OU_coverge <- c(list_nnet_UASI50_OU_coverge, nnet_UASI50_OU_coverge)
        }
      }
      
      #impute UA_20 
      {
        #model
        {
          set.seed(19)
          UASI_20_nnet_imp <- hotdeck(UA_20) 
          
          missing_SEX <- UASI_20_nnet_imp$SEX_imp
          missing_AGE <- UASI_20_nnet_imp$AGE_imp
          missing_Indication <- UASI_20_nnet_imp$Indication_imp
          missing_AntibioticClass <- UASI_20_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UASI_20_nnet_imp$SEX <- factor(UASI_20_nnet_imp$SEX, labels = levels(simulated$SEX))
              UASI_20_nnet_imp$AGE <- factor(UASI_20_nnet_imp$AGE, labels = levels(simulated$AGE))
              UASI_20_nnet_imp$Indication <- factor(UASI_20_nnet_imp$Indication, labels = levels(simulated$Indication))
              UASI_20_nnet_imp$AntibioticClass <- factor(UASI_20_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_20_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UASI_20_nnet_imp[is.na(UASI_20_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UASI_20_nnet_imp$SEX <- as.numeric(UASI_20_nnet_imp$SEX)
              UASI_20_nnet_imp$SEX[missing_SEX] <- pred
              
              UASI_20_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UASI_20_nnet_imp[is.na(UASI_20_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_20_nnet_imp$AGE <- as.numeric(UASI_20_nnet_imp$AGE)
              UASI_20_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_20_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UASI_20_nnet_imp[!is.na(UASI_20_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UASI_20_nnet_imp[is.na(UASI_20_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_20_nnet_imp$Indication <- as.numeric(UASI_20_nnet_imp$Indication)
              UASI_20_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_UASI20_RT_pred <- prop.table(table(UASI_20_nnet_imp$Indication))[1]
          nnet_UASI20_UT_pred <- prop.table(table(UASI_20_nnet_imp$Indication))[2]
          nnet_UASI20_SW_pred <- prop.table(table(UASI_20_nnet_imp$Indication))[3]
          nnet_UASI20_OU_pred <- prop.table(table(UASI_20_nnet_imp$Indication))[4]
          
          nnet_UASI20_RT_SE <- sqrt((nnet_UASI20_RT_pred*(1 - nnet_UASI20_RT_pred))/10000)
          nnet_UASI20_UT_SE <- sqrt((nnet_UASI20_UT_pred*(1 - nnet_UASI20_UT_pred))/10000)
          nnet_UASI20_SW_SE <- sqrt((nnet_UASI20_SW_pred*(1 - nnet_UASI20_SW_pred))/10000)
          nnet_UASI20_OU_SE <- sqrt((nnet_UASI20_OU_pred*(1 - nnet_UASI20_OU_pred))/10000)
          
          nnet_UASI20_RT_95upper <- nnet_UASI20_RT_pred + 2*nnet_UASI20_RT_SE
          nnet_UASI20_RT_95lower <- nnet_UASI20_RT_pred - 2*nnet_UASI20_RT_SE
          nnet_UASI20_RT_95width <- nnet_UASI20_RT_95upper - nnet_UASI20_RT_95lower
          nnet_UASI20_UT_95upper <- nnet_UASI20_UT_pred + 2*nnet_UASI20_UT_SE
          nnet_UASI20_UT_95lower <- nnet_UASI20_UT_pred - 2*nnet_UASI20_UT_SE
          nnet_UASI20_UT_95width <- nnet_UASI20_UT_95upper - nnet_UASI20_UT_95lower
          nnet_UASI20_SW_95upper <- nnet_UASI20_SW_pred + 2*nnet_UASI20_SW_SE
          nnet_UASI20_SW_95lower <- nnet_UASI20_SW_pred - 2*nnet_UASI20_SW_SE
          nnet_UASI20_SW_95width <- nnet_UASI20_SW_95upper - nnet_UASI20_SW_95lower
          nnet_UASI20_OU_95upper <- nnet_UASI20_OU_pred + 2*nnet_UASI20_OU_SE
          nnet_UASI20_OU_95lower <- nnet_UASI20_OU_pred - 2*nnet_UASI20_OU_SE
          nnet_UASI20_OU_95width <- nnet_UASI20_OU_95upper - nnet_UASI20_OU_95lower
          
          nnet_UASI20_RT_coverge <- (nnet_UASI20_RT_95lower < RT_true) & (RT_true < nnet_UASI20_RT_95upper)
          nnet_UASI20_UT_coverge <- (nnet_UASI20_UT_95lower < UT_true) & (UT_true < nnet_UASI20_UT_95upper)
          nnet_UASI20_SW_coverge <- (nnet_UASI20_SW_95lower < SW_true) & (SW_true < nnet_UASI20_SW_95upper)
          nnet_UASI20_OU_coverge <- (nnet_UASI20_OU_95lower < OU_true) & (OU_true < nnet_UASI20_OU_95upper)
          
          list_nnet_UASI20_RT_pred <- c(list_nnet_UASI20_RT_pred, nnet_UASI20_RT_pred)
          list_nnet_UASI20_UT_pred <- c(list_nnet_UASI20_UT_pred, nnet_UASI20_UT_pred)
          list_nnet_UASI20_SW_pred <- c(list_nnet_UASI20_SW_pred, nnet_UASI20_SW_pred)
          list_nnet_UASI20_OU_pred <- c(list_nnet_UASI20_OU_pred, nnet_UASI20_OU_pred)
          list_nnet_UASI20_RT_SE <- c(list_nnet_UASI20_RT_SE, nnet_UASI20_RT_SE)
          list_nnet_UASI20_UT_SE <- c(list_nnet_UASI20_UT_SE, nnet_UASI20_UT_SE)
          list_nnet_UASI20_SW_SE <- c(list_nnet_UASI20_SW_SE, nnet_UASI20_SW_SE)
          list_nnet_UASI20_OU_SE <- c(list_nnet_UASI20_OU_SE, nnet_UASI20_OU_SE)
          list_nnet_UASI20_RT_95width <- c(list_nnet_UASI20_RT_95width, nnet_UASI20_RT_95width)
          list_nnet_UASI20_UT_95width <- c(list_nnet_UASI20_UT_95width, nnet_UASI20_UT_95width)
          list_nnet_UASI20_SW_95width <- c(list_nnet_UASI20_SW_95width, nnet_UASI20_SW_95width)
          list_nnet_UASI20_OU_95width <- c(list_nnet_UASI20_OU_95width, nnet_UASI20_OU_95width)
          list_nnet_UASI20_RT_coverge <- c(list_nnet_UASI20_RT_coverge, nnet_UASI20_RT_coverge)
          list_nnet_UASI20_UT_coverge <- c(list_nnet_UASI20_UT_coverge, nnet_UASI20_UT_coverge)
          list_nnet_UASI20_SW_coverge <- c(list_nnet_UASI20_SW_coverge, nnet_UASI20_SW_coverge)
          list_nnet_UASI20_OU_coverge <- c(list_nnet_UASI20_OU_coverge, nnet_UASI20_OU_coverge)
        }
      }
      
      #impute UA_5 
      {
        #model
        {
          set.seed(19)
          UASI_5_nnet_imp <- hotdeck(UA_5) 
          
          missing_SEX <- UASI_5_nnet_imp$SEX_imp
          missing_AGE <- UASI_5_nnet_imp$AGE_imp
          missing_Indication <- UASI_5_nnet_imp$Indication_imp
          missing_AntibioticClass <- UASI_5_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UASI_5_nnet_imp$SEX <- factor(UASI_5_nnet_imp$SEX, labels = levels(simulated$SEX))
              UASI_5_nnet_imp$AGE <- factor(UASI_5_nnet_imp$AGE, labels = levels(simulated$AGE))
              UASI_5_nnet_imp$Indication <- factor(UASI_5_nnet_imp$Indication, labels = levels(simulated$Indication))
              UASI_5_nnet_imp$AntibioticClass <- factor(UASI_5_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UASI_5_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UASI_5_nnet_imp[is.na(UASI_5_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UASI_5_nnet_imp$SEX <- as.numeric(UASI_5_nnet_imp$SEX)
              UASI_5_nnet_imp$SEX[missing_SEX] <- pred
              
              UASI_5_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UASI_5_nnet_imp[is.na(UASI_5_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UASI_5_nnet_imp$AGE <- as.numeric(UASI_5_nnet_imp$AGE)
              UASI_5_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UASI_5_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UASI_5_nnet_imp[!is.na(UASI_5_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UASI_5_nnet_imp[is.na(UASI_5_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UASI_5_nnet_imp$Indication <- as.numeric(UASI_5_nnet_imp$Indication)
              UASI_5_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_UASI5_RT_pred <- prop.table(table(UASI_5_nnet_imp$Indication))[1]
          nnet_UASI5_UT_pred <- prop.table(table(UASI_5_nnet_imp$Indication))[2]
          nnet_UASI5_SW_pred <- prop.table(table(UASI_5_nnet_imp$Indication))[3]
          nnet_UASI5_OU_pred <- prop.table(table(UASI_5_nnet_imp$Indication))[4]
          
          nnet_UASI5_RT_SE <- sqrt((nnet_UASI5_RT_pred*(1 - nnet_UASI5_RT_pred))/10000)
          nnet_UASI5_UT_SE <- sqrt((nnet_UASI5_UT_pred*(1 - nnet_UASI5_UT_pred))/10000)
          nnet_UASI5_SW_SE <- sqrt((nnet_UASI5_SW_pred*(1 - nnet_UASI5_SW_pred))/10000)
          nnet_UASI5_OU_SE <- sqrt((nnet_UASI5_OU_pred*(1 - nnet_UASI5_OU_pred))/10000)
          
          nnet_UASI5_RT_95upper <- nnet_UASI5_RT_pred + 2*nnet_UASI5_RT_SE
          nnet_UASI5_RT_95lower <- nnet_UASI5_RT_pred - 2*nnet_UASI5_RT_SE
          nnet_UASI5_RT_95width <- nnet_UASI5_RT_95upper - nnet_UASI5_RT_95lower
          nnet_UASI5_UT_95upper <- nnet_UASI5_UT_pred + 2*nnet_UASI5_UT_SE
          nnet_UASI5_UT_95lower <- nnet_UASI5_UT_pred - 2*nnet_UASI5_UT_SE
          nnet_UASI5_UT_95width <- nnet_UASI5_UT_95upper - nnet_UASI5_UT_95lower
          nnet_UASI5_SW_95upper <- nnet_UASI5_SW_pred + 2*nnet_UASI5_SW_SE
          nnet_UASI5_SW_95lower <- nnet_UASI5_SW_pred - 2*nnet_UASI5_SW_SE
          nnet_UASI5_SW_95width <- nnet_UASI5_SW_95upper - nnet_UASI5_SW_95lower
          nnet_UASI5_OU_95upper <- nnet_UASI5_OU_pred + 2*nnet_UASI5_OU_SE
          nnet_UASI5_OU_95lower <- nnet_UASI5_OU_pred - 2*nnet_UASI5_OU_SE
          nnet_UASI5_OU_95width <- nnet_UASI5_OU_95upper - nnet_UASI5_OU_95lower
          
          nnet_UASI5_RT_coverge <- (nnet_UASI5_RT_95lower < RT_true) & (RT_true < nnet_UASI5_RT_95upper)
          nnet_UASI5_UT_coverge <- (nnet_UASI5_UT_95lower < UT_true) & (UT_true < nnet_UASI5_UT_95upper)
          nnet_UASI5_SW_coverge <- (nnet_UASI5_SW_95lower < SW_true) & (SW_true < nnet_UASI5_SW_95upper)
          nnet_UASI5_OU_coverge <- (nnet_UASI5_OU_95lower < OU_true) & (OU_true < nnet_UASI5_OU_95upper)
          
          list_nnet_UASI5_RT_pred <- c(list_nnet_UASI5_RT_pred, nnet_UASI5_RT_pred)
          list_nnet_UASI5_UT_pred <- c(list_nnet_UASI5_UT_pred, nnet_UASI5_UT_pred)
          list_nnet_UASI5_SW_pred <- c(list_nnet_UASI5_SW_pred, nnet_UASI5_SW_pred)
          list_nnet_UASI5_OU_pred <- c(list_nnet_UASI5_OU_pred, nnet_UASI5_OU_pred)
          list_nnet_UASI5_RT_SE <- c(list_nnet_UASI5_RT_SE, nnet_UASI5_RT_SE)
          list_nnet_UASI5_UT_SE <- c(list_nnet_UASI5_UT_SE, nnet_UASI5_UT_SE)
          list_nnet_UASI5_SW_SE <- c(list_nnet_UASI5_SW_SE, nnet_UASI5_SW_SE)
          list_nnet_UASI5_OU_SE <- c(list_nnet_UASI5_OU_SE, nnet_UASI5_OU_SE)
          list_nnet_UASI5_RT_95width <- c(list_nnet_UASI5_RT_95width, nnet_UASI5_RT_95width)
          list_nnet_UASI5_UT_95width <- c(list_nnet_UASI5_UT_95width, nnet_UASI5_UT_95width)
          list_nnet_UASI5_SW_95width <- c(list_nnet_UASI5_SW_95width, nnet_UASI5_SW_95width)
          list_nnet_UASI5_OU_95width <- c(list_nnet_UASI5_OU_95width, nnet_UASI5_OU_95width)
          list_nnet_UASI5_RT_coverge <- c(list_nnet_UASI5_RT_coverge, nnet_UASI5_RT_coverge)
          list_nnet_UASI5_UT_coverge <- c(list_nnet_UASI5_UT_coverge, nnet_UASI5_UT_coverge)
          list_nnet_UASI5_SW_coverge <- c(list_nnet_UASI5_SW_coverge, nnet_UASI5_SW_coverge)
          list_nnet_UASI5_OU_coverge <- c(list_nnet_UASI5_OU_coverge, nnet_UASI5_OU_coverge)
        }
      }
      
      #impute MA_80 
      {
        #model
        {
          set.seed(19)
          MASI_80_nnet_imp <- hotdeck(MA_80) # Step 1
          
          missing_SEX <- MASI_80_nnet_imp$SEX_imp
          missing_AGE <- MASI_80_nnet_imp$AGE_imp
          missing_Indication <- MASI_80_nnet_imp$Indication_imp
          missing_AntibioticClass <- MASI_80_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              # Step 5 -- start
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MASI_80_nnet_imp$SEX <- factor(MASI_80_nnet_imp$SEX, labels = levels(simulated$SEX))
              MASI_80_nnet_imp$AGE <- factor(MASI_80_nnet_imp$AGE, labels = levels(simulated$AGE))
              MASI_80_nnet_imp$Indication <- factor(MASI_80_nnet_imp$Indication, labels = levels(simulated$Indication))
              MASI_80_nnet_imp$AntibioticClass <- factor(MASI_80_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_80_nnet_imp$SEX[missing_SEX] <- NA # Step 2
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) # Step3
              # Step4 -- start
              raws <- predict(nnet_model, newdata = MASI_80_nnet_imp[is.na(MASI_80_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MASI_80_nnet_imp$SEX <- as.numeric(MASI_80_nnet_imp$SEX)
              MASI_80_nnet_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              MASI_80_nnet_imp$AGE[missing_AGE] <- NA # Step 2
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              raws <- predict(nnet_model, newdata = MASI_80_nnet_imp[is.na(MASI_80_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_80_nnet_imp$AGE <- as.numeric(MASI_80_nnet_imp$AGE)
              MASI_80_nnet_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              MASI_80_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MASI_80_nnet_imp[!is.na(MASI_80_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MASI_80_nnet_imp[is.na(MASI_80_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_80_nnet_imp$Indication <- as.numeric(MASI_80_nnet_imp$Indication)
              MASI_80_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_MASI80_RT_pred <- prop.table(table(MASI_80_nnet_imp$Indication))[1]
          nnet_MASI80_UT_pred <- prop.table(table(MASI_80_nnet_imp$Indication))[2]
          nnet_MASI80_SW_pred <- prop.table(table(MASI_80_nnet_imp$Indication))[3]
          nnet_MASI80_OU_pred <- prop.table(table(MASI_80_nnet_imp$Indication))[4]
          
          nnet_MASI80_RT_SE <- sqrt((nnet_MASI80_RT_pred*(1 - nnet_MASI80_RT_pred))/10000)
          nnet_MASI80_UT_SE <- sqrt((nnet_MASI80_UT_pred*(1 - nnet_MASI80_UT_pred))/10000)
          nnet_MASI80_SW_SE <- sqrt((nnet_MASI80_SW_pred*(1 - nnet_MASI80_SW_pred))/10000)
          nnet_MASI80_OU_SE <- sqrt((nnet_MASI80_OU_pred*(1 - nnet_MASI80_OU_pred))/10000)
          
          nnet_MASI80_RT_95upper <- nnet_MASI80_RT_pred + 2*nnet_MASI80_RT_SE
          nnet_MASI80_RT_95lower <- nnet_MASI80_RT_pred - 2*nnet_MASI80_RT_SE
          nnet_MASI80_RT_95width <- nnet_MASI80_RT_95upper - nnet_MASI80_RT_95lower
          nnet_MASI80_UT_95upper <- nnet_MASI80_UT_pred + 2*nnet_MASI80_UT_SE
          nnet_MASI80_UT_95lower <- nnet_MASI80_UT_pred - 2*nnet_MASI80_UT_SE
          nnet_MASI80_UT_95width <- nnet_MASI80_UT_95upper - nnet_MASI80_UT_95lower
          nnet_MASI80_SW_95upper <- nnet_MASI80_SW_pred + 2*nnet_MASI80_SW_SE
          nnet_MASI80_SW_95lower <- nnet_MASI80_SW_pred - 2*nnet_MASI80_SW_SE
          nnet_MASI80_SW_95width <- nnet_MASI80_SW_95upper - nnet_MASI80_SW_95lower
          nnet_MASI80_OU_95upper <- nnet_MASI80_OU_pred + 2*nnet_MASI80_OU_SE
          nnet_MASI80_OU_95lower <- nnet_MASI80_OU_pred - 2*nnet_MASI80_OU_SE
          nnet_MASI80_OU_95width <- nnet_MASI80_OU_95upper - nnet_MASI80_OU_95lower
          
          nnet_MASI80_RT_coverge <- (nnet_MASI80_RT_95lower < RT_true) & (RT_true < nnet_MASI80_RT_95upper)
          nnet_MASI80_UT_coverge <- (nnet_MASI80_UT_95lower < UT_true) & (UT_true < nnet_MASI80_UT_95upper)
          nnet_MASI80_SW_coverge <- (nnet_MASI80_SW_95lower < SW_true) & (SW_true < nnet_MASI80_SW_95upper)
          nnet_MASI80_OU_coverge <- (nnet_MASI80_OU_95lower < OU_true) & (OU_true < nnet_MASI80_OU_95upper)
          
          list_nnet_MASI80_RT_pred <- c(list_nnet_MASI80_RT_pred, nnet_MASI80_RT_pred)
          list_nnet_MASI80_UT_pred <- c(list_nnet_MASI80_UT_pred, nnet_MASI80_UT_pred)
          list_nnet_MASI80_SW_pred <- c(list_nnet_MASI80_SW_pred, nnet_MASI80_SW_pred)
          list_nnet_MASI80_OU_pred <- c(list_nnet_MASI80_OU_pred, nnet_MASI80_OU_pred)
          list_nnet_MASI80_RT_SE <- c(list_nnet_MASI80_RT_SE, nnet_MASI80_RT_SE)
          list_nnet_MASI80_UT_SE <- c(list_nnet_MASI80_UT_SE, nnet_MASI80_UT_SE)
          list_nnet_MASI80_SW_SE <- c(list_nnet_MASI80_SW_SE, nnet_MASI80_SW_SE)
          list_nnet_MASI80_OU_SE <- c(list_nnet_MASI80_OU_SE, nnet_MASI80_OU_SE)
          list_nnet_MASI80_RT_95width <- c(list_nnet_MASI80_RT_95width, nnet_MASI80_RT_95width)
          list_nnet_MASI80_UT_95width <- c(list_nnet_MASI80_UT_95width, nnet_MASI80_UT_95width)
          list_nnet_MASI80_SW_95width <- c(list_nnet_MASI80_SW_95width, nnet_MASI80_SW_95width)
          list_nnet_MASI80_OU_95width <- c(list_nnet_MASI80_OU_95width, nnet_MASI80_OU_95width)
          list_nnet_MASI80_RT_coverge <- c(list_nnet_MASI80_RT_coverge, nnet_MASI80_RT_coverge)
          list_nnet_MASI80_UT_coverge <- c(list_nnet_MASI80_UT_coverge, nnet_MASI80_UT_coverge)
          list_nnet_MASI80_SW_coverge <- c(list_nnet_MASI80_SW_coverge, nnet_MASI80_SW_coverge)
          list_nnet_MASI80_OU_coverge <- c(list_nnet_MASI80_OU_coverge, nnet_MASI80_OU_coverge)
        }
      }
      
      #impute MA_50 
      {
        #model
        {
          set.seed(19)
          MASI_50_nnet_imp <- hotdeck(MA_50) 
          
          missing_SEX <- MASI_50_nnet_imp$SEX_imp
          missing_AGE <- MASI_50_nnet_imp$AGE_imp
          missing_Indication <- MASI_50_nnet_imp$Indication_imp
          missing_AntibioticClass <- MASI_50_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MASI_50_nnet_imp$SEX <- factor(MASI_50_nnet_imp$SEX, labels = levels(simulated$SEX))
              MASI_50_nnet_imp$AGE <- factor(MASI_50_nnet_imp$AGE, labels = levels(simulated$AGE))
              MASI_50_nnet_imp$Indication <- factor(MASI_50_nnet_imp$Indication, labels = levels(simulated$Indication))
              MASI_50_nnet_imp$AntibioticClass <- factor(MASI_50_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_50_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MASI_50_nnet_imp[is.na(MASI_50_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MASI_50_nnet_imp$SEX <- as.numeric(MASI_50_nnet_imp$SEX)
              MASI_50_nnet_imp$SEX[missing_SEX] <- pred
              
              MASI_50_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MASI_50_nnet_imp[is.na(MASI_50_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_50_nnet_imp$AGE <- as.numeric(MASI_50_nnet_imp$AGE)
              MASI_50_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_50_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MASI_50_nnet_imp[!is.na(MASI_50_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MASI_50_nnet_imp[is.na(MASI_50_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_50_nnet_imp$Indication <- as.numeric(MASI_50_nnet_imp$Indication)
              MASI_50_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_MASI50_RT_pred <- prop.table(table(MASI_50_nnet_imp$Indication))[1]
          nnet_MASI50_UT_pred <- prop.table(table(MASI_50_nnet_imp$Indication))[2]
          nnet_MASI50_SW_pred <- prop.table(table(MASI_50_nnet_imp$Indication))[3]
          nnet_MASI50_OU_pred <- prop.table(table(MASI_50_nnet_imp$Indication))[4]
          
          nnet_MASI50_RT_SE <- sqrt((nnet_MASI50_RT_pred*(1 - nnet_MASI50_RT_pred))/10000)
          nnet_MASI50_UT_SE <- sqrt((nnet_MASI50_UT_pred*(1 - nnet_MASI50_UT_pred))/10000)
          nnet_MASI50_SW_SE <- sqrt((nnet_MASI50_SW_pred*(1 - nnet_MASI50_SW_pred))/10000)
          nnet_MASI50_OU_SE <- sqrt((nnet_MASI50_OU_pred*(1 - nnet_MASI50_OU_pred))/10000)
          
          nnet_MASI50_RT_95upper <- nnet_MASI50_RT_pred + 2*nnet_MASI50_RT_SE
          nnet_MASI50_RT_95lower <- nnet_MASI50_RT_pred - 2*nnet_MASI50_RT_SE
          nnet_MASI50_RT_95width <- nnet_MASI50_RT_95upper - nnet_MASI50_RT_95lower
          nnet_MASI50_UT_95upper <- nnet_MASI50_UT_pred + 2*nnet_MASI50_UT_SE
          nnet_MASI50_UT_95lower <- nnet_MASI50_UT_pred - 2*nnet_MASI50_UT_SE
          nnet_MASI50_UT_95width <- nnet_MASI50_UT_95upper - nnet_MASI50_UT_95lower
          nnet_MASI50_SW_95upper <- nnet_MASI50_SW_pred + 2*nnet_MASI50_SW_SE
          nnet_MASI50_SW_95lower <- nnet_MASI50_SW_pred - 2*nnet_MASI50_SW_SE
          nnet_MASI50_SW_95width <- nnet_MASI50_SW_95upper - nnet_MASI50_SW_95lower
          nnet_MASI50_OU_95upper <- nnet_MASI50_OU_pred + 2*nnet_MASI50_OU_SE
          nnet_MASI50_OU_95lower <- nnet_MASI50_OU_pred - 2*nnet_MASI50_OU_SE
          nnet_MASI50_OU_95width <- nnet_MASI50_OU_95upper - nnet_MASI50_OU_95lower
          
          nnet_MASI50_RT_coverge <- (nnet_MASI50_RT_95lower < RT_true) & (RT_true < nnet_MASI50_RT_95upper)
          nnet_MASI50_UT_coverge <- (nnet_MASI50_UT_95lower < UT_true) & (UT_true < nnet_MASI50_UT_95upper)
          nnet_MASI50_SW_coverge <- (nnet_MASI50_SW_95lower < SW_true) & (SW_true < nnet_MASI50_SW_95upper)
          nnet_MASI50_OU_coverge <- (nnet_MASI50_OU_95lower < OU_true) & (OU_true < nnet_MASI50_OU_95upper)
          
          list_nnet_MASI50_RT_pred <- c(list_nnet_MASI50_RT_pred, nnet_MASI50_RT_pred)
          list_nnet_MASI50_UT_pred <- c(list_nnet_MASI50_UT_pred, nnet_MASI50_UT_pred)
          list_nnet_MASI50_SW_pred <- c(list_nnet_MASI50_SW_pred, nnet_MASI50_SW_pred)
          list_nnet_MASI50_OU_pred <- c(list_nnet_MASI50_OU_pred, nnet_MASI50_OU_pred)
          list_nnet_MASI50_RT_SE <- c(list_nnet_MASI50_RT_SE, nnet_MASI50_RT_SE)
          list_nnet_MASI50_UT_SE <- c(list_nnet_MASI50_UT_SE, nnet_MASI50_UT_SE)
          list_nnet_MASI50_SW_SE <- c(list_nnet_MASI50_SW_SE, nnet_MASI50_SW_SE)
          list_nnet_MASI50_OU_SE <- c(list_nnet_MASI50_OU_SE, nnet_MASI50_OU_SE)
          list_nnet_MASI50_RT_95width <- c(list_nnet_MASI50_RT_95width, nnet_MASI50_RT_95width)
          list_nnet_MASI50_UT_95width <- c(list_nnet_MASI50_UT_95width, nnet_MASI50_UT_95width)
          list_nnet_MASI50_SW_95width <- c(list_nnet_MASI50_SW_95width, nnet_MASI50_SW_95width)
          list_nnet_MASI50_OU_95width <- c(list_nnet_MASI50_OU_95width, nnet_MASI50_OU_95width)
          list_nnet_MASI50_RT_coverge <- c(list_nnet_MASI50_RT_coverge, nnet_MASI50_RT_coverge)
          list_nnet_MASI50_UT_coverge <- c(list_nnet_MASI50_UT_coverge, nnet_MASI50_UT_coverge)
          list_nnet_MASI50_SW_coverge <- c(list_nnet_MASI50_SW_coverge, nnet_MASI50_SW_coverge)
          list_nnet_MASI50_OU_coverge <- c(list_nnet_MASI50_OU_coverge, nnet_MASI50_OU_coverge)
        }
      }
      
      #impute MA_20 
      {
        #model
        {
          set.seed(19)
          MASI_20_nnet_imp <- hotdeck(MA_20) 
          
          missing_SEX <- MASI_20_nnet_imp$SEX_imp
          missing_AGE <- MASI_20_nnet_imp$AGE_imp
          missing_Indication <- MASI_20_nnet_imp$Indication_imp
          missing_AntibioticClass <- MASI_20_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MASI_20_nnet_imp$SEX <- factor(MASI_20_nnet_imp$SEX, labels = levels(simulated$SEX))
              MASI_20_nnet_imp$AGE <- factor(MASI_20_nnet_imp$AGE, labels = levels(simulated$AGE))
              MASI_20_nnet_imp$Indication <- factor(MASI_20_nnet_imp$Indication, labels = levels(simulated$Indication))
              MASI_20_nnet_imp$AntibioticClass <- factor(MASI_20_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_20_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MASI_20_nnet_imp[is.na(MASI_20_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MASI_20_nnet_imp$SEX <- as.numeric(MASI_20_nnet_imp$SEX)
              MASI_20_nnet_imp$SEX[missing_SEX] <- pred
              
              MASI_20_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MASI_20_nnet_imp[is.na(MASI_20_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_20_nnet_imp$AGE <- as.numeric(MASI_20_nnet_imp$AGE)
              MASI_20_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_20_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MASI_20_nnet_imp[!is.na(MASI_20_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MASI_20_nnet_imp[is.na(MASI_20_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_20_nnet_imp$Indication <- as.numeric(MASI_20_nnet_imp$Indication)
              MASI_20_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_MASI20_RT_pred <- prop.table(table(MASI_20_nnet_imp$Indication))[1]
          nnet_MASI20_UT_pred <- prop.table(table(MASI_20_nnet_imp$Indication))[2]
          nnet_MASI20_SW_pred <- prop.table(table(MASI_20_nnet_imp$Indication))[3]
          nnet_MASI20_OU_pred <- prop.table(table(MASI_20_nnet_imp$Indication))[4]
          
          nnet_MASI20_RT_SE <- sqrt((nnet_MASI20_RT_pred*(1 - nnet_MASI20_RT_pred))/10000)
          nnet_MASI20_UT_SE <- sqrt((nnet_MASI20_UT_pred*(1 - nnet_MASI20_UT_pred))/10000)
          nnet_MASI20_SW_SE <- sqrt((nnet_MASI20_SW_pred*(1 - nnet_MASI20_SW_pred))/10000)
          nnet_MASI20_OU_SE <- sqrt((nnet_MASI20_OU_pred*(1 - nnet_MASI20_OU_pred))/10000)
          
          nnet_MASI20_RT_95upper <- nnet_MASI20_RT_pred + 2*nnet_MASI20_RT_SE
          nnet_MASI20_RT_95lower <- nnet_MASI20_RT_pred - 2*nnet_MASI20_RT_SE
          nnet_MASI20_RT_95width <- nnet_MASI20_RT_95upper - nnet_MASI20_RT_95lower
          nnet_MASI20_UT_95upper <- nnet_MASI20_UT_pred + 2*nnet_MASI20_UT_SE
          nnet_MASI20_UT_95lower <- nnet_MASI20_UT_pred - 2*nnet_MASI20_UT_SE
          nnet_MASI20_UT_95width <- nnet_MASI20_UT_95upper - nnet_MASI20_UT_95lower
          nnet_MASI20_SW_95upper <- nnet_MASI20_SW_pred + 2*nnet_MASI20_SW_SE
          nnet_MASI20_SW_95lower <- nnet_MASI20_SW_pred - 2*nnet_MASI20_SW_SE
          nnet_MASI20_SW_95width <- nnet_MASI20_SW_95upper - nnet_MASI20_SW_95lower
          nnet_MASI20_OU_95upper <- nnet_MASI20_OU_pred + 2*nnet_MASI20_OU_SE
          nnet_MASI20_OU_95lower <- nnet_MASI20_OU_pred - 2*nnet_MASI20_OU_SE
          nnet_MASI20_OU_95width <- nnet_MASI20_OU_95upper - nnet_MASI20_OU_95lower
          
          nnet_MASI20_RT_coverge <- (nnet_MASI20_RT_95lower < RT_true) & (RT_true < nnet_MASI20_RT_95upper)
          nnet_MASI20_UT_coverge <- (nnet_MASI20_UT_95lower < UT_true) & (UT_true < nnet_MASI20_UT_95upper)
          nnet_MASI20_SW_coverge <- (nnet_MASI20_SW_95lower < SW_true) & (SW_true < nnet_MASI20_SW_95upper)
          nnet_MASI20_OU_coverge <- (nnet_MASI20_OU_95lower < OU_true) & (OU_true < nnet_MASI20_OU_95upper)
          
          list_nnet_MASI20_RT_pred <- c(list_nnet_MASI20_RT_pred, nnet_MASI20_RT_pred)
          list_nnet_MASI20_UT_pred <- c(list_nnet_MASI20_UT_pred, nnet_MASI20_UT_pred)
          list_nnet_MASI20_SW_pred <- c(list_nnet_MASI20_SW_pred, nnet_MASI20_SW_pred)
          list_nnet_MASI20_OU_pred <- c(list_nnet_MASI20_OU_pred, nnet_MASI20_OU_pred)
          list_nnet_MASI20_RT_SE <- c(list_nnet_MASI20_RT_SE, nnet_MASI20_RT_SE)
          list_nnet_MASI20_UT_SE <- c(list_nnet_MASI20_UT_SE, nnet_MASI20_UT_SE)
          list_nnet_MASI20_SW_SE <- c(list_nnet_MASI20_SW_SE, nnet_MASI20_SW_SE)
          list_nnet_MASI20_OU_SE <- c(list_nnet_MASI20_OU_SE, nnet_MASI20_OU_SE)
          list_nnet_MASI20_RT_95width <- c(list_nnet_MASI20_RT_95width, nnet_MASI20_RT_95width)
          list_nnet_MASI20_UT_95width <- c(list_nnet_MASI20_UT_95width, nnet_MASI20_UT_95width)
          list_nnet_MASI20_SW_95width <- c(list_nnet_MASI20_SW_95width, nnet_MASI20_SW_95width)
          list_nnet_MASI20_OU_95width <- c(list_nnet_MASI20_OU_95width, nnet_MASI20_OU_95width)
          list_nnet_MASI20_RT_coverge <- c(list_nnet_MASI20_RT_coverge, nnet_MASI20_RT_coverge)
          list_nnet_MASI20_UT_coverge <- c(list_nnet_MASI20_UT_coverge, nnet_MASI20_UT_coverge)
          list_nnet_MASI20_SW_coverge <- c(list_nnet_MASI20_SW_coverge, nnet_MASI20_SW_coverge)
          list_nnet_MASI20_OU_coverge <- c(list_nnet_MASI20_OU_coverge, nnet_MASI20_OU_coverge)
        }
      }
      
      #impute MA_5 
      {
        #model
        {
          set.seed(19)
          MASI_5_nnet_imp <- hotdeck(MA_5) 
          
          missing_SEX <- MASI_5_nnet_imp$SEX_imp
          missing_AGE <- MASI_5_nnet_imp$AGE_imp
          missing_Indication <- MASI_5_nnet_imp$Indication_imp
          missing_AntibioticClass <- MASI_5_nnet_imp$AntibioticClass_imp
          
          for(j in 1){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MASI_5_nnet_imp$SEX <- factor(MASI_5_nnet_imp$SEX, labels = levels(simulated$SEX))
              MASI_5_nnet_imp$AGE <- factor(MASI_5_nnet_imp$AGE, labels = levels(simulated$AGE))
              MASI_5_nnet_imp$Indication <- factor(MASI_5_nnet_imp$Indication, labels = levels(simulated$Indication))
              MASI_5_nnet_imp$AntibioticClass <- factor(MASI_5_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MASI_5_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MASI_5_nnet_imp[is.na(MASI_5_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MASI_5_nnet_imp$SEX <- as.numeric(MASI_5_nnet_imp$SEX)
              MASI_5_nnet_imp$SEX[missing_SEX] <- pred
              
              MASI_5_nnet_imp$AGE[missing_AGE] <- NA 
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MASI_5_nnet_imp[is.na(MASI_5_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MASI_5_nnet_imp$AGE <- as.numeric(MASI_5_nnet_imp$AGE)
              MASI_5_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MASI_5_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MASI_5_nnet_imp[!is.na(MASI_5_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MASI_5_nnet_imp[is.na(MASI_5_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MASI_5_nnet_imp$Indication <- as.numeric(MASI_5_nnet_imp$Indication)
              MASI_5_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
          }
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          nnet_MASI5_RT_pred <- prop.table(table(MASI_5_nnet_imp$Indication))[1]
          nnet_MASI5_UT_pred <- prop.table(table(MASI_5_nnet_imp$Indication))[2]
          nnet_MASI5_SW_pred <- prop.table(table(MASI_5_nnet_imp$Indication))[3]
          nnet_MASI5_OU_pred <- prop.table(table(MASI_5_nnet_imp$Indication))[4]
          
          nnet_MASI5_RT_SE <- sqrt((nnet_MASI5_RT_pred*(1 - nnet_MASI5_RT_pred))/10000)
          nnet_MASI5_UT_SE <- sqrt((nnet_MASI5_UT_pred*(1 - nnet_MASI5_UT_pred))/10000)
          nnet_MASI5_SW_SE <- sqrt((nnet_MASI5_SW_pred*(1 - nnet_MASI5_SW_pred))/10000)
          nnet_MASI5_OU_SE <- sqrt((nnet_MASI5_OU_pred*(1 - nnet_MASI5_OU_pred))/10000)
          
          nnet_MASI5_RT_95upper <- nnet_MASI5_RT_pred + 2*nnet_MASI5_RT_SE
          nnet_MASI5_RT_95lower <- nnet_MASI5_RT_pred - 2*nnet_MASI5_RT_SE
          nnet_MASI5_RT_95width <- nnet_MASI5_RT_95upper - nnet_MASI5_RT_95lower
          nnet_MASI5_UT_95upper <- nnet_MASI5_UT_pred + 2*nnet_MASI5_UT_SE
          nnet_MASI5_UT_95lower <- nnet_MASI5_UT_pred - 2*nnet_MASI5_UT_SE
          nnet_MASI5_UT_95width <- nnet_MASI5_UT_95upper - nnet_MASI5_UT_95lower
          nnet_MASI5_SW_95upper <- nnet_MASI5_SW_pred + 2*nnet_MASI5_SW_SE
          nnet_MASI5_SW_95lower <- nnet_MASI5_SW_pred - 2*nnet_MASI5_SW_SE
          nnet_MASI5_SW_95width <- nnet_MASI5_SW_95upper - nnet_MASI5_SW_95lower
          nnet_MASI5_OU_95upper <- nnet_MASI5_OU_pred + 2*nnet_MASI5_OU_SE
          nnet_MASI5_OU_95lower <- nnet_MASI5_OU_pred - 2*nnet_MASI5_OU_SE
          nnet_MASI5_OU_95width <- nnet_MASI5_OU_95upper - nnet_MASI5_OU_95lower
          
          nnet_MASI5_RT_coverge <- (nnet_MASI5_RT_95lower < RT_true) & (RT_true < nnet_MASI5_RT_95upper)
          nnet_MASI5_UT_coverge <- (nnet_MASI5_UT_95lower < UT_true) & (UT_true < nnet_MASI5_UT_95upper)
          nnet_MASI5_SW_coverge <- (nnet_MASI5_SW_95lower < SW_true) & (SW_true < nnet_MASI5_SW_95upper)
          nnet_MASI5_OU_coverge <- (nnet_MASI5_OU_95lower < OU_true) & (OU_true < nnet_MASI5_OU_95upper)
          
          list_nnet_MASI5_RT_pred <- c(list_nnet_MASI5_RT_pred, nnet_MASI5_RT_pred)
          list_nnet_MASI5_UT_pred <- c(list_nnet_MASI5_UT_pred, nnet_MASI5_UT_pred)
          list_nnet_MASI5_SW_pred <- c(list_nnet_MASI5_SW_pred, nnet_MASI5_SW_pred)
          list_nnet_MASI5_OU_pred <- c(list_nnet_MASI5_OU_pred, nnet_MASI5_OU_pred)
          list_nnet_MASI5_RT_SE <- c(list_nnet_MASI5_RT_SE, nnet_MASI5_RT_SE)
          list_nnet_MASI5_UT_SE <- c(list_nnet_MASI5_UT_SE, nnet_MASI5_UT_SE)
          list_nnet_MASI5_SW_SE <- c(list_nnet_MASI5_SW_SE, nnet_MASI5_SW_SE)
          list_nnet_MASI5_OU_SE <- c(list_nnet_MASI5_OU_SE, nnet_MASI5_OU_SE)
          list_nnet_MASI5_RT_95width <- c(list_nnet_MASI5_RT_95width, nnet_MASI5_RT_95width)
          list_nnet_MASI5_UT_95width <- c(list_nnet_MASI5_UT_95width, nnet_MASI5_UT_95width)
          list_nnet_MASI5_SW_95width <- c(list_nnet_MASI5_SW_95width, nnet_MASI5_SW_95width)
          list_nnet_MASI5_OU_95width <- c(list_nnet_MASI5_OU_95width, nnet_MASI5_OU_95width)
          list_nnet_MASI5_RT_coverge <- c(list_nnet_MASI5_RT_coverge, nnet_MASI5_RT_coverge)
          list_nnet_MASI5_UT_coverge <- c(list_nnet_MASI5_UT_coverge, nnet_MASI5_UT_coverge)
          list_nnet_MASI5_SW_coverge <- c(list_nnet_MASI5_SW_coverge, nnet_MASI5_SW_coverge)
          list_nnet_MASI5_OU_coverge <- c(list_nnet_MASI5_OU_coverge, nnet_MASI5_OU_coverge)
        }
      }
    }
    
    #mice multiple imputation
    {
      #impute UA_80
      {
        #model
        {
          md.pattern(UA_80, plot = FALSE)
          md.pairs(UA_80)
          UA_80_mice_plot <- aggr(UA_80,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_80),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_80$SEX <- factor(UA_80$SEX, labels = levels(simulated$SEX))
          UA_80$AGE <- factor(UA_80$AGE, labels = levels(simulated$AGE))
          UA_80$Indication <- factor(UA_80$Indication, labels = levels(simulated$Indication))
          UA_80$AntibioticClass <- factor(UA_80$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_80 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UAMI_80_mice_imp <- mice(UA_80, maxit = 10, m = 5, method = methods_UA_80, print = TRUE, seed = 19)
          summary(UAMI_80_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UAMI_80_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UAMI80_RT_pred_2 <- list()
          mice_UAMI80_UT_pred_2 <- list()
          mice_UAMI80_SW_pred_2 <- list()
          mice_UAMI80_OU_pred_2 <- list()
          mice_UAMI80_RT_SE_2 <- list()
          mice_UAMI80_UT_SE_2 <- list()
          mice_UAMI80_SW_SE_2 <- list()
          mice_UAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_UAMI80_RT_pred_1 <- prop.table(table(complete(UAMI_80_mice_imp,i)$Indication))[1]
            mice_UAMI80_RT_pred_2 <- c(mice_UAMI80_RT_pred_2, mice_UAMI80_RT_pred_1)
            mice_UAMI80_UT_pred_1 <- prop.table(table(complete(UAMI_80_mice_imp,i)$Indication))[2]
            mice_UAMI80_UT_pred_2 <- c(mice_UAMI80_UT_pred_2, mice_UAMI80_UT_pred_1)
            mice_UAMI80_SW_pred_1 <- prop.table(table(complete(UAMI_80_mice_imp,i)$Indication))[3]
            mice_UAMI80_SW_pred_2 <- c(mice_UAMI80_SW_pred_2, mice_UAMI80_SW_pred_1)
            mice_UAMI80_OU_pred_1 <- prop.table(table(complete(UAMI_80_mice_imp,i)$Indication))[4]
            mice_UAMI80_OU_pred_2 <- c(mice_UAMI80_OU_pred_2, mice_UAMI80_OU_pred_1)
            
            mice_UAMI80_RT_SE_1 <- sqrt((mice_UAMI80_RT_pred_1*(1 - mice_UAMI80_RT_pred_1))/10000)
            mice_UAMI80_RT_SE_2 <- c(mice_UAMI80_RT_SE_2, mice_UAMI80_RT_SE_1)
            mice_UAMI80_UT_SE_1 <- sqrt((mice_UAMI80_UT_pred_1*(1 - mice_UAMI80_UT_pred_1))/10000)
            mice_UAMI80_UT_SE_2 <- c(mice_UAMI80_UT_SE_2, mice_UAMI80_UT_SE_1)
            mice_UAMI80_SW_SE_1 <- sqrt((mice_UAMI80_SW_pred_1*(1 - mice_UAMI80_SW_pred_1))/10000)
            mice_UAMI80_SW_SE_2 <- c(mice_UAMI80_SW_SE_2, mice_UAMI80_SW_SE_1)
            mice_UAMI80_OU_SE_1 <- sqrt((mice_UAMI80_OU_pred_1*(1 - mice_UAMI80_OU_pred_1))/10000)
            mice_UAMI80_OU_SE_2 <- c(mice_UAMI80_OU_SE_2, mice_UAMI80_OU_SE_1)
          }
          
          mice_UAMI80_RT_pred <- mean(sapply(mice_UAMI80_RT_pred_2,sum))
          mice_UAMI80_RT_SE <- function_RR(mice_UAMI80_RT_pred_2, mice_UAMI80_RT_SE_2)
          mice_UAMI80_UT_pred <- mean(sapply(mice_UAMI80_UT_pred_2,sum))
          mice_UAMI80_UT_SE <- function_RR(mice_UAMI80_UT_pred_2, mice_UAMI80_UT_SE_2)
          mice_UAMI80_SW_pred <- mean(sapply(mice_UAMI80_SW_pred_2,sum))
          mice_UAMI80_SW_SE <- function_RR(mice_UAMI80_SW_pred_2, mice_UAMI80_SW_SE_2)
          mice_UAMI80_OU_pred <- mean(sapply(mice_UAMI80_OU_pred_2,sum))
          mice_UAMI80_OU_SE <- function_RR(mice_UAMI80_OU_pred_2, mice_UAMI80_OU_SE_2)
          
          
          mice_UAMI80_RT_95upper <- mice_UAMI80_RT_pred + 2*mice_UAMI80_RT_SE
          mice_UAMI80_RT_95lower <- mice_UAMI80_RT_pred - 2*mice_UAMI80_RT_SE
          mice_UAMI80_RT_95width <- mice_UAMI80_RT_95upper - mice_UAMI80_RT_95lower
          mice_UAMI80_UT_95upper <- mice_UAMI80_UT_pred + 2*mice_UAMI80_UT_SE
          mice_UAMI80_UT_95lower <- mice_UAMI80_UT_pred - 2*mice_UAMI80_UT_SE
          mice_UAMI80_UT_95width <- mice_UAMI80_UT_95upper - mice_UAMI80_UT_95lower
          mice_UAMI80_SW_95upper <- mice_UAMI80_SW_pred + 2*mice_UAMI80_SW_SE
          mice_UAMI80_SW_95lower <- mice_UAMI80_SW_pred - 2*mice_UAMI80_SW_SE
          mice_UAMI80_SW_95width <- mice_UAMI80_SW_95upper - mice_UAMI80_SW_95lower
          mice_UAMI80_OU_95upper <- mice_UAMI80_OU_pred + 2*mice_UAMI80_OU_SE
          mice_UAMI80_OU_95lower <- mice_UAMI80_OU_pred - 2*mice_UAMI80_OU_SE
          mice_UAMI80_OU_95width <- mice_UAMI80_OU_95upper - mice_UAMI80_OU_95lower
          
          mice_UAMI80_RT_coverge <- (mice_UAMI80_RT_95lower < RT_true) & (RT_true < mice_UAMI80_RT_95upper)
          mice_UAMI80_UT_coverge <- (mice_UAMI80_UT_95lower < RT_true) & (UT_true < mice_UAMI80_UT_95upper)
          mice_UAMI80_SW_coverge <- (mice_UAMI80_SW_95lower < RT_true) & (SW_true < mice_UAMI80_SW_95upper)
          mice_UAMI80_OU_coverge <- (mice_UAMI80_OU_95lower < RT_true) & (OU_true < mice_UAMI80_OU_95upper)
          
          list_mice_UAMI80_RT_pred <- c(list_mice_UAMI80_RT_pred, mice_UAMI80_RT_pred)
          list_mice_UAMI80_UT_pred <- c(list_mice_UAMI80_UT_pred, mice_UAMI80_UT_pred)
          list_mice_UAMI80_SW_pred <- c(list_mice_UAMI80_SW_pred, mice_UAMI80_SW_pred)
          list_mice_UAMI80_OU_pred <- c(list_mice_UAMI80_OU_pred, mice_UAMI80_OU_pred)
          list_mice_UAMI80_RT_SE <- c(list_mice_UAMI80_RT_SE, mice_UAMI80_RT_SE)
          list_mice_UAMI80_UT_SE <- c(list_mice_UAMI80_UT_SE, mice_UAMI80_UT_SE)
          list_mice_UAMI80_SW_SE <- c(list_mice_UAMI80_SW_SE, mice_UAMI80_SW_SE)
          list_mice_UAMI80_OU_SE <- c(list_mice_UAMI80_OU_SE, mice_UAMI80_OU_SE)
          list_mice_UAMI80_RT_95width <- c(list_mice_UAMI80_RT_95width, mice_UAMI80_RT_95width)
          list_mice_UAMI80_UT_95width <- c(list_mice_UAMI80_UT_95width, mice_UAMI80_UT_95width)
          list_mice_UAMI80_SW_95width <- c(list_mice_UAMI80_SW_95width, mice_UAMI80_SW_95width)
          list_mice_UAMI80_OU_95width <- c(list_mice_UAMI80_OU_95width, mice_UAMI80_OU_95width)
          list_mice_UAMI80_RT_coverge <- c(list_mice_UAMI80_RT_coverge, mice_UAMI80_RT_coverge)
          list_mice_UAMI80_UT_coverge <- c(list_mice_UAMI80_UT_coverge, mice_UAMI80_UT_coverge)
          list_mice_UAMI80_SW_coverge <- c(list_mice_UAMI80_SW_coverge, mice_UAMI80_SW_coverge)
          list_mice_UAMI80_OU_coverge <- c(list_mice_UAMI80_OU_coverge, mice_UAMI80_OU_coverge)
        }
      }  
      
      #impute UA_50
      {
        #model
        {
          md.pattern(UA_50, plot = FALSE)
          md.pairs(UA_50)
          UA_50_mice_plot <- aggr(UA_50,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_50),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_50$SEX <- factor(UA_50$SEX, labels = levels(simulated$SEX))
          UA_50$AGE <- factor(UA_50$AGE, labels = levels(simulated$AGE))
          UA_50$Indication <- factor(UA_50$Indication, labels = levels(simulated$Indication))
          UA_50$AntibioticClass <- factor(UA_50$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_50 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UAMI_50_mice_imp <- mice(UA_50, maxit = 10, m = 5, method = methods_UA_50, print = TRUE, seed = 19)
          summary(UAMI_50_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UAMI_50_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UAMI50_RT_pred_2 <- list()
          mice_UAMI50_UT_pred_2 <- list()
          mice_UAMI50_SW_pred_2 <- list()
          mice_UAMI50_OU_pred_2 <- list()
          mice_UAMI50_RT_SE_2 <- list()
          mice_UAMI50_UT_SE_2 <- list()
          mice_UAMI50_SW_SE_2 <- list()
          mice_UAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_UAMI50_RT_pred_1 <- prop.table(table(complete(UAMI_50_mice_imp,i)$Indication))[1]
            mice_UAMI50_RT_pred_2 <- c(mice_UAMI50_RT_pred_2, mice_UAMI50_RT_pred_1)
            mice_UAMI50_UT_pred_1 <- prop.table(table(complete(UAMI_50_mice_imp,i)$Indication))[2]
            mice_UAMI50_UT_pred_2 <- c(mice_UAMI50_UT_pred_2, mice_UAMI50_UT_pred_1)
            mice_UAMI50_SW_pred_1 <- prop.table(table(complete(UAMI_50_mice_imp,i)$Indication))[3]
            mice_UAMI50_SW_pred_2 <- c(mice_UAMI50_SW_pred_2, mice_UAMI50_SW_pred_1)
            mice_UAMI50_OU_pred_1 <- prop.table(table(complete(UAMI_50_mice_imp,i)$Indication))[4]
            mice_UAMI50_OU_pred_2 <- c(mice_UAMI50_OU_pred_2, mice_UAMI50_OU_pred_1)
            
            mice_UAMI50_RT_SE_1 <- sqrt((mice_UAMI50_RT_pred_1*(1 - mice_UAMI50_RT_pred_1))/10000)
            mice_UAMI50_RT_SE_2 <- c(mice_UAMI50_RT_SE_2, mice_UAMI50_RT_SE_1)
            mice_UAMI50_UT_SE_1 <- sqrt((mice_UAMI50_UT_pred_1*(1 - mice_UAMI50_UT_pred_1))/10000)
            mice_UAMI50_UT_SE_2 <- c(mice_UAMI50_UT_SE_2, mice_UAMI50_UT_SE_1)
            mice_UAMI50_SW_SE_1 <- sqrt((mice_UAMI50_SW_pred_1*(1 - mice_UAMI50_SW_pred_1))/10000)
            mice_UAMI50_SW_SE_2 <- c(mice_UAMI50_SW_SE_2, mice_UAMI50_SW_SE_1)
            mice_UAMI50_OU_SE_1 <- sqrt((mice_UAMI50_OU_pred_1*(1 - mice_UAMI50_OU_pred_1))/10000)
            mice_UAMI50_OU_SE_2 <- c(mice_UAMI50_OU_SE_2, mice_UAMI50_OU_SE_1)
          }
          
          mice_UAMI50_RT_pred <- mean(sapply(mice_UAMI50_RT_pred_2,sum))
          mice_UAMI50_RT_SE <- function_RR(mice_UAMI50_RT_pred_2, mice_UAMI50_RT_SE_2)
          mice_UAMI50_UT_pred <- mean(sapply(mice_UAMI50_UT_pred_2,sum))
          mice_UAMI50_UT_SE <- function_RR(mice_UAMI50_UT_pred_2, mice_UAMI50_UT_SE_2)
          mice_UAMI50_SW_pred <- mean(sapply(mice_UAMI50_SW_pred_2,sum))
          mice_UAMI50_SW_SE <- function_RR(mice_UAMI50_SW_pred_2, mice_UAMI50_SW_SE_2)
          mice_UAMI50_OU_pred <- mean(sapply(mice_UAMI50_OU_pred_2,sum))
          mice_UAMI50_OU_SE <- function_RR(mice_UAMI50_OU_pred_2, mice_UAMI50_OU_SE_2)
          
          
          mice_UAMI50_RT_95upper <- mice_UAMI50_RT_pred + 2*mice_UAMI50_RT_SE
          mice_UAMI50_RT_95lower <- mice_UAMI50_RT_pred - 2*mice_UAMI50_RT_SE
          mice_UAMI50_RT_95width <- mice_UAMI50_RT_95upper - mice_UAMI50_RT_95lower
          mice_UAMI50_UT_95upper <- mice_UAMI50_UT_pred + 2*mice_UAMI50_UT_SE
          mice_UAMI50_UT_95lower <- mice_UAMI50_UT_pred - 2*mice_UAMI50_UT_SE
          mice_UAMI50_UT_95width <- mice_UAMI50_UT_95upper - mice_UAMI50_UT_95lower
          mice_UAMI50_SW_95upper <- mice_UAMI50_SW_pred + 2*mice_UAMI50_SW_SE
          mice_UAMI50_SW_95lower <- mice_UAMI50_SW_pred - 2*mice_UAMI50_SW_SE
          mice_UAMI50_SW_95width <- mice_UAMI50_SW_95upper - mice_UAMI50_SW_95lower
          mice_UAMI50_OU_95upper <- mice_UAMI50_OU_pred + 2*mice_UAMI50_OU_SE
          mice_UAMI50_OU_95lower <- mice_UAMI50_OU_pred - 2*mice_UAMI50_OU_SE
          mice_UAMI50_OU_95width <- mice_UAMI50_OU_95upper - mice_UAMI50_OU_95lower
          
          mice_UAMI50_RT_coverge <- (mice_UAMI50_RT_95lower < RT_true) & (RT_true < mice_UAMI50_RT_95upper)
          mice_UAMI50_UT_coverge <- (mice_UAMI50_UT_95lower < RT_true) & (UT_true < mice_UAMI50_UT_95upper)
          mice_UAMI50_SW_coverge <- (mice_UAMI50_SW_95lower < RT_true) & (SW_true < mice_UAMI50_SW_95upper)
          mice_UAMI50_OU_coverge <- (mice_UAMI50_OU_95lower < RT_true) & (OU_true < mice_UAMI50_OU_95upper)
          
          list_mice_UAMI50_RT_pred <- c(list_mice_UAMI50_RT_pred, mice_UAMI50_RT_pred)
          list_mice_UAMI50_UT_pred <- c(list_mice_UAMI50_UT_pred, mice_UAMI50_UT_pred)
          list_mice_UAMI50_SW_pred <- c(list_mice_UAMI50_SW_pred, mice_UAMI50_SW_pred)
          list_mice_UAMI50_OU_pred <- c(list_mice_UAMI50_OU_pred, mice_UAMI50_OU_pred)
          list_mice_UAMI50_RT_SE <- c(list_mice_UAMI50_RT_SE, mice_UAMI50_RT_SE)
          list_mice_UAMI50_UT_SE <- c(list_mice_UAMI50_UT_SE, mice_UAMI50_UT_SE)
          list_mice_UAMI50_SW_SE <- c(list_mice_UAMI50_SW_SE, mice_UAMI50_SW_SE)
          list_mice_UAMI50_OU_SE <- c(list_mice_UAMI50_OU_SE, mice_UAMI50_OU_SE)
          list_mice_UAMI50_RT_95width <- c(list_mice_UAMI50_RT_95width, mice_UAMI50_RT_95width)
          list_mice_UAMI50_UT_95width <- c(list_mice_UAMI50_UT_95width, mice_UAMI50_UT_95width)
          list_mice_UAMI50_SW_95width <- c(list_mice_UAMI50_SW_95width, mice_UAMI50_SW_95width)
          list_mice_UAMI50_OU_95width <- c(list_mice_UAMI50_OU_95width, mice_UAMI50_OU_95width)
          list_mice_UAMI50_RT_coverge <- c(list_mice_UAMI50_RT_coverge, mice_UAMI50_RT_coverge)
          list_mice_UAMI50_UT_coverge <- c(list_mice_UAMI50_UT_coverge, mice_UAMI50_UT_coverge)
          list_mice_UAMI50_SW_coverge <- c(list_mice_UAMI50_SW_coverge, mice_UAMI50_SW_coverge)
          list_mice_UAMI50_OU_coverge <- c(list_mice_UAMI50_OU_coverge, mice_UAMI50_OU_coverge)
        }
      }
      
      #impute UA_20
      {
        #model
        {
          md.pattern(UA_20, plot = FALSE)
          md.pairs(UA_20)
          UA_20_mice_plot <- aggr(UA_20,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_20),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_20$SEX <- factor(UA_20$SEX, labels = levels(simulated$SEX))
          UA_20$AGE <- factor(UA_20$AGE, labels = levels(simulated$AGE))
          UA_20$Indication <- factor(UA_20$Indication, labels = levels(simulated$Indication))
          UA_20$AntibioticClass <- factor(UA_20$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_20 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UAMI_20_mice_imp <- mice(UA_20, maxit = 10, m = 5, method = methods_UA_20, print = TRUE, seed = 19)
          summary(UAMI_20_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UAMI_20_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UAMI20_RT_pred_2 <- list()
          mice_UAMI20_UT_pred_2 <- list()
          mice_UAMI20_SW_pred_2 <- list()
          mice_UAMI20_OU_pred_2 <- list()
          mice_UAMI20_RT_SE_2 <- list()
          mice_UAMI20_UT_SE_2 <- list()
          mice_UAMI20_SW_SE_2 <- list()
          mice_UAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_UAMI20_RT_pred_1 <- prop.table(table(complete(UAMI_20_mice_imp,i)$Indication))[1]
            mice_UAMI20_RT_pred_2 <- c(mice_UAMI20_RT_pred_2, mice_UAMI20_RT_pred_1)
            mice_UAMI20_UT_pred_1 <- prop.table(table(complete(UAMI_20_mice_imp,i)$Indication))[2]
            mice_UAMI20_UT_pred_2 <- c(mice_UAMI20_UT_pred_2, mice_UAMI20_UT_pred_1)
            mice_UAMI20_SW_pred_1 <- prop.table(table(complete(UAMI_20_mice_imp,i)$Indication))[3]
            mice_UAMI20_SW_pred_2 <- c(mice_UAMI20_SW_pred_2, mice_UAMI20_SW_pred_1)
            mice_UAMI20_OU_pred_1 <- prop.table(table(complete(UAMI_20_mice_imp,i)$Indication))[4]
            mice_UAMI20_OU_pred_2 <- c(mice_UAMI20_OU_pred_2, mice_UAMI20_OU_pred_1)
            
            mice_UAMI20_RT_SE_1 <- sqrt((mice_UAMI20_RT_pred_1*(1 - mice_UAMI20_RT_pred_1))/10000)
            mice_UAMI20_RT_SE_2 <- c(mice_UAMI20_RT_SE_2, mice_UAMI20_RT_SE_1)
            mice_UAMI20_UT_SE_1 <- sqrt((mice_UAMI20_UT_pred_1*(1 - mice_UAMI20_UT_pred_1))/10000)
            mice_UAMI20_UT_SE_2 <- c(mice_UAMI20_UT_SE_2, mice_UAMI20_UT_SE_1)
            mice_UAMI20_SW_SE_1 <- sqrt((mice_UAMI20_SW_pred_1*(1 - mice_UAMI20_SW_pred_1))/10000)
            mice_UAMI20_SW_SE_2 <- c(mice_UAMI20_SW_SE_2, mice_UAMI20_SW_SE_1)
            mice_UAMI20_OU_SE_1 <- sqrt((mice_UAMI20_OU_pred_1*(1 - mice_UAMI20_OU_pred_1))/10000)
            mice_UAMI20_OU_SE_2 <- c(mice_UAMI20_OU_SE_2, mice_UAMI20_OU_SE_1)
          }
          
          mice_UAMI20_RT_pred <- mean(sapply(mice_UAMI20_RT_pred_2,sum))
          mice_UAMI20_RT_SE <- function_RR(mice_UAMI20_RT_pred_2, mice_UAMI20_RT_SE_2)
          mice_UAMI20_UT_pred <- mean(sapply(mice_UAMI20_UT_pred_2,sum))
          mice_UAMI20_UT_SE <- function_RR(mice_UAMI20_UT_pred_2, mice_UAMI20_UT_SE_2)
          mice_UAMI20_SW_pred <- mean(sapply(mice_UAMI20_SW_pred_2,sum))
          mice_UAMI20_SW_SE <- function_RR(mice_UAMI20_SW_pred_2, mice_UAMI20_SW_SE_2)
          mice_UAMI20_OU_pred <- mean(sapply(mice_UAMI20_OU_pred_2,sum))
          mice_UAMI20_OU_SE <- function_RR(mice_UAMI20_OU_pred_2, mice_UAMI20_OU_SE_2)
          
          
          mice_UAMI20_RT_95upper <- mice_UAMI20_RT_pred + 2*mice_UAMI20_RT_SE
          mice_UAMI20_RT_95lower <- mice_UAMI20_RT_pred - 2*mice_UAMI20_RT_SE
          mice_UAMI20_RT_95width <- mice_UAMI20_RT_95upper - mice_UAMI20_RT_95lower
          mice_UAMI20_UT_95upper <- mice_UAMI20_UT_pred + 2*mice_UAMI20_UT_SE
          mice_UAMI20_UT_95lower <- mice_UAMI20_UT_pred - 2*mice_UAMI20_UT_SE
          mice_UAMI20_UT_95width <- mice_UAMI20_UT_95upper - mice_UAMI20_UT_95lower
          mice_UAMI20_SW_95upper <- mice_UAMI20_SW_pred + 2*mice_UAMI20_SW_SE
          mice_UAMI20_SW_95lower <- mice_UAMI20_SW_pred - 2*mice_UAMI20_SW_SE
          mice_UAMI20_SW_95width <- mice_UAMI20_SW_95upper - mice_UAMI20_SW_95lower
          mice_UAMI20_OU_95upper <- mice_UAMI20_OU_pred + 2*mice_UAMI20_OU_SE
          mice_UAMI20_OU_95lower <- mice_UAMI20_OU_pred - 2*mice_UAMI20_OU_SE
          mice_UAMI20_OU_95width <- mice_UAMI20_OU_95upper - mice_UAMI20_OU_95lower
          
          mice_UAMI20_RT_coverge <- (mice_UAMI20_RT_95lower < RT_true) & (RT_true < mice_UAMI20_RT_95upper)
          mice_UAMI20_UT_coverge <- (mice_UAMI20_UT_95lower < RT_true) & (UT_true < mice_UAMI20_UT_95upper)
          mice_UAMI20_SW_coverge <- (mice_UAMI20_SW_95lower < RT_true) & (SW_true < mice_UAMI20_SW_95upper)
          mice_UAMI20_OU_coverge <- (mice_UAMI20_OU_95lower < RT_true) & (OU_true < mice_UAMI20_OU_95upper)
          
          list_mice_UAMI20_RT_pred <- c(list_mice_UAMI20_RT_pred, mice_UAMI20_RT_pred)
          list_mice_UAMI20_UT_pred <- c(list_mice_UAMI20_UT_pred, mice_UAMI20_UT_pred)
          list_mice_UAMI20_SW_pred <- c(list_mice_UAMI20_SW_pred, mice_UAMI20_SW_pred)
          list_mice_UAMI20_OU_pred <- c(list_mice_UAMI20_OU_pred, mice_UAMI20_OU_pred)
          list_mice_UAMI20_RT_SE <- c(list_mice_UAMI20_RT_SE, mice_UAMI20_RT_SE)
          list_mice_UAMI20_UT_SE <- c(list_mice_UAMI20_UT_SE, mice_UAMI20_UT_SE)
          list_mice_UAMI20_SW_SE <- c(list_mice_UAMI20_SW_SE, mice_UAMI20_SW_SE)
          list_mice_UAMI20_OU_SE <- c(list_mice_UAMI20_OU_SE, mice_UAMI20_OU_SE)
          list_mice_UAMI20_RT_95width <- c(list_mice_UAMI20_RT_95width, mice_UAMI20_RT_95width)
          list_mice_UAMI20_UT_95width <- c(list_mice_UAMI20_UT_95width, mice_UAMI20_UT_95width)
          list_mice_UAMI20_SW_95width <- c(list_mice_UAMI20_SW_95width, mice_UAMI20_SW_95width)
          list_mice_UAMI20_OU_95width <- c(list_mice_UAMI20_OU_95width, mice_UAMI20_OU_95width)
          list_mice_UAMI20_RT_coverge <- c(list_mice_UAMI20_RT_coverge, mice_UAMI20_RT_coverge)
          list_mice_UAMI20_UT_coverge <- c(list_mice_UAMI20_UT_coverge, mice_UAMI20_UT_coverge)
          list_mice_UAMI20_SW_coverge <- c(list_mice_UAMI20_SW_coverge, mice_UAMI20_SW_coverge)
          list_mice_UAMI20_OU_coverge <- c(list_mice_UAMI20_OU_coverge, mice_UAMI20_OU_coverge)
        }
      }
      
      #impute UA_5
      {
        #model
        {
          md.pattern(UA_5, plot = FALSE)
          md.pairs(UA_5)
          UA_5_mice_plot <- aggr(UA_5,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(UA_5),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          UA_5$SEX <- factor(UA_5$SEX, labels = levels(simulated$SEX))
          UA_5$AGE <- factor(UA_5$AGE, labels = levels(simulated$AGE))
          UA_5$Indication <- factor(UA_5$Indication, labels = levels(simulated$Indication))
          UA_5$AntibioticClass <- factor(UA_5$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_UA_5 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          UAMI_5_mice_imp <- mice(UA_5, maxit = 10, m = 5, method = methods_UA_5, print = TRUE, seed = 19)
          summary(UAMI_5_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(UAMI_5_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_UAMI5_RT_pred_2 <- list()
          mice_UAMI5_UT_pred_2 <- list()
          mice_UAMI5_SW_pred_2 <- list()
          mice_UAMI5_OU_pred_2 <- list()
          mice_UAMI5_RT_SE_2 <- list()
          mice_UAMI5_UT_SE_2 <- list()
          mice_UAMI5_SW_SE_2 <- list()
          mice_UAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_UAMI5_RT_pred_1 <- prop.table(table(complete(UAMI_5_mice_imp,i)$Indication))[1]
            mice_UAMI5_RT_pred_2 <- c(mice_UAMI5_RT_pred_2, mice_UAMI5_RT_pred_1)
            mice_UAMI5_UT_pred_1 <- prop.table(table(complete(UAMI_5_mice_imp,i)$Indication))[2]
            mice_UAMI5_UT_pred_2 <- c(mice_UAMI5_UT_pred_2, mice_UAMI5_UT_pred_1)
            mice_UAMI5_SW_pred_1 <- prop.table(table(complete(UAMI_5_mice_imp,i)$Indication))[3]
            mice_UAMI5_SW_pred_2 <- c(mice_UAMI5_SW_pred_2, mice_UAMI5_SW_pred_1)
            mice_UAMI5_OU_pred_1 <- prop.table(table(complete(UAMI_5_mice_imp,i)$Indication))[4]
            mice_UAMI5_OU_pred_2 <- c(mice_UAMI5_OU_pred_2, mice_UAMI5_OU_pred_1)
            
            mice_UAMI5_RT_SE_1 <- sqrt((mice_UAMI5_RT_pred_1*(1 - mice_UAMI5_RT_pred_1))/10000)
            mice_UAMI5_RT_SE_2 <- c(mice_UAMI5_RT_SE_2, mice_UAMI5_RT_SE_1)
            mice_UAMI5_UT_SE_1 <- sqrt((mice_UAMI5_UT_pred_1*(1 - mice_UAMI5_UT_pred_1))/10000)
            mice_UAMI5_UT_SE_2 <- c(mice_UAMI5_UT_SE_2, mice_UAMI5_UT_SE_1)
            mice_UAMI5_SW_SE_1 <- sqrt((mice_UAMI5_SW_pred_1*(1 - mice_UAMI5_SW_pred_1))/10000)
            mice_UAMI5_SW_SE_2 <- c(mice_UAMI5_SW_SE_2, mice_UAMI5_SW_SE_1)
            mice_UAMI5_OU_SE_1 <- sqrt((mice_UAMI5_OU_pred_1*(1 - mice_UAMI5_OU_pred_1))/10000)
            mice_UAMI5_OU_SE_2 <- c(mice_UAMI5_OU_SE_2, mice_UAMI5_OU_SE_1)
          }
          
          mice_UAMI5_RT_pred <- mean(sapply(mice_UAMI5_RT_pred_2,sum))
          mice_UAMI5_RT_SE <- function_RR(mice_UAMI5_RT_pred_2, mice_UAMI5_RT_SE_2)
          mice_UAMI5_UT_pred <- mean(sapply(mice_UAMI5_UT_pred_2,sum))
          mice_UAMI5_UT_SE <- function_RR(mice_UAMI5_UT_pred_2, mice_UAMI5_UT_SE_2)
          mice_UAMI5_SW_pred <- mean(sapply(mice_UAMI5_SW_pred_2,sum))
          mice_UAMI5_SW_SE <- function_RR(mice_UAMI5_SW_pred_2, mice_UAMI5_SW_SE_2)
          mice_UAMI5_OU_pred <- mean(sapply(mice_UAMI5_OU_pred_2,sum))
          mice_UAMI5_OU_SE <- function_RR(mice_UAMI5_OU_pred_2, mice_UAMI5_OU_SE_2)
          
          
          mice_UAMI5_RT_95upper <- mice_UAMI5_RT_pred + 2*mice_UAMI5_RT_SE
          mice_UAMI5_RT_95lower <- mice_UAMI5_RT_pred - 2*mice_UAMI5_RT_SE
          mice_UAMI5_RT_95width <- mice_UAMI5_RT_95upper - mice_UAMI5_RT_95lower
          mice_UAMI5_UT_95upper <- mice_UAMI5_UT_pred + 2*mice_UAMI5_UT_SE
          mice_UAMI5_UT_95lower <- mice_UAMI5_UT_pred - 2*mice_UAMI5_UT_SE
          mice_UAMI5_UT_95width <- mice_UAMI5_UT_95upper - mice_UAMI5_UT_95lower
          mice_UAMI5_SW_95upper <- mice_UAMI5_SW_pred + 2*mice_UAMI5_SW_SE
          mice_UAMI5_SW_95lower <- mice_UAMI5_SW_pred - 2*mice_UAMI5_SW_SE
          mice_UAMI5_SW_95width <- mice_UAMI5_SW_95upper - mice_UAMI5_SW_95lower
          mice_UAMI5_OU_95upper <- mice_UAMI5_OU_pred + 2*mice_UAMI5_OU_SE
          mice_UAMI5_OU_95lower <- mice_UAMI5_OU_pred - 2*mice_UAMI5_OU_SE
          mice_UAMI5_OU_95width <- mice_UAMI5_OU_95upper - mice_UAMI5_OU_95lower
          
          mice_UAMI5_RT_coverge <- (mice_UAMI5_RT_95lower < RT_true) & (RT_true < mice_UAMI5_RT_95upper)
          mice_UAMI5_UT_coverge <- (mice_UAMI5_UT_95lower < RT_true) & (UT_true < mice_UAMI5_UT_95upper)
          mice_UAMI5_SW_coverge <- (mice_UAMI5_SW_95lower < RT_true) & (SW_true < mice_UAMI5_SW_95upper)
          mice_UAMI5_OU_coverge <- (mice_UAMI5_OU_95lower < RT_true) & (OU_true < mice_UAMI5_OU_95upper)
          
          list_mice_UAMI5_RT_pred <- c(list_mice_UAMI5_RT_pred, mice_UAMI5_RT_pred)
          list_mice_UAMI5_UT_pred <- c(list_mice_UAMI5_UT_pred, mice_UAMI5_UT_pred)
          list_mice_UAMI5_SW_pred <- c(list_mice_UAMI5_SW_pred, mice_UAMI5_SW_pred)
          list_mice_UAMI5_OU_pred <- c(list_mice_UAMI5_OU_pred, mice_UAMI5_OU_pred)
          list_mice_UAMI5_RT_SE <- c(list_mice_UAMI5_RT_SE, mice_UAMI5_RT_SE)
          list_mice_UAMI5_UT_SE <- c(list_mice_UAMI5_UT_SE, mice_UAMI5_UT_SE)
          list_mice_UAMI5_SW_SE <- c(list_mice_UAMI5_SW_SE, mice_UAMI5_SW_SE)
          list_mice_UAMI5_OU_SE <- c(list_mice_UAMI5_OU_SE, mice_UAMI5_OU_SE)
          list_mice_UAMI5_RT_95width <- c(list_mice_UAMI5_RT_95width, mice_UAMI5_RT_95width)
          list_mice_UAMI5_UT_95width <- c(list_mice_UAMI5_UT_95width, mice_UAMI5_UT_95width)
          list_mice_UAMI5_SW_95width <- c(list_mice_UAMI5_SW_95width, mice_UAMI5_SW_95width)
          list_mice_UAMI5_OU_95width <- c(list_mice_UAMI5_OU_95width, mice_UAMI5_OU_95width)
          list_mice_UAMI5_RT_coverge <- c(list_mice_UAMI5_RT_coverge, mice_UAMI5_RT_coverge)
          list_mice_UAMI5_UT_coverge <- c(list_mice_UAMI5_UT_coverge, mice_UAMI5_UT_coverge)
          list_mice_UAMI5_SW_coverge <- c(list_mice_UAMI5_SW_coverge, mice_UAMI5_SW_coverge)
          list_mice_UAMI5_OU_coverge <- c(list_mice_UAMI5_OU_coverge, mice_UAMI5_OU_coverge)
        }
      }
      
      #impute MA_80
      {
        #model
        {
          md.pattern(MA_80, plot = FALSE)
          md.pairs(MA_80)
          MA_80_mice_plot <- aggr(MA_80,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_80),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_80$SEX <- factor(MA_80$SEX, labels = levels(simulated$SEX))
          MA_80$AGE <- factor(MA_80$AGE, labels = levels(simulated$AGE))
          MA_80$Indication <- factor(MA_80$Indication, labels = levels(simulated$Indication))
          MA_80$AntibioticClass <- factor(MA_80$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_80 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MAMI_80_mice_imp <- mice(MA_80, maxit = 10, m = 5, method = methods_MA_80, print = TRUE, seed = 19)
          summary(MAMI_80_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MAMI_80_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MAMI80_RT_pred_2 <- list()
          mice_MAMI80_UT_pred_2 <- list()
          mice_MAMI80_SW_pred_2 <- list()
          mice_MAMI80_OU_pred_2 <- list()
          mice_MAMI80_RT_SE_2 <- list()
          mice_MAMI80_UT_SE_2 <- list()
          mice_MAMI80_SW_SE_2 <- list()
          mice_MAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_MAMI80_RT_pred_1 <- prop.table(table(complete(MAMI_80_mice_imp,i)$Indication))[1]
            mice_MAMI80_RT_pred_2 <- c(mice_MAMI80_RT_pred_2, mice_MAMI80_RT_pred_1)
            mice_MAMI80_UT_pred_1 <- prop.table(table(complete(MAMI_80_mice_imp,i)$Indication))[2]
            mice_MAMI80_UT_pred_2 <- c(mice_MAMI80_UT_pred_2, mice_MAMI80_UT_pred_1)
            mice_MAMI80_SW_pred_1 <- prop.table(table(complete(MAMI_80_mice_imp,i)$Indication))[3]
            mice_MAMI80_SW_pred_2 <- c(mice_MAMI80_SW_pred_2, mice_MAMI80_SW_pred_1)
            mice_MAMI80_OU_pred_1 <- prop.table(table(complete(MAMI_80_mice_imp,i)$Indication))[4]
            mice_MAMI80_OU_pred_2 <- c(mice_MAMI80_OU_pred_2, mice_MAMI80_OU_pred_1)
            
            mice_MAMI80_RT_SE_1 <- sqrt((mice_MAMI80_RT_pred_1*(1 - mice_MAMI80_RT_pred_1))/10000)
            mice_MAMI80_RT_SE_2 <- c(mice_MAMI80_RT_SE_2, mice_MAMI80_RT_SE_1)
            mice_MAMI80_UT_SE_1 <- sqrt((mice_MAMI80_UT_pred_1*(1 - mice_MAMI80_UT_pred_1))/10000)
            mice_MAMI80_UT_SE_2 <- c(mice_MAMI80_UT_SE_2, mice_MAMI80_UT_SE_1)
            mice_MAMI80_SW_SE_1 <- sqrt((mice_MAMI80_SW_pred_1*(1 - mice_MAMI80_SW_pred_1))/10000)
            mice_MAMI80_SW_SE_2 <- c(mice_MAMI80_SW_SE_2, mice_MAMI80_SW_SE_1)
            mice_MAMI80_OU_SE_1 <- sqrt((mice_MAMI80_OU_pred_1*(1 - mice_MAMI80_OU_pred_1))/10000)
            mice_MAMI80_OU_SE_2 <- c(mice_MAMI80_OU_SE_2, mice_MAMI80_OU_SE_1)
          }
          
          mice_MAMI80_RT_pred <- mean(sapply(mice_MAMI80_RT_pred_2,sum))
          mice_MAMI80_RT_SE <- function_RR(mice_MAMI80_RT_pred_2, mice_MAMI80_RT_SE_2)
          mice_MAMI80_UT_pred <- mean(sapply(mice_MAMI80_UT_pred_2,sum))
          mice_MAMI80_UT_SE <- function_RR(mice_MAMI80_UT_pred_2, mice_MAMI80_UT_SE_2)
          mice_MAMI80_SW_pred <- mean(sapply(mice_MAMI80_SW_pred_2,sum))
          mice_MAMI80_SW_SE <- function_RR(mice_MAMI80_SW_pred_2, mice_MAMI80_SW_SE_2)
          mice_MAMI80_OU_pred <- mean(sapply(mice_MAMI80_OU_pred_2,sum))
          mice_MAMI80_OU_SE <- function_RR(mice_MAMI80_OU_pred_2, mice_MAMI80_OU_SE_2)
          
          
          mice_MAMI80_RT_95upper <- mice_MAMI80_RT_pred + 2*mice_MAMI80_RT_SE
          mice_MAMI80_RT_95lower <- mice_MAMI80_RT_pred - 2*mice_MAMI80_RT_SE
          mice_MAMI80_RT_95width <- mice_MAMI80_RT_95upper - mice_MAMI80_RT_95lower
          mice_MAMI80_UT_95upper <- mice_MAMI80_UT_pred + 2*mice_MAMI80_UT_SE
          mice_MAMI80_UT_95lower <- mice_MAMI80_UT_pred - 2*mice_MAMI80_UT_SE
          mice_MAMI80_UT_95width <- mice_MAMI80_UT_95upper - mice_MAMI80_UT_95lower
          mice_MAMI80_SW_95upper <- mice_MAMI80_SW_pred + 2*mice_MAMI80_SW_SE
          mice_MAMI80_SW_95lower <- mice_MAMI80_SW_pred - 2*mice_MAMI80_SW_SE
          mice_MAMI80_SW_95width <- mice_MAMI80_SW_95upper - mice_MAMI80_SW_95lower
          mice_MAMI80_OU_95upper <- mice_MAMI80_OU_pred + 2*mice_MAMI80_OU_SE
          mice_MAMI80_OU_95lower <- mice_MAMI80_OU_pred - 2*mice_MAMI80_OU_SE
          mice_MAMI80_OU_95width <- mice_MAMI80_OU_95upper - mice_MAMI80_OU_95lower
          
          mice_MAMI80_RT_coverge <- (mice_MAMI80_RT_95lower < RT_true) & (RT_true < mice_MAMI80_RT_95upper)
          mice_MAMI80_UT_coverge <- (mice_MAMI80_UT_95lower < RT_true) & (UT_true < mice_MAMI80_UT_95upper)
          mice_MAMI80_SW_coverge <- (mice_MAMI80_SW_95lower < RT_true) & (SW_true < mice_MAMI80_SW_95upper)
          mice_MAMI80_OU_coverge <- (mice_MAMI80_OU_95lower < RT_true) & (OU_true < mice_MAMI80_OU_95upper)
          
          list_mice_MAMI80_RT_pred <- c(list_mice_MAMI80_RT_pred, mice_MAMI80_RT_pred)
          list_mice_MAMI80_UT_pred <- c(list_mice_MAMI80_UT_pred, mice_MAMI80_UT_pred)
          list_mice_MAMI80_SW_pred <- c(list_mice_MAMI80_SW_pred, mice_MAMI80_SW_pred)
          list_mice_MAMI80_OU_pred <- c(list_mice_MAMI80_OU_pred, mice_MAMI80_OU_pred)
          list_mice_MAMI80_RT_SE <- c(list_mice_MAMI80_RT_SE, mice_MAMI80_RT_SE)
          list_mice_MAMI80_UT_SE <- c(list_mice_MAMI80_UT_SE, mice_MAMI80_UT_SE)
          list_mice_MAMI80_SW_SE <- c(list_mice_MAMI80_SW_SE, mice_MAMI80_SW_SE)
          list_mice_MAMI80_OU_SE <- c(list_mice_MAMI80_OU_SE, mice_MAMI80_OU_SE)
          list_mice_MAMI80_RT_95width <- c(list_mice_MAMI80_RT_95width, mice_MAMI80_RT_95width)
          list_mice_MAMI80_UT_95width <- c(list_mice_MAMI80_UT_95width, mice_MAMI80_UT_95width)
          list_mice_MAMI80_SW_95width <- c(list_mice_MAMI80_SW_95width, mice_MAMI80_SW_95width)
          list_mice_MAMI80_OU_95width <- c(list_mice_MAMI80_OU_95width, mice_MAMI80_OU_95width)
          list_mice_MAMI80_RT_coverge <- c(list_mice_MAMI80_RT_coverge, mice_MAMI80_RT_coverge)
          list_mice_MAMI80_UT_coverge <- c(list_mice_MAMI80_UT_coverge, mice_MAMI80_UT_coverge)
          list_mice_MAMI80_SW_coverge <- c(list_mice_MAMI80_SW_coverge, mice_MAMI80_SW_coverge)
          list_mice_MAMI80_OU_coverge <- c(list_mice_MAMI80_OU_coverge, mice_MAMI80_OU_coverge)
        }
      }
      
      #impute MA_50
      {
        #model
        {
          md.pattern(MA_50, plot = FALSE)
          md.pairs(MA_50)
          MA_50_mice_plot <- aggr(MA_50,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_50),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_50$SEX <- factor(MA_50$SEX, labels = levels(simulated$SEX))
          MA_50$AGE <- factor(MA_50$AGE, labels = levels(simulated$AGE))
          MA_50$Indication <- factor(MA_50$Indication, labels = levels(simulated$Indication))
          MA_50$AntibioticClass <- factor(MA_50$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_50 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MAMI_50_mice_imp <- mice(MA_50, maxit = 10, m = 5, method = methods_MA_50, print = TRUE, seed = 19)
          summary(MAMI_50_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MAMI_50_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MAMI50_RT_pred_2 <- list()
          mice_MAMI50_UT_pred_2 <- list()
          mice_MAMI50_SW_pred_2 <- list()
          mice_MAMI50_OU_pred_2 <- list()
          mice_MAMI50_RT_SE_2 <- list()
          mice_MAMI50_UT_SE_2 <- list()
          mice_MAMI50_SW_SE_2 <- list()
          mice_MAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_MAMI50_RT_pred_1 <- prop.table(table(complete(MAMI_50_mice_imp,i)$Indication))[1]
            mice_MAMI50_RT_pred_2 <- c(mice_MAMI50_RT_pred_2, mice_MAMI50_RT_pred_1)
            mice_MAMI50_UT_pred_1 <- prop.table(table(complete(MAMI_50_mice_imp,i)$Indication))[2]
            mice_MAMI50_UT_pred_2 <- c(mice_MAMI50_UT_pred_2, mice_MAMI50_UT_pred_1)
            mice_MAMI50_SW_pred_1 <- prop.table(table(complete(MAMI_50_mice_imp,i)$Indication))[3]
            mice_MAMI50_SW_pred_2 <- c(mice_MAMI50_SW_pred_2, mice_MAMI50_SW_pred_1)
            mice_MAMI50_OU_pred_1 <- prop.table(table(complete(MAMI_50_mice_imp,i)$Indication))[4]
            mice_MAMI50_OU_pred_2 <- c(mice_MAMI50_OU_pred_2, mice_MAMI50_OU_pred_1)
            
            mice_MAMI50_RT_SE_1 <- sqrt((mice_MAMI50_RT_pred_1*(1 - mice_MAMI50_RT_pred_1))/10000)
            mice_MAMI50_RT_SE_2 <- c(mice_MAMI50_RT_SE_2, mice_MAMI50_RT_SE_1)
            mice_MAMI50_UT_SE_1 <- sqrt((mice_MAMI50_UT_pred_1*(1 - mice_MAMI50_UT_pred_1))/10000)
            mice_MAMI50_UT_SE_2 <- c(mice_MAMI50_UT_SE_2, mice_MAMI50_UT_SE_1)
            mice_MAMI50_SW_SE_1 <- sqrt((mice_MAMI50_SW_pred_1*(1 - mice_MAMI50_SW_pred_1))/10000)
            mice_MAMI50_SW_SE_2 <- c(mice_MAMI50_SW_SE_2, mice_MAMI50_SW_SE_1)
            mice_MAMI50_OU_SE_1 <- sqrt((mice_MAMI50_OU_pred_1*(1 - mice_MAMI50_OU_pred_1))/10000)
            mice_MAMI50_OU_SE_2 <- c(mice_MAMI50_OU_SE_2, mice_MAMI50_OU_SE_1)
          }
          
          mice_MAMI50_RT_pred <- mean(sapply(mice_MAMI50_RT_pred_2,sum))
          mice_MAMI50_RT_SE <- function_RR(mice_MAMI50_RT_pred_2, mice_MAMI50_RT_SE_2)
          mice_MAMI50_UT_pred <- mean(sapply(mice_MAMI50_UT_pred_2,sum))
          mice_MAMI50_UT_SE <- function_RR(mice_MAMI50_UT_pred_2, mice_MAMI50_UT_SE_2)
          mice_MAMI50_SW_pred <- mean(sapply(mice_MAMI50_SW_pred_2,sum))
          mice_MAMI50_SW_SE <- function_RR(mice_MAMI50_SW_pred_2, mice_MAMI50_SW_SE_2)
          mice_MAMI50_OU_pred <- mean(sapply(mice_MAMI50_OU_pred_2,sum))
          mice_MAMI50_OU_SE <- function_RR(mice_MAMI50_OU_pred_2, mice_MAMI50_OU_SE_2)
          
          
          mice_MAMI50_RT_95upper <- mice_MAMI50_RT_pred + 2*mice_MAMI50_RT_SE
          mice_MAMI50_RT_95lower <- mice_MAMI50_RT_pred - 2*mice_MAMI50_RT_SE
          mice_MAMI50_RT_95width <- mice_MAMI50_RT_95upper - mice_MAMI50_RT_95lower
          mice_MAMI50_UT_95upper <- mice_MAMI50_UT_pred + 2*mice_MAMI50_UT_SE
          mice_MAMI50_UT_95lower <- mice_MAMI50_UT_pred - 2*mice_MAMI50_UT_SE
          mice_MAMI50_UT_95width <- mice_MAMI50_UT_95upper - mice_MAMI50_UT_95lower
          mice_MAMI50_SW_95upper <- mice_MAMI50_SW_pred + 2*mice_MAMI50_SW_SE
          mice_MAMI50_SW_95lower <- mice_MAMI50_SW_pred - 2*mice_MAMI50_SW_SE
          mice_MAMI50_SW_95width <- mice_MAMI50_SW_95upper - mice_MAMI50_SW_95lower
          mice_MAMI50_OU_95upper <- mice_MAMI50_OU_pred + 2*mice_MAMI50_OU_SE
          mice_MAMI50_OU_95lower <- mice_MAMI50_OU_pred - 2*mice_MAMI50_OU_SE
          mice_MAMI50_OU_95width <- mice_MAMI50_OU_95upper - mice_MAMI50_OU_95lower
          
          mice_MAMI50_RT_coverge <- (mice_MAMI50_RT_95lower < RT_true) & (RT_true < mice_MAMI50_RT_95upper)
          mice_MAMI50_UT_coverge <- (mice_MAMI50_UT_95lower < RT_true) & (UT_true < mice_MAMI50_UT_95upper)
          mice_MAMI50_SW_coverge <- (mice_MAMI50_SW_95lower < RT_true) & (SW_true < mice_MAMI50_SW_95upper)
          mice_MAMI50_OU_coverge <- (mice_MAMI50_OU_95lower < RT_true) & (OU_true < mice_MAMI50_OU_95upper)
          
          list_mice_MAMI50_RT_pred <- c(list_mice_MAMI50_RT_pred, mice_MAMI50_RT_pred)
          list_mice_MAMI50_UT_pred <- c(list_mice_MAMI50_UT_pred, mice_MAMI50_UT_pred)
          list_mice_MAMI50_SW_pred <- c(list_mice_MAMI50_SW_pred, mice_MAMI50_SW_pred)
          list_mice_MAMI50_OU_pred <- c(list_mice_MAMI50_OU_pred, mice_MAMI50_OU_pred)
          list_mice_MAMI50_RT_SE <- c(list_mice_MAMI50_RT_SE, mice_MAMI50_RT_SE)
          list_mice_MAMI50_UT_SE <- c(list_mice_MAMI50_UT_SE, mice_MAMI50_UT_SE)
          list_mice_MAMI50_SW_SE <- c(list_mice_MAMI50_SW_SE, mice_MAMI50_SW_SE)
          list_mice_MAMI50_OU_SE <- c(list_mice_MAMI50_OU_SE, mice_MAMI50_OU_SE)
          list_mice_MAMI50_RT_95width <- c(list_mice_MAMI50_RT_95width, mice_MAMI50_RT_95width)
          list_mice_MAMI50_UT_95width <- c(list_mice_MAMI50_UT_95width, mice_MAMI50_UT_95width)
          list_mice_MAMI50_SW_95width <- c(list_mice_MAMI50_SW_95width, mice_MAMI50_SW_95width)
          list_mice_MAMI50_OU_95width <- c(list_mice_MAMI50_OU_95width, mice_MAMI50_OU_95width)
          list_mice_MAMI50_RT_coverge <- c(list_mice_MAMI50_RT_coverge, mice_MAMI50_RT_coverge)
          list_mice_MAMI50_UT_coverge <- c(list_mice_MAMI50_UT_coverge, mice_MAMI50_UT_coverge)
          list_mice_MAMI50_SW_coverge <- c(list_mice_MAMI50_SW_coverge, mice_MAMI50_SW_coverge)
          list_mice_MAMI50_OU_coverge <- c(list_mice_MAMI50_OU_coverge, mice_MAMI50_OU_coverge)
        }
      }
      
      #impute MA_20
      {
        #model
        {
          md.pattern(MA_20, plot = FALSE)
          md.pairs(MA_20)
          MA_20_mice_plot <- aggr(MA_20,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_20),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_20$SEX <- factor(MA_20$SEX, labels = levels(simulated$SEX))
          MA_20$AGE <- factor(MA_20$AGE, labels = levels(simulated$AGE))
          MA_20$Indication <- factor(MA_20$Indication, labels = levels(simulated$Indication))
          MA_20$AntibioticClass <- factor(MA_20$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_20 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MAMI_20_mice_imp <- mice(MA_20, maxit = 10, m = 5, method = methods_MA_20, print = TRUE, seed = 19)
          summary(MAMI_20_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MAMI_20_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MAMI20_RT_pred_2 <- list()
          mice_MAMI20_UT_pred_2 <- list()
          mice_MAMI20_SW_pred_2 <- list()
          mice_MAMI20_OU_pred_2 <- list()
          mice_MAMI20_RT_SE_2 <- list()
          mice_MAMI20_UT_SE_2 <- list()
          mice_MAMI20_SW_SE_2 <- list()
          mice_MAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_MAMI20_RT_pred_1 <- prop.table(table(complete(MAMI_20_mice_imp,i)$Indication))[1]
            mice_MAMI20_RT_pred_2 <- c(mice_MAMI20_RT_pred_2, mice_MAMI20_RT_pred_1)
            mice_MAMI20_UT_pred_1 <- prop.table(table(complete(MAMI_20_mice_imp,i)$Indication))[2]
            mice_MAMI20_UT_pred_2 <- c(mice_MAMI20_UT_pred_2, mice_MAMI20_UT_pred_1)
            mice_MAMI20_SW_pred_1 <- prop.table(table(complete(MAMI_20_mice_imp,i)$Indication))[3]
            mice_MAMI20_SW_pred_2 <- c(mice_MAMI20_SW_pred_2, mice_MAMI20_SW_pred_1)
            mice_MAMI20_OU_pred_1 <- prop.table(table(complete(MAMI_20_mice_imp,i)$Indication))[4]
            mice_MAMI20_OU_pred_2 <- c(mice_MAMI20_OU_pred_2, mice_MAMI20_OU_pred_1)
            
            mice_MAMI20_RT_SE_1 <- sqrt((mice_MAMI20_RT_pred_1*(1 - mice_MAMI20_RT_pred_1))/10000)
            mice_MAMI20_RT_SE_2 <- c(mice_MAMI20_RT_SE_2, mice_MAMI20_RT_SE_1)
            mice_MAMI20_UT_SE_1 <- sqrt((mice_MAMI20_UT_pred_1*(1 - mice_MAMI20_UT_pred_1))/10000)
            mice_MAMI20_UT_SE_2 <- c(mice_MAMI20_UT_SE_2, mice_MAMI20_UT_SE_1)
            mice_MAMI20_SW_SE_1 <- sqrt((mice_MAMI20_SW_pred_1*(1 - mice_MAMI20_SW_pred_1))/10000)
            mice_MAMI20_SW_SE_2 <- c(mice_MAMI20_SW_SE_2, mice_MAMI20_SW_SE_1)
            mice_MAMI20_OU_SE_1 <- sqrt((mice_MAMI20_OU_pred_1*(1 - mice_MAMI20_OU_pred_1))/10000)
            mice_MAMI20_OU_SE_2 <- c(mice_MAMI20_OU_SE_2, mice_MAMI20_OU_SE_1)
          }
          
          mice_MAMI20_RT_pred <- mean(sapply(mice_MAMI20_RT_pred_2,sum))
          mice_MAMI20_RT_SE <- function_RR(mice_MAMI20_RT_pred_2, mice_MAMI20_RT_SE_2)
          mice_MAMI20_UT_pred <- mean(sapply(mice_MAMI20_UT_pred_2,sum))
          mice_MAMI20_UT_SE <- function_RR(mice_MAMI20_UT_pred_2, mice_MAMI20_UT_SE_2)
          mice_MAMI20_SW_pred <- mean(sapply(mice_MAMI20_SW_pred_2,sum))
          mice_MAMI20_SW_SE <- function_RR(mice_MAMI20_SW_pred_2, mice_MAMI20_SW_SE_2)
          mice_MAMI20_OU_pred <- mean(sapply(mice_MAMI20_OU_pred_2,sum))
          mice_MAMI20_OU_SE <- function_RR(mice_MAMI20_OU_pred_2, mice_MAMI20_OU_SE_2)
          
          
          mice_MAMI20_RT_95upper <- mice_MAMI20_RT_pred + 2*mice_MAMI20_RT_SE
          mice_MAMI20_RT_95lower <- mice_MAMI20_RT_pred - 2*mice_MAMI20_RT_SE
          mice_MAMI20_RT_95width <- mice_MAMI20_RT_95upper - mice_MAMI20_RT_95lower
          mice_MAMI20_UT_95upper <- mice_MAMI20_UT_pred + 2*mice_MAMI20_UT_SE
          mice_MAMI20_UT_95lower <- mice_MAMI20_UT_pred - 2*mice_MAMI20_UT_SE
          mice_MAMI20_UT_95width <- mice_MAMI20_UT_95upper - mice_MAMI20_UT_95lower
          mice_MAMI20_SW_95upper <- mice_MAMI20_SW_pred + 2*mice_MAMI20_SW_SE
          mice_MAMI20_SW_95lower <- mice_MAMI20_SW_pred - 2*mice_MAMI20_SW_SE
          mice_MAMI20_SW_95width <- mice_MAMI20_SW_95upper - mice_MAMI20_SW_95lower
          mice_MAMI20_OU_95upper <- mice_MAMI20_OU_pred + 2*mice_MAMI20_OU_SE
          mice_MAMI20_OU_95lower <- mice_MAMI20_OU_pred - 2*mice_MAMI20_OU_SE
          mice_MAMI20_OU_95width <- mice_MAMI20_OU_95upper - mice_MAMI20_OU_95lower
          
          mice_MAMI20_RT_coverge <- (mice_MAMI20_RT_95lower < RT_true) & (RT_true < mice_MAMI20_RT_95upper)
          mice_MAMI20_UT_coverge <- (mice_MAMI20_UT_95lower < RT_true) & (UT_true < mice_MAMI20_UT_95upper)
          mice_MAMI20_SW_coverge <- (mice_MAMI20_SW_95lower < RT_true) & (SW_true < mice_MAMI20_SW_95upper)
          mice_MAMI20_OU_coverge <- (mice_MAMI20_OU_95lower < RT_true) & (OU_true < mice_MAMI20_OU_95upper)
          
          list_mice_MAMI20_RT_pred <- c(list_mice_MAMI20_RT_pred, mice_MAMI20_RT_pred)
          list_mice_MAMI20_UT_pred <- c(list_mice_MAMI20_UT_pred, mice_MAMI20_UT_pred)
          list_mice_MAMI20_SW_pred <- c(list_mice_MAMI20_SW_pred, mice_MAMI20_SW_pred)
          list_mice_MAMI20_OU_pred <- c(list_mice_MAMI20_OU_pred, mice_MAMI20_OU_pred)
          list_mice_MAMI20_RT_SE <- c(list_mice_MAMI20_RT_SE, mice_MAMI20_RT_SE)
          list_mice_MAMI20_UT_SE <- c(list_mice_MAMI20_UT_SE, mice_MAMI20_UT_SE)
          list_mice_MAMI20_SW_SE <- c(list_mice_MAMI20_SW_SE, mice_MAMI20_SW_SE)
          list_mice_MAMI20_OU_SE <- c(list_mice_MAMI20_OU_SE, mice_MAMI20_OU_SE)
          list_mice_MAMI20_RT_95width <- c(list_mice_MAMI20_RT_95width, mice_MAMI20_RT_95width)
          list_mice_MAMI20_UT_95width <- c(list_mice_MAMI20_UT_95width, mice_MAMI20_UT_95width)
          list_mice_MAMI20_SW_95width <- c(list_mice_MAMI20_SW_95width, mice_MAMI20_SW_95width)
          list_mice_MAMI20_OU_95width <- c(list_mice_MAMI20_OU_95width, mice_MAMI20_OU_95width)
          list_mice_MAMI20_RT_coverge <- c(list_mice_MAMI20_RT_coverge, mice_MAMI20_RT_coverge)
          list_mice_MAMI20_UT_coverge <- c(list_mice_MAMI20_UT_coverge, mice_MAMI20_UT_coverge)
          list_mice_MAMI20_SW_coverge <- c(list_mice_MAMI20_SW_coverge, mice_MAMI20_SW_coverge)
          list_mice_MAMI20_OU_coverge <- c(list_mice_MAMI20_OU_coverge, mice_MAMI20_OU_coverge)
        }
      }
      
      #impute MA_5
      {
        #model
        {
          md.pattern(MA_5, plot = FALSE)
          md.pairs(MA_5)
          MA_5_mice_plot <- aggr(MA_5,col=c('navyblue','yellow'),numbers=TRUE,sortVars=TRUE,labels=names(MA_5),cex.axis=.7,gap=3,ylab=c("Missing data","Pattern"))
          
          MA_5$SEX <- factor(MA_5$SEX, labels = levels(simulated$SEX))
          MA_5$AGE <- factor(MA_5$AGE, labels = levels(simulated$AGE))
          MA_5$Indication <- factor(MA_5$Indication, labels = levels(simulated$Indication))
          MA_5$AntibioticClass <- factor(MA_5$AntibioticClass, labels = levels(simulated$AntibioticClass))
          
          methods_MA_5 <- c(SEX = "logreg", AGE = "polyreg", Indication = "polyreg", AntibioticClass = "polyreg")
          MAMI_5_mice_imp <- mice(MA_5, maxit = 10, m = 5, method = methods_MA_5, print = TRUE, seed = 19)
          summary(MAMI_5_mice_imp) # predict AntibioticClass with all the remaining variables
          #View(MAMI_5_mice_imp$imp$Indication)
        }
        
        #result
        {
          #percentage of only imputed antibiotics class
          mice_MAMI5_RT_pred_2 <- list()
          mice_MAMI5_UT_pred_2 <- list()
          mice_MAMI5_SW_pred_2 <- list()
          mice_MAMI5_OU_pred_2 <- list()
          mice_MAMI5_RT_SE_2 <- list()
          mice_MAMI5_UT_SE_2 <- list()
          mice_MAMI5_SW_SE_2 <- list()
          mice_MAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            mice_MAMI5_RT_pred_1 <- prop.table(table(complete(MAMI_5_mice_imp,i)$Indication))[1]
            mice_MAMI5_RT_pred_2 <- c(mice_MAMI5_RT_pred_2, mice_MAMI5_RT_pred_1)
            mice_MAMI5_UT_pred_1 <- prop.table(table(complete(MAMI_5_mice_imp,i)$Indication))[2]
            mice_MAMI5_UT_pred_2 <- c(mice_MAMI5_UT_pred_2, mice_MAMI5_UT_pred_1)
            mice_MAMI5_SW_pred_1 <- prop.table(table(complete(MAMI_5_mice_imp,i)$Indication))[3]
            mice_MAMI5_SW_pred_2 <- c(mice_MAMI5_SW_pred_2, mice_MAMI5_SW_pred_1)
            mice_MAMI5_OU_pred_1 <- prop.table(table(complete(MAMI_5_mice_imp,i)$Indication))[4]
            mice_MAMI5_OU_pred_2 <- c(mice_MAMI5_OU_pred_2, mice_MAMI5_OU_pred_1)
            
            mice_MAMI5_RT_SE_1 <- sqrt((mice_MAMI5_RT_pred_1*(1 - mice_MAMI5_RT_pred_1))/10000)
            mice_MAMI5_RT_SE_2 <- c(mice_MAMI5_RT_SE_2, mice_MAMI5_RT_SE_1)
            mice_MAMI5_UT_SE_1 <- sqrt((mice_MAMI5_UT_pred_1*(1 - mice_MAMI5_UT_pred_1))/10000)
            mice_MAMI5_UT_SE_2 <- c(mice_MAMI5_UT_SE_2, mice_MAMI5_UT_SE_1)
            mice_MAMI5_SW_SE_1 <- sqrt((mice_MAMI5_SW_pred_1*(1 - mice_MAMI5_SW_pred_1))/10000)
            mice_MAMI5_SW_SE_2 <- c(mice_MAMI5_SW_SE_2, mice_MAMI5_SW_SE_1)
            mice_MAMI5_OU_SE_1 <- sqrt((mice_MAMI5_OU_pred_1*(1 - mice_MAMI5_OU_pred_1))/10000)
            mice_MAMI5_OU_SE_2 <- c(mice_MAMI5_OU_SE_2, mice_MAMI5_OU_SE_1)
          }
          
          mice_MAMI5_RT_pred <- mean(sapply(mice_MAMI5_RT_pred_2,sum))
          mice_MAMI5_RT_SE <- function_RR(mice_MAMI5_RT_pred_2, mice_MAMI5_RT_SE_2)
          mice_MAMI5_UT_pred <- mean(sapply(mice_MAMI5_UT_pred_2,sum))
          mice_MAMI5_UT_SE <- function_RR(mice_MAMI5_UT_pred_2, mice_MAMI5_UT_SE_2)
          mice_MAMI5_SW_pred <- mean(sapply(mice_MAMI5_SW_pred_2,sum))
          mice_MAMI5_SW_SE <- function_RR(mice_MAMI5_SW_pred_2, mice_MAMI5_SW_SE_2)
          mice_MAMI5_OU_pred <- mean(sapply(mice_MAMI5_OU_pred_2,sum))
          mice_MAMI5_OU_SE <- function_RR(mice_MAMI5_OU_pred_2, mice_MAMI5_OU_SE_2)
          
          
          mice_MAMI5_RT_95upper <- mice_MAMI5_RT_pred + 2*mice_MAMI5_RT_SE
          mice_MAMI5_RT_95lower <- mice_MAMI5_RT_pred - 2*mice_MAMI5_RT_SE
          mice_MAMI5_RT_95width <- mice_MAMI5_RT_95upper - mice_MAMI5_RT_95lower
          mice_MAMI5_UT_95upper <- mice_MAMI5_UT_pred + 2*mice_MAMI5_UT_SE
          mice_MAMI5_UT_95lower <- mice_MAMI5_UT_pred - 2*mice_MAMI5_UT_SE
          mice_MAMI5_UT_95width <- mice_MAMI5_UT_95upper - mice_MAMI5_UT_95lower
          mice_MAMI5_SW_95upper <- mice_MAMI5_SW_pred + 2*mice_MAMI5_SW_SE
          mice_MAMI5_SW_95lower <- mice_MAMI5_SW_pred - 2*mice_MAMI5_SW_SE
          mice_MAMI5_SW_95width <- mice_MAMI5_SW_95upper - mice_MAMI5_SW_95lower
          mice_MAMI5_OU_95upper <- mice_MAMI5_OU_pred + 2*mice_MAMI5_OU_SE
          mice_MAMI5_OU_95lower <- mice_MAMI5_OU_pred - 2*mice_MAMI5_OU_SE
          mice_MAMI5_OU_95width <- mice_MAMI5_OU_95upper - mice_MAMI5_OU_95lower
          
          mice_MAMI5_RT_coverge <- (mice_MAMI5_RT_95lower < RT_true) & (RT_true < mice_MAMI5_RT_95upper)
          mice_MAMI5_UT_coverge <- (mice_MAMI5_UT_95lower < RT_true) & (UT_true < mice_MAMI5_UT_95upper)
          mice_MAMI5_SW_coverge <- (mice_MAMI5_SW_95lower < RT_true) & (SW_true < mice_MAMI5_SW_95upper)
          mice_MAMI5_OU_coverge <- (mice_MAMI5_OU_95lower < RT_true) & (OU_true < mice_MAMI5_OU_95upper)
          
          list_mice_MAMI5_RT_pred <- c(list_mice_MAMI5_RT_pred, mice_MAMI5_RT_pred)
          list_mice_MAMI5_UT_pred <- c(list_mice_MAMI5_UT_pred, mice_MAMI5_UT_pred)
          list_mice_MAMI5_SW_pred <- c(list_mice_MAMI5_SW_pred, mice_MAMI5_SW_pred)
          list_mice_MAMI5_OU_pred <- c(list_mice_MAMI5_OU_pred, mice_MAMI5_OU_pred)
          list_mice_MAMI5_RT_SE <- c(list_mice_MAMI5_RT_SE, mice_MAMI5_RT_SE)
          list_mice_MAMI5_UT_SE <- c(list_mice_MAMI5_UT_SE, mice_MAMI5_UT_SE)
          list_mice_MAMI5_SW_SE <- c(list_mice_MAMI5_SW_SE, mice_MAMI5_SW_SE)
          list_mice_MAMI5_OU_SE <- c(list_mice_MAMI5_OU_SE, mice_MAMI5_OU_SE)
          list_mice_MAMI5_RT_95width <- c(list_mice_MAMI5_RT_95width, mice_MAMI5_RT_95width)
          list_mice_MAMI5_UT_95width <- c(list_mice_MAMI5_UT_95width, mice_MAMI5_UT_95width)
          list_mice_MAMI5_SW_95width <- c(list_mice_MAMI5_SW_95width, mice_MAMI5_SW_95width)
          list_mice_MAMI5_OU_95width <- c(list_mice_MAMI5_OU_95width, mice_MAMI5_OU_95width)
          list_mice_MAMI5_RT_coverge <- c(list_mice_MAMI5_RT_coverge, mice_MAMI5_RT_coverge)
          list_mice_MAMI5_UT_coverge <- c(list_mice_MAMI5_UT_coverge, mice_MAMI5_UT_coverge)
          list_mice_MAMI5_SW_coverge <- c(list_mice_MAMI5_SW_coverge, mice_MAMI5_SW_coverge)
          list_mice_MAMI5_OU_coverge <- c(list_mice_MAMI5_OU_coverge, mice_MAMI5_OU_coverge)
        }
      }
    }
    
    #multinom multiple imputation
    {
      #impute UA_80 
      {
        #model
        {
          set.seed(19)
          UAMI_80_multinom_imp <- hotdeck(UA_80) # Step 1
          UAMI_80_multinom_imp_datasets <- list()
          
          missing_SEX <- UAMI_80_multinom_imp$SEX_imp
          missing_AGE <- UAMI_80_multinom_imp$AGE_imp
          missing_Indication <- UAMI_80_multinom_imp$Indication_imp
          missing_AntibioticClass <- UAMI_80_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              UAMI_80_multinom_imp$SEX <- factor(UAMI_80_multinom_imp$SEX, labels = levels(simulated$SEX))
              UAMI_80_multinom_imp$AGE <- factor(UAMI_80_multinom_imp$AGE, labels = levels(simulated$AGE))
              UAMI_80_multinom_imp$Indication <- factor(UAMI_80_multinom_imp$Indication, labels = levels(simulated$Indication))
              UAMI_80_multinom_imp$AntibioticClass <- factor(UAMI_80_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              # Step 5 -- start
              UAMI_80_multinom_imp$SEX[missing_SEX] <- NA # Step 2
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_80_multinom_imp[!is.na(UAMI_80_multinom_imp$SEX), ], family= multipleClasses) # Step3
              # Step4 -- start
              probs <- predict(multinom_model, newdata = UAMI_80_multinom_imp[is.na(UAMI_80_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UAMI_80_multinom_imp$SEX <- as.numeric(UAMI_80_multinom_imp$SEX)
              UAMI_80_multinom_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              UAMI_80_multinom_imp$AGE[missing_AGE] <- NA # Step 2
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_80_multinom_imp[!is.na(UAMI_80_multinom_imp$AGE), ], family= multipleClasses) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              probs <- predict(multinom_model, newdata = UAMI_80_multinom_imp[is.na(UAMI_80_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_80_multinom_imp$AGE <- as.numeric(UAMI_80_multinom_imp$AGE)
              UAMI_80_multinom_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              UAMI_80_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_80_multinom_imp[!is.na(UAMI_80_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UAMI_80_multinom_imp[is.na(UAMI_80_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_80_multinom_imp$Indication <- as.numeric(UAMI_80_multinom_imp$Indication)
              UAMI_80_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_80_multinom_imp_datasets <- c(UAMI_80_multinom_imp_datasets, list(UAMI_80_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_UAMI80_RT_pred_2 <- list()
          multinom_UAMI80_UT_pred_2 <- list()
          multinom_UAMI80_SW_pred_2 <- list()
          multinom_UAMI80_OU_pred_2 <- list()
          multinom_UAMI80_RT_SE_2 <- list()
          multinom_UAMI80_UT_SE_2 <- list()
          multinom_UAMI80_SW_SE_2 <- list()
          multinom_UAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_UAMI80_RT_pred_1 <- prop.table(table(UAMI_80_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_UAMI80_RT_pred_2 <- c(multinom_UAMI80_RT_pred_2, multinom_UAMI80_RT_pred_1)
            multinom_UAMI80_UT_pred_1 <- prop.table(table(UAMI_80_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_UAMI80_UT_pred_2 <- c(multinom_UAMI80_UT_pred_2, multinom_UAMI80_UT_pred_1)
            multinom_UAMI80_SW_pred_1 <- prop.table(table(UAMI_80_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_UAMI80_SW_pred_2 <- c(multinom_UAMI80_SW_pred_2, multinom_UAMI80_SW_pred_1)
            multinom_UAMI80_OU_pred_1 <- prop.table(table(UAMI_80_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_UAMI80_OU_pred_2 <- c(multinom_UAMI80_OU_pred_2, multinom_UAMI80_OU_pred_1)
            
            multinom_UAMI80_RT_SE_1 <- sqrt((multinom_UAMI80_RT_pred_1*(1 - multinom_UAMI80_RT_pred_1))/10000)
            multinom_UAMI80_RT_SE_2 <- c(multinom_UAMI80_RT_SE_2, multinom_UAMI80_RT_SE_1)
            multinom_UAMI80_UT_SE_1 <- sqrt((multinom_UAMI80_UT_pred_1*(1 - multinom_UAMI80_UT_pred_1))/10000)
            multinom_UAMI80_UT_SE_2 <- c(multinom_UAMI80_UT_SE_2, multinom_UAMI80_UT_SE_1)
            multinom_UAMI80_SW_SE_1 <- sqrt((multinom_UAMI80_SW_pred_1*(1 - multinom_UAMI80_SW_pred_1))/10000)
            multinom_UAMI80_SW_SE_2 <- c(multinom_UAMI80_SW_SE_2, multinom_UAMI80_SW_SE_1)
            multinom_UAMI80_OU_SE_1 <- sqrt((multinom_UAMI80_OU_pred_1*(1 - multinom_UAMI80_OU_pred_1))/10000)
            multinom_UAMI80_OU_SE_2 <- c(multinom_UAMI80_OU_SE_2, multinom_UAMI80_OU_SE_1)
          }
          
          multinom_UAMI80_RT_pred <- mean(sapply(multinom_UAMI80_RT_pred_2,sum))
          multinom_UAMI80_RT_SE <- function_RR(multinom_UAMI80_RT_pred_2, multinom_UAMI80_RT_SE_2)
          multinom_UAMI80_UT_pred <- mean(sapply(multinom_UAMI80_UT_pred_2,sum))
          multinom_UAMI80_UT_SE <- function_RR(multinom_UAMI80_UT_pred_2, multinom_UAMI80_UT_SE_2)
          multinom_UAMI80_SW_pred <- mean(sapply(multinom_UAMI80_SW_pred_2,sum))
          multinom_UAMI80_SW_SE <- function_RR(multinom_UAMI80_SW_pred_2, multinom_UAMI80_SW_SE_2)
          multinom_UAMI80_OU_pred <- mean(sapply(multinom_UAMI80_OU_pred_2,sum))
          multinom_UAMI80_OU_SE <- function_RR(multinom_UAMI80_OU_pred_2, multinom_UAMI80_OU_SE_2)
          
          
          multinom_UAMI80_RT_95upper <- multinom_UAMI80_RT_pred + 2*multinom_UAMI80_RT_SE
          multinom_UAMI80_RT_95lower <- multinom_UAMI80_RT_pred - 2*multinom_UAMI80_RT_SE
          multinom_UAMI80_RT_95width <- multinom_UAMI80_RT_95upper - multinom_UAMI80_RT_95lower
          multinom_UAMI80_UT_95upper <- multinom_UAMI80_UT_pred + 2*multinom_UAMI80_UT_SE
          multinom_UAMI80_UT_95lower <- multinom_UAMI80_UT_pred - 2*multinom_UAMI80_UT_SE
          multinom_UAMI80_UT_95width <- multinom_UAMI80_UT_95upper - multinom_UAMI80_UT_95lower
          multinom_UAMI80_SW_95upper <- multinom_UAMI80_SW_pred + 2*multinom_UAMI80_SW_SE
          multinom_UAMI80_SW_95lower <- multinom_UAMI80_SW_pred - 2*multinom_UAMI80_SW_SE
          multinom_UAMI80_SW_95width <- multinom_UAMI80_SW_95upper - multinom_UAMI80_SW_95lower
          multinom_UAMI80_OU_95upper <- multinom_UAMI80_OU_pred + 2*multinom_UAMI80_OU_SE
          multinom_UAMI80_OU_95lower <- multinom_UAMI80_OU_pred - 2*multinom_UAMI80_OU_SE
          multinom_UAMI80_OU_95width <- multinom_UAMI80_OU_95upper - multinom_UAMI80_OU_95lower
          
          multinom_UAMI80_RT_coverge <- (multinom_UAMI80_RT_95lower < RT_true) & (RT_true < multinom_UAMI80_RT_95upper)
          multinom_UAMI80_UT_coverge <- (multinom_UAMI80_UT_95lower < RT_true) & (UT_true < multinom_UAMI80_UT_95upper)
          multinom_UAMI80_SW_coverge <- (multinom_UAMI80_SW_95lower < RT_true) & (SW_true < multinom_UAMI80_SW_95upper)
          multinom_UAMI80_OU_coverge <- (multinom_UAMI80_OU_95lower < RT_true) & (OU_true < multinom_UAMI80_OU_95upper)
          
          list_multinom_UAMI80_RT_pred <- c(list_multinom_UAMI80_RT_pred, multinom_UAMI80_RT_pred)
          list_multinom_UAMI80_UT_pred <- c(list_multinom_UAMI80_UT_pred, multinom_UAMI80_UT_pred)
          list_multinom_UAMI80_SW_pred <- c(list_multinom_UAMI80_SW_pred, multinom_UAMI80_SW_pred)
          list_multinom_UAMI80_OU_pred <- c(list_multinom_UAMI80_OU_pred, multinom_UAMI80_OU_pred)
          list_multinom_UAMI80_RT_SE <- c(list_multinom_UAMI80_RT_SE, multinom_UAMI80_RT_SE)
          list_multinom_UAMI80_UT_SE <- c(list_multinom_UAMI80_UT_SE, multinom_UAMI80_UT_SE)
          list_multinom_UAMI80_SW_SE <- c(list_multinom_UAMI80_SW_SE, multinom_UAMI80_SW_SE)
          list_multinom_UAMI80_OU_SE <- c(list_multinom_UAMI80_OU_SE, multinom_UAMI80_OU_SE)
          list_multinom_UAMI80_RT_95width <- c(list_multinom_UAMI80_RT_95width, multinom_UAMI80_RT_95width)
          list_multinom_UAMI80_UT_95width <- c(list_multinom_UAMI80_UT_95width, multinom_UAMI80_UT_95width)
          list_multinom_UAMI80_SW_95width <- c(list_multinom_UAMI80_SW_95width, multinom_UAMI80_SW_95width)
          list_multinom_UAMI80_OU_95width <- c(list_multinom_UAMI80_OU_95width, multinom_UAMI80_OU_95width)
          list_multinom_UAMI80_RT_coverge <- c(list_multinom_UAMI80_RT_coverge, multinom_UAMI80_RT_coverge)
          list_multinom_UAMI80_UT_coverge <- c(list_multinom_UAMI80_UT_coverge, multinom_UAMI80_UT_coverge)
          list_multinom_UAMI80_SW_coverge <- c(list_multinom_UAMI80_SW_coverge, multinom_UAMI80_SW_coverge)
          list_multinom_UAMI80_OU_coverge <- c(list_multinom_UAMI80_OU_coverge, multinom_UAMI80_OU_coverge)
        }
      }
      
      #impute UA_50 
      {
        #model
        {
          set.seed(19)
          UAMI_50_multinom_imp <- hotdeck(UA_50) 
          UAMI_50_multinom_imp_datasets <- list()
          
          missing_SEX <- UAMI_50_multinom_imp$SEX_imp
          missing_AGE <- UAMI_50_multinom_imp$AGE_imp
          missing_Indication <- UAMI_50_multinom_imp$Indication_imp
          missing_AntibioticClass <- UAMI_50_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              UAMI_50_multinom_imp$SEX <- factor(UAMI_50_multinom_imp$SEX, labels = levels(simulated$SEX))
              UAMI_50_multinom_imp$AGE <- factor(UAMI_50_multinom_imp$AGE, labels = levels(simulated$AGE))
              UAMI_50_multinom_imp$Indication <- factor(UAMI_50_multinom_imp$Indication, labels = levels(simulated$Indication))
              UAMI_50_multinom_imp$AntibioticClass <- factor(UAMI_50_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_50_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_50_multinom_imp[!is.na(UAMI_50_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_50_multinom_imp[is.na(UAMI_50_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UAMI_50_multinom_imp$SEX <- as.numeric(UAMI_50_multinom_imp$SEX)
              UAMI_50_multinom_imp$SEX[missing_SEX] <- pred
              
              UAMI_50_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_50_multinom_imp[!is.na(UAMI_50_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_50_multinom_imp[is.na(UAMI_50_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_50_multinom_imp$AGE <- as.numeric(UAMI_50_multinom_imp$AGE)
              UAMI_50_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_50_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_50_multinom_imp[!is.na(UAMI_50_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UAMI_50_multinom_imp[is.na(UAMI_50_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_50_multinom_imp$Indication <- as.numeric(UAMI_50_multinom_imp$Indication)
              UAMI_50_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_50_multinom_imp_datasets <- c(UAMI_50_multinom_imp_datasets, list(UAMI_50_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_UAMI50_RT_pred_2 <- list()
          multinom_UAMI50_UT_pred_2 <- list()
          multinom_UAMI50_SW_pred_2 <- list()
          multinom_UAMI50_OU_pred_2 <- list()
          multinom_UAMI50_RT_SE_2 <- list()
          multinom_UAMI50_UT_SE_2 <- list()
          multinom_UAMI50_SW_SE_2 <- list()
          multinom_UAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_UAMI50_RT_pred_1 <- prop.table(table(UAMI_50_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_UAMI50_RT_pred_2 <- c(multinom_UAMI50_RT_pred_2, multinom_UAMI50_RT_pred_1)
            multinom_UAMI50_UT_pred_1 <- prop.table(table(UAMI_50_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_UAMI50_UT_pred_2 <- c(multinom_UAMI50_UT_pred_2, multinom_UAMI50_UT_pred_1)
            multinom_UAMI50_SW_pred_1 <- prop.table(table(UAMI_50_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_UAMI50_SW_pred_2 <- c(multinom_UAMI50_SW_pred_2, multinom_UAMI50_SW_pred_1)
            multinom_UAMI50_OU_pred_1 <- prop.table(table(UAMI_50_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_UAMI50_OU_pred_2 <- c(multinom_UAMI50_OU_pred_2, multinom_UAMI50_OU_pred_1)
            
            multinom_UAMI50_RT_SE_1 <- sqrt((multinom_UAMI50_RT_pred_1*(1 - multinom_UAMI50_RT_pred_1))/10000)
            multinom_UAMI50_RT_SE_2 <- c(multinom_UAMI50_RT_SE_2, multinom_UAMI50_RT_SE_1)
            multinom_UAMI50_UT_SE_1 <- sqrt((multinom_UAMI50_UT_pred_1*(1 - multinom_UAMI50_UT_pred_1))/10000)
            multinom_UAMI50_UT_SE_2 <- c(multinom_UAMI50_UT_SE_2, multinom_UAMI50_UT_SE_1)
            multinom_UAMI50_SW_SE_1 <- sqrt((multinom_UAMI50_SW_pred_1*(1 - multinom_UAMI50_SW_pred_1))/10000)
            multinom_UAMI50_SW_SE_2 <- c(multinom_UAMI50_SW_SE_2, multinom_UAMI50_SW_SE_1)
            multinom_UAMI50_OU_SE_1 <- sqrt((multinom_UAMI50_OU_pred_1*(1 - multinom_UAMI50_OU_pred_1))/10000)
            multinom_UAMI50_OU_SE_2 <- c(multinom_UAMI50_OU_SE_2, multinom_UAMI50_OU_SE_1)
          }
          
          multinom_UAMI50_RT_pred <- mean(sapply(multinom_UAMI50_RT_pred_2,sum))
          multinom_UAMI50_RT_SE <- function_RR(multinom_UAMI50_RT_pred_2, multinom_UAMI50_RT_SE_2)
          multinom_UAMI50_UT_pred <- mean(sapply(multinom_UAMI50_UT_pred_2,sum))
          multinom_UAMI50_UT_SE <- function_RR(multinom_UAMI50_UT_pred_2, multinom_UAMI50_UT_SE_2)
          multinom_UAMI50_SW_pred <- mean(sapply(multinom_UAMI50_SW_pred_2,sum))
          multinom_UAMI50_SW_SE <- function_RR(multinom_UAMI50_SW_pred_2, multinom_UAMI50_SW_SE_2)
          multinom_UAMI50_OU_pred <- mean(sapply(multinom_UAMI50_OU_pred_2,sum))
          multinom_UAMI50_OU_SE <- function_RR(multinom_UAMI50_OU_pred_2, multinom_UAMI50_OU_SE_2)
          
          
          multinom_UAMI50_RT_95upper <- multinom_UAMI50_RT_pred + 2*multinom_UAMI50_RT_SE
          multinom_UAMI50_RT_95lower <- multinom_UAMI50_RT_pred - 2*multinom_UAMI50_RT_SE
          multinom_UAMI50_RT_95width <- multinom_UAMI50_RT_95upper - multinom_UAMI50_RT_95lower
          multinom_UAMI50_UT_95upper <- multinom_UAMI50_UT_pred + 2*multinom_UAMI50_UT_SE
          multinom_UAMI50_UT_95lower <- multinom_UAMI50_UT_pred - 2*multinom_UAMI50_UT_SE
          multinom_UAMI50_UT_95width <- multinom_UAMI50_UT_95upper - multinom_UAMI50_UT_95lower
          multinom_UAMI50_SW_95upper <- multinom_UAMI50_SW_pred + 2*multinom_UAMI50_SW_SE
          multinom_UAMI50_SW_95lower <- multinom_UAMI50_SW_pred - 2*multinom_UAMI50_SW_SE
          multinom_UAMI50_SW_95width <- multinom_UAMI50_SW_95upper - multinom_UAMI50_SW_95lower
          multinom_UAMI50_OU_95upper <- multinom_UAMI50_OU_pred + 2*multinom_UAMI50_OU_SE
          multinom_UAMI50_OU_95lower <- multinom_UAMI50_OU_pred - 2*multinom_UAMI50_OU_SE
          multinom_UAMI50_OU_95width <- multinom_UAMI50_OU_95upper - multinom_UAMI50_OU_95lower
          
          multinom_UAMI50_RT_coverge <- (multinom_UAMI50_RT_95lower < RT_true) & (RT_true < multinom_UAMI50_RT_95upper)
          multinom_UAMI50_UT_coverge <- (multinom_UAMI50_UT_95lower < RT_true) & (UT_true < multinom_UAMI50_UT_95upper)
          multinom_UAMI50_SW_coverge <- (multinom_UAMI50_SW_95lower < RT_true) & (SW_true < multinom_UAMI50_SW_95upper)
          multinom_UAMI50_OU_coverge <- (multinom_UAMI50_OU_95lower < RT_true) & (OU_true < multinom_UAMI50_OU_95upper)
          
          list_multinom_UAMI50_RT_pred <- c(list_multinom_UAMI50_RT_pred, multinom_UAMI50_RT_pred)
          list_multinom_UAMI50_UT_pred <- c(list_multinom_UAMI50_UT_pred, multinom_UAMI50_UT_pred)
          list_multinom_UAMI50_SW_pred <- c(list_multinom_UAMI50_SW_pred, multinom_UAMI50_SW_pred)
          list_multinom_UAMI50_OU_pred <- c(list_multinom_UAMI50_OU_pred, multinom_UAMI50_OU_pred)
          list_multinom_UAMI50_RT_SE <- c(list_multinom_UAMI50_RT_SE, multinom_UAMI50_RT_SE)
          list_multinom_UAMI50_UT_SE <- c(list_multinom_UAMI50_UT_SE, multinom_UAMI50_UT_SE)
          list_multinom_UAMI50_SW_SE <- c(list_multinom_UAMI50_SW_SE, multinom_UAMI50_SW_SE)
          list_multinom_UAMI50_OU_SE <- c(list_multinom_UAMI50_OU_SE, multinom_UAMI50_OU_SE)
          list_multinom_UAMI50_RT_95width <- c(list_multinom_UAMI50_RT_95width, multinom_UAMI50_RT_95width)
          list_multinom_UAMI50_UT_95width <- c(list_multinom_UAMI50_UT_95width, multinom_UAMI50_UT_95width)
          list_multinom_UAMI50_SW_95width <- c(list_multinom_UAMI50_SW_95width, multinom_UAMI50_SW_95width)
          list_multinom_UAMI50_OU_95width <- c(list_multinom_UAMI50_OU_95width, multinom_UAMI50_OU_95width)
          list_multinom_UAMI50_RT_coverge <- c(list_multinom_UAMI50_RT_coverge, multinom_UAMI50_RT_coverge)
          list_multinom_UAMI50_UT_coverge <- c(list_multinom_UAMI50_UT_coverge, multinom_UAMI50_UT_coverge)
          list_multinom_UAMI50_SW_coverge <- c(list_multinom_UAMI50_SW_coverge, multinom_UAMI50_SW_coverge)
          list_multinom_UAMI50_OU_coverge <- c(list_multinom_UAMI50_OU_coverge, multinom_UAMI50_OU_coverge)
        }
      }
      
      #impute UA_20 
      {
        #model
        {
          set.seed(19)
          UAMI_20_multinom_imp <- hotdeck(UA_20) 
          UAMI_20_multinom_imp_datasets <- list()
          
          missing_SEX <- UAMI_20_multinom_imp$SEX_imp
          missing_AGE <- UAMI_20_multinom_imp$AGE_imp
          missing_Indication <- UAMI_20_multinom_imp$Indication_imp
          missing_AntibioticClass <- UAMI_20_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              UAMI_20_multinom_imp$SEX <- factor(UAMI_20_multinom_imp$SEX, labels = levels(simulated$SEX))
              UAMI_20_multinom_imp$AGE <- factor(UAMI_20_multinom_imp$AGE, labels = levels(simulated$AGE))
              UAMI_20_multinom_imp$Indication <- factor(UAMI_20_multinom_imp$Indication, labels = levels(simulated$Indication))
              UAMI_20_multinom_imp$AntibioticClass <- factor(UAMI_20_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_20_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_20_multinom_imp[!is.na(UAMI_20_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_20_multinom_imp[is.na(UAMI_20_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UAMI_20_multinom_imp$SEX <- as.numeric(UAMI_20_multinom_imp$SEX)
              UAMI_20_multinom_imp$SEX[missing_SEX] <- pred
              
              UAMI_20_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_20_multinom_imp[!is.na(UAMI_20_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_20_multinom_imp[is.na(UAMI_20_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_20_multinom_imp$AGE <- as.numeric(UAMI_20_multinom_imp$AGE)
              UAMI_20_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_20_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_20_multinom_imp[!is.na(UAMI_20_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UAMI_20_multinom_imp[is.na(UAMI_20_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_20_multinom_imp$Indication <- as.numeric(UAMI_20_multinom_imp$Indication)
              UAMI_20_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_20_multinom_imp_datasets <- c(UAMI_20_multinom_imp_datasets, list(UAMI_20_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_UAMI20_RT_pred_2 <- list()
          multinom_UAMI20_UT_pred_2 <- list()
          multinom_UAMI20_SW_pred_2 <- list()
          multinom_UAMI20_OU_pred_2 <- list()
          multinom_UAMI20_RT_SE_2 <- list()
          multinom_UAMI20_UT_SE_2 <- list()
          multinom_UAMI20_SW_SE_2 <- list()
          multinom_UAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_UAMI20_RT_pred_1 <- prop.table(table(UAMI_20_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_UAMI20_RT_pred_2 <- c(multinom_UAMI20_RT_pred_2, multinom_UAMI20_RT_pred_1)
            multinom_UAMI20_UT_pred_1 <- prop.table(table(UAMI_20_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_UAMI20_UT_pred_2 <- c(multinom_UAMI20_UT_pred_2, multinom_UAMI20_UT_pred_1)
            multinom_UAMI20_SW_pred_1 <- prop.table(table(UAMI_20_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_UAMI20_SW_pred_2 <- c(multinom_UAMI20_SW_pred_2, multinom_UAMI20_SW_pred_1)
            multinom_UAMI20_OU_pred_1 <- prop.table(table(UAMI_20_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_UAMI20_OU_pred_2 <- c(multinom_UAMI20_OU_pred_2, multinom_UAMI20_OU_pred_1)
            
            multinom_UAMI20_RT_SE_1 <- sqrt((multinom_UAMI20_RT_pred_1*(1 - multinom_UAMI20_RT_pred_1))/10000)
            multinom_UAMI20_RT_SE_2 <- c(multinom_UAMI20_RT_SE_2, multinom_UAMI20_RT_SE_1)
            multinom_UAMI20_UT_SE_1 <- sqrt((multinom_UAMI20_UT_pred_1*(1 - multinom_UAMI20_UT_pred_1))/10000)
            multinom_UAMI20_UT_SE_2 <- c(multinom_UAMI20_UT_SE_2, multinom_UAMI20_UT_SE_1)
            multinom_UAMI20_SW_SE_1 <- sqrt((multinom_UAMI20_SW_pred_1*(1 - multinom_UAMI20_SW_pred_1))/10000)
            multinom_UAMI20_SW_SE_2 <- c(multinom_UAMI20_SW_SE_2, multinom_UAMI20_SW_SE_1)
            multinom_UAMI20_OU_SE_1 <- sqrt((multinom_UAMI20_OU_pred_1*(1 - multinom_UAMI20_OU_pred_1))/10000)
            multinom_UAMI20_OU_SE_2 <- c(multinom_UAMI20_OU_SE_2, multinom_UAMI20_OU_SE_1)
          }
          
          multinom_UAMI20_RT_pred <- mean(sapply(multinom_UAMI20_RT_pred_2,sum))
          multinom_UAMI20_RT_SE <- function_RR(multinom_UAMI20_RT_pred_2, multinom_UAMI20_RT_SE_2)
          multinom_UAMI20_UT_pred <- mean(sapply(multinom_UAMI20_UT_pred_2,sum))
          multinom_UAMI20_UT_SE <- function_RR(multinom_UAMI20_UT_pred_2, multinom_UAMI20_UT_SE_2)
          multinom_UAMI20_SW_pred <- mean(sapply(multinom_UAMI20_SW_pred_2,sum))
          multinom_UAMI20_SW_SE <- function_RR(multinom_UAMI20_SW_pred_2, multinom_UAMI20_SW_SE_2)
          multinom_UAMI20_OU_pred <- mean(sapply(multinom_UAMI20_OU_pred_2,sum))
          multinom_UAMI20_OU_SE <- function_RR(multinom_UAMI20_OU_pred_2, multinom_UAMI20_OU_SE_2)
          
          
          multinom_UAMI20_RT_95upper <- multinom_UAMI20_RT_pred + 2*multinom_UAMI20_RT_SE
          multinom_UAMI20_RT_95lower <- multinom_UAMI20_RT_pred - 2*multinom_UAMI20_RT_SE
          multinom_UAMI20_RT_95width <- multinom_UAMI20_RT_95upper - multinom_UAMI20_RT_95lower
          multinom_UAMI20_UT_95upper <- multinom_UAMI20_UT_pred + 2*multinom_UAMI20_UT_SE
          multinom_UAMI20_UT_95lower <- multinom_UAMI20_UT_pred - 2*multinom_UAMI20_UT_SE
          multinom_UAMI20_UT_95width <- multinom_UAMI20_UT_95upper - multinom_UAMI20_UT_95lower
          multinom_UAMI20_SW_95upper <- multinom_UAMI20_SW_pred + 2*multinom_UAMI20_SW_SE
          multinom_UAMI20_SW_95lower <- multinom_UAMI20_SW_pred - 2*multinom_UAMI20_SW_SE
          multinom_UAMI20_SW_95width <- multinom_UAMI20_SW_95upper - multinom_UAMI20_SW_95lower
          multinom_UAMI20_OU_95upper <- multinom_UAMI20_OU_pred + 2*multinom_UAMI20_OU_SE
          multinom_UAMI20_OU_95lower <- multinom_UAMI20_OU_pred - 2*multinom_UAMI20_OU_SE
          multinom_UAMI20_OU_95width <- multinom_UAMI20_OU_95upper - multinom_UAMI20_OU_95lower
          
          multinom_UAMI20_RT_coverge <- (multinom_UAMI20_RT_95lower < RT_true) & (RT_true < multinom_UAMI20_RT_95upper)
          multinom_UAMI20_UT_coverge <- (multinom_UAMI20_UT_95lower < RT_true) & (UT_true < multinom_UAMI20_UT_95upper)
          multinom_UAMI20_SW_coverge <- (multinom_UAMI20_SW_95lower < RT_true) & (SW_true < multinom_UAMI20_SW_95upper)
          multinom_UAMI20_OU_coverge <- (multinom_UAMI20_OU_95lower < RT_true) & (OU_true < multinom_UAMI20_OU_95upper)
          
          list_multinom_UAMI20_RT_pred <- c(list_multinom_UAMI20_RT_pred, multinom_UAMI20_RT_pred)
          list_multinom_UAMI20_UT_pred <- c(list_multinom_UAMI20_UT_pred, multinom_UAMI20_UT_pred)
          list_multinom_UAMI20_SW_pred <- c(list_multinom_UAMI20_SW_pred, multinom_UAMI20_SW_pred)
          list_multinom_UAMI20_OU_pred <- c(list_multinom_UAMI20_OU_pred, multinom_UAMI20_OU_pred)
          list_multinom_UAMI20_RT_SE <- c(list_multinom_UAMI20_RT_SE, multinom_UAMI20_RT_SE)
          list_multinom_UAMI20_UT_SE <- c(list_multinom_UAMI20_UT_SE, multinom_UAMI20_UT_SE)
          list_multinom_UAMI20_SW_SE <- c(list_multinom_UAMI20_SW_SE, multinom_UAMI20_SW_SE)
          list_multinom_UAMI20_OU_SE <- c(list_multinom_UAMI20_OU_SE, multinom_UAMI20_OU_SE)
          list_multinom_UAMI20_RT_95width <- c(list_multinom_UAMI20_RT_95width, multinom_UAMI20_RT_95width)
          list_multinom_UAMI20_UT_95width <- c(list_multinom_UAMI20_UT_95width, multinom_UAMI20_UT_95width)
          list_multinom_UAMI20_SW_95width <- c(list_multinom_UAMI20_SW_95width, multinom_UAMI20_SW_95width)
          list_multinom_UAMI20_OU_95width <- c(list_multinom_UAMI20_OU_95width, multinom_UAMI20_OU_95width)
          list_multinom_UAMI20_RT_coverge <- c(list_multinom_UAMI20_RT_coverge, multinom_UAMI20_RT_coverge)
          list_multinom_UAMI20_UT_coverge <- c(list_multinom_UAMI20_UT_coverge, multinom_UAMI20_UT_coverge)
          list_multinom_UAMI20_SW_coverge <- c(list_multinom_UAMI20_SW_coverge, multinom_UAMI20_SW_coverge)
          list_multinom_UAMI20_OU_coverge <- c(list_multinom_UAMI20_OU_coverge, multinom_UAMI20_OU_coverge)
        }
      }
      
      #impute UA_5 
      {
        #model
        {
          set.seed(19)
          UAMI_5_multinom_imp <- hotdeck(UA_5) 
          UAMI_5_multinom_imp_datasets <- list()
          
          missing_SEX <- UAMI_5_multinom_imp$SEX_imp
          missing_AGE <- UAMI_5_multinom_imp$AGE_imp
          missing_Indication <- UAMI_5_multinom_imp$Indication_imp
          missing_AntibioticClass <- UAMI_5_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              UAMI_5_multinom_imp$SEX <- factor(UAMI_5_multinom_imp$SEX, labels = levels(simulated$SEX))
              UAMI_5_multinom_imp$AGE <- factor(UAMI_5_multinom_imp$AGE, labels = levels(simulated$AGE))
              UAMI_5_multinom_imp$Indication <- factor(UAMI_5_multinom_imp$Indication, labels = levels(simulated$Indication))
              UAMI_5_multinom_imp$AntibioticClass <- factor(UAMI_5_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_5_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_5_multinom_imp[!is.na(UAMI_5_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_5_multinom_imp[is.na(UAMI_5_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              UAMI_5_multinom_imp$SEX <- as.numeric(UAMI_5_multinom_imp$SEX)
              UAMI_5_multinom_imp$SEX[missing_SEX] <- pred
              
              UAMI_5_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_5_multinom_imp[!is.na(UAMI_5_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = UAMI_5_multinom_imp[is.na(UAMI_5_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_5_multinom_imp$AGE <- as.numeric(UAMI_5_multinom_imp$AGE)
              UAMI_5_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_5_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_5_multinom_imp[!is.na(UAMI_5_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = UAMI_5_multinom_imp[is.na(UAMI_5_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_5_multinom_imp$Indication <- as.numeric(UAMI_5_multinom_imp$Indication)
              UAMI_5_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_5_multinom_imp_datasets <- c(UAMI_5_multinom_imp_datasets, list(UAMI_5_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_UAMI5_RT_pred_2 <- list()
          multinom_UAMI5_UT_pred_2 <- list()
          multinom_UAMI5_SW_pred_2 <- list()
          multinom_UAMI5_OU_pred_2 <- list()
          multinom_UAMI5_RT_SE_2 <- list()
          multinom_UAMI5_UT_SE_2 <- list()
          multinom_UAMI5_SW_SE_2 <- list()
          multinom_UAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_UAMI5_RT_pred_1 <- prop.table(table(UAMI_5_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_UAMI5_RT_pred_2 <- c(multinom_UAMI5_RT_pred_2, multinom_UAMI5_RT_pred_1)
            multinom_UAMI5_UT_pred_1 <- prop.table(table(UAMI_5_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_UAMI5_UT_pred_2 <- c(multinom_UAMI5_UT_pred_2, multinom_UAMI5_UT_pred_1)
            multinom_UAMI5_SW_pred_1 <- prop.table(table(UAMI_5_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_UAMI5_SW_pred_2 <- c(multinom_UAMI5_SW_pred_2, multinom_UAMI5_SW_pred_1)
            multinom_UAMI5_OU_pred_1 <- prop.table(table(UAMI_5_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_UAMI5_OU_pred_2 <- c(multinom_UAMI5_OU_pred_2, multinom_UAMI5_OU_pred_1)
            
            multinom_UAMI5_RT_SE_1 <- sqrt((multinom_UAMI5_RT_pred_1*(1 - multinom_UAMI5_RT_pred_1))/10000)
            multinom_UAMI5_RT_SE_2 <- c(multinom_UAMI5_RT_SE_2, multinom_UAMI5_RT_SE_1)
            multinom_UAMI5_UT_SE_1 <- sqrt((multinom_UAMI5_UT_pred_1*(1 - multinom_UAMI5_UT_pred_1))/10000)
            multinom_UAMI5_UT_SE_2 <- c(multinom_UAMI5_UT_SE_2, multinom_UAMI5_UT_SE_1)
            multinom_UAMI5_SW_SE_1 <- sqrt((multinom_UAMI5_SW_pred_1*(1 - multinom_UAMI5_SW_pred_1))/10000)
            multinom_UAMI5_SW_SE_2 <- c(multinom_UAMI5_SW_SE_2, multinom_UAMI5_SW_SE_1)
            multinom_UAMI5_OU_SE_1 <- sqrt((multinom_UAMI5_OU_pred_1*(1 - multinom_UAMI5_OU_pred_1))/10000)
            multinom_UAMI5_OU_SE_2 <- c(multinom_UAMI5_OU_SE_2, multinom_UAMI5_OU_SE_1)
          }
          
          multinom_UAMI5_RT_pred <- mean(sapply(multinom_UAMI5_RT_pred_2,sum))
          multinom_UAMI5_RT_SE <- function_RR(multinom_UAMI5_RT_pred_2, multinom_UAMI5_RT_SE_2)
          multinom_UAMI5_UT_pred <- mean(sapply(multinom_UAMI5_UT_pred_2,sum))
          multinom_UAMI5_UT_SE <- function_RR(multinom_UAMI5_UT_pred_2, multinom_UAMI5_UT_SE_2)
          multinom_UAMI5_SW_pred <- mean(sapply(multinom_UAMI5_SW_pred_2,sum))
          multinom_UAMI5_SW_SE <- function_RR(multinom_UAMI5_SW_pred_2, multinom_UAMI5_SW_SE_2)
          multinom_UAMI5_OU_pred <- mean(sapply(multinom_UAMI5_OU_pred_2,sum))
          multinom_UAMI5_OU_SE <- function_RR(multinom_UAMI5_OU_pred_2, multinom_UAMI5_OU_SE_2)
          
          
          multinom_UAMI5_RT_95upper <- multinom_UAMI5_RT_pred + 2*multinom_UAMI5_RT_SE
          multinom_UAMI5_RT_95lower <- multinom_UAMI5_RT_pred - 2*multinom_UAMI5_RT_SE
          multinom_UAMI5_RT_95width <- multinom_UAMI5_RT_95upper - multinom_UAMI5_RT_95lower
          multinom_UAMI5_UT_95upper <- multinom_UAMI5_UT_pred + 2*multinom_UAMI5_UT_SE
          multinom_UAMI5_UT_95lower <- multinom_UAMI5_UT_pred - 2*multinom_UAMI5_UT_SE
          multinom_UAMI5_UT_95width <- multinom_UAMI5_UT_95upper - multinom_UAMI5_UT_95lower
          multinom_UAMI5_SW_95upper <- multinom_UAMI5_SW_pred + 2*multinom_UAMI5_SW_SE
          multinom_UAMI5_SW_95lower <- multinom_UAMI5_SW_pred - 2*multinom_UAMI5_SW_SE
          multinom_UAMI5_SW_95width <- multinom_UAMI5_SW_95upper - multinom_UAMI5_SW_95lower
          multinom_UAMI5_OU_95upper <- multinom_UAMI5_OU_pred + 2*multinom_UAMI5_OU_SE
          multinom_UAMI5_OU_95lower <- multinom_UAMI5_OU_pred - 2*multinom_UAMI5_OU_SE
          multinom_UAMI5_OU_95width <- multinom_UAMI5_OU_95upper - multinom_UAMI5_OU_95lower
          
          multinom_UAMI5_RT_coverge <- (multinom_UAMI5_RT_95lower < RT_true) & (RT_true < multinom_UAMI5_RT_95upper)
          multinom_UAMI5_UT_coverge <- (multinom_UAMI5_UT_95lower < RT_true) & (UT_true < multinom_UAMI5_UT_95upper)
          multinom_UAMI5_SW_coverge <- (multinom_UAMI5_SW_95lower < RT_true) & (SW_true < multinom_UAMI5_SW_95upper)
          multinom_UAMI5_OU_coverge <- (multinom_UAMI5_OU_95lower < RT_true) & (OU_true < multinom_UAMI5_OU_95upper)
          
          list_multinom_UAMI5_RT_pred <- c(list_multinom_UAMI5_RT_pred, multinom_UAMI5_RT_pred)
          list_multinom_UAMI5_UT_pred <- c(list_multinom_UAMI5_UT_pred, multinom_UAMI5_UT_pred)
          list_multinom_UAMI5_SW_pred <- c(list_multinom_UAMI5_SW_pred, multinom_UAMI5_SW_pred)
          list_multinom_UAMI5_OU_pred <- c(list_multinom_UAMI5_OU_pred, multinom_UAMI5_OU_pred)
          list_multinom_UAMI5_RT_SE <- c(list_multinom_UAMI5_RT_SE, multinom_UAMI5_RT_SE)
          list_multinom_UAMI5_UT_SE <- c(list_multinom_UAMI5_UT_SE, multinom_UAMI5_UT_SE)
          list_multinom_UAMI5_SW_SE <- c(list_multinom_UAMI5_SW_SE, multinom_UAMI5_SW_SE)
          list_multinom_UAMI5_OU_SE <- c(list_multinom_UAMI5_OU_SE, multinom_UAMI5_OU_SE)
          list_multinom_UAMI5_RT_95width <- c(list_multinom_UAMI5_RT_95width, multinom_UAMI5_RT_95width)
          list_multinom_UAMI5_UT_95width <- c(list_multinom_UAMI5_UT_95width, multinom_UAMI5_UT_95width)
          list_multinom_UAMI5_SW_95width <- c(list_multinom_UAMI5_SW_95width, multinom_UAMI5_SW_95width)
          list_multinom_UAMI5_OU_95width <- c(list_multinom_UAMI5_OU_95width, multinom_UAMI5_OU_95width)
          list_multinom_UAMI5_RT_coverge <- c(list_multinom_UAMI5_RT_coverge, multinom_UAMI5_RT_coverge)
          list_multinom_UAMI5_UT_coverge <- c(list_multinom_UAMI5_UT_coverge, multinom_UAMI5_UT_coverge)
          list_multinom_UAMI5_SW_coverge <- c(list_multinom_UAMI5_SW_coverge, multinom_UAMI5_SW_coverge)
          list_multinom_UAMI5_OU_coverge <- c(list_multinom_UAMI5_OU_coverge, multinom_UAMI5_OU_coverge)
        }
      }
      
      #impute MA_80 
      {
        #model
        {
          set.seed(19)
          MAMI_80_multinom_imp <- hotdeck(MA_80) # Step 1
          MAMI_80_multinom_imp_datasets <- list()
          
          missing_SEX <- MAMI_80_multinom_imp$SEX_imp
          missing_AGE <- MAMI_80_multinom_imp$AGE_imp
          missing_Indication <- MAMI_80_multinom_imp$Indication_imp
          missing_AntibioticClass <- MAMI_80_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # MAxit = Repeat until convergence (Step 6)
              MAMI_80_multinom_imp$SEX <- factor(MAMI_80_multinom_imp$SEX, labels = levels(simulated$SEX))
              MAMI_80_multinom_imp$AGE <- factor(MAMI_80_multinom_imp$AGE, labels = levels(simulated$AGE))
              MAMI_80_multinom_imp$Indication <- factor(MAMI_80_multinom_imp$Indication, labels = levels(simulated$Indication))
              MAMI_80_multinom_imp$AntibioticClass <- factor(MAMI_80_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              # Step 5 -- start
              MAMI_80_multinom_imp$SEX[missing_SEX] <- NA # Step 2
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_80_multinom_imp[!is.na(MAMI_80_multinom_imp$SEX), ], family= multipleClasses) # Step3
              # Step4 -- start
              probs <- predict(multinom_model, newdata = MAMI_80_multinom_imp[is.na(MAMI_80_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MAMI_80_multinom_imp$SEX <- as.numeric(MAMI_80_multinom_imp$SEX)
              MAMI_80_multinom_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              MAMI_80_multinom_imp$AGE[missing_AGE] <- NA # Step 2
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_80_multinom_imp[!is.na(MAMI_80_multinom_imp$AGE), ], family= multipleClasses) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              probs <- predict(multinom_model, newdata = MAMI_80_multinom_imp[is.na(MAMI_80_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_80_multinom_imp$AGE <- as.numeric(MAMI_80_multinom_imp$AGE)
              MAMI_80_multinom_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the reMAining two variables.
              MAMI_80_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_80_multinom_imp[!is.na(MAMI_80_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MAMI_80_multinom_imp[is.na(MAMI_80_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_80_multinom_imp$Indication <- as.numeric(MAMI_80_multinom_imp$Indication)
              MAMI_80_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_80_multinom_imp_datasets <- c(MAMI_80_multinom_imp_datasets, list(MAMI_80_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_MAMI80_RT_pred_2 <- list()
          multinom_MAMI80_UT_pred_2 <- list()
          multinom_MAMI80_SW_pred_2 <- list()
          multinom_MAMI80_OU_pred_2 <- list()
          multinom_MAMI80_RT_SE_2 <- list()
          multinom_MAMI80_UT_SE_2 <- list()
          multinom_MAMI80_SW_SE_2 <- list()
          multinom_MAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_MAMI80_RT_pred_1 <- prop.table(table(MAMI_80_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_MAMI80_RT_pred_2 <- c(multinom_MAMI80_RT_pred_2, multinom_MAMI80_RT_pred_1)
            multinom_MAMI80_UT_pred_1 <- prop.table(table(MAMI_80_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_MAMI80_UT_pred_2 <- c(multinom_MAMI80_UT_pred_2, multinom_MAMI80_UT_pred_1)
            multinom_MAMI80_SW_pred_1 <- prop.table(table(MAMI_80_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_MAMI80_SW_pred_2 <- c(multinom_MAMI80_SW_pred_2, multinom_MAMI80_SW_pred_1)
            multinom_MAMI80_OU_pred_1 <- prop.table(table(MAMI_80_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_MAMI80_OU_pred_2 <- c(multinom_MAMI80_OU_pred_2, multinom_MAMI80_OU_pred_1)
            
            multinom_MAMI80_RT_SE_1 <- sqrt((multinom_MAMI80_RT_pred_1*(1 - multinom_MAMI80_RT_pred_1))/10000)
            multinom_MAMI80_RT_SE_2 <- c(multinom_MAMI80_RT_SE_2, multinom_MAMI80_RT_SE_1)
            multinom_MAMI80_UT_SE_1 <- sqrt((multinom_MAMI80_UT_pred_1*(1 - multinom_MAMI80_UT_pred_1))/10000)
            multinom_MAMI80_UT_SE_2 <- c(multinom_MAMI80_UT_SE_2, multinom_MAMI80_UT_SE_1)
            multinom_MAMI80_SW_SE_1 <- sqrt((multinom_MAMI80_SW_pred_1*(1 - multinom_MAMI80_SW_pred_1))/10000)
            multinom_MAMI80_SW_SE_2 <- c(multinom_MAMI80_SW_SE_2, multinom_MAMI80_SW_SE_1)
            multinom_MAMI80_OU_SE_1 <- sqrt((multinom_MAMI80_OU_pred_1*(1 - multinom_MAMI80_OU_pred_1))/10000)
            multinom_MAMI80_OU_SE_2 <- c(multinom_MAMI80_OU_SE_2, multinom_MAMI80_OU_SE_1)
          }
          
          multinom_MAMI80_RT_pred <- mean(sapply(multinom_MAMI80_RT_pred_2,sum))
          multinom_MAMI80_RT_SE <- function_RR(multinom_MAMI80_RT_pred_2, multinom_MAMI80_RT_SE_2)
          multinom_MAMI80_UT_pred <- mean(sapply(multinom_MAMI80_UT_pred_2,sum))
          multinom_MAMI80_UT_SE <- function_RR(multinom_MAMI80_UT_pred_2, multinom_MAMI80_UT_SE_2)
          multinom_MAMI80_SW_pred <- mean(sapply(multinom_MAMI80_SW_pred_2,sum))
          multinom_MAMI80_SW_SE <- function_RR(multinom_MAMI80_SW_pred_2, multinom_MAMI80_SW_SE_2)
          multinom_MAMI80_OU_pred <- mean(sapply(multinom_MAMI80_OU_pred_2,sum))
          multinom_MAMI80_OU_SE <- function_RR(multinom_MAMI80_OU_pred_2, multinom_MAMI80_OU_SE_2)
          
          
          multinom_MAMI80_RT_95upper <- multinom_MAMI80_RT_pred + 2*multinom_MAMI80_RT_SE
          multinom_MAMI80_RT_95lower <- multinom_MAMI80_RT_pred - 2*multinom_MAMI80_RT_SE
          multinom_MAMI80_RT_95width <- multinom_MAMI80_RT_95upper - multinom_MAMI80_RT_95lower
          multinom_MAMI80_UT_95upper <- multinom_MAMI80_UT_pred + 2*multinom_MAMI80_UT_SE
          multinom_MAMI80_UT_95lower <- multinom_MAMI80_UT_pred - 2*multinom_MAMI80_UT_SE
          multinom_MAMI80_UT_95width <- multinom_MAMI80_UT_95upper - multinom_MAMI80_UT_95lower
          multinom_MAMI80_SW_95upper <- multinom_MAMI80_SW_pred + 2*multinom_MAMI80_SW_SE
          multinom_MAMI80_SW_95lower <- multinom_MAMI80_SW_pred - 2*multinom_MAMI80_SW_SE
          multinom_MAMI80_SW_95width <- multinom_MAMI80_SW_95upper - multinom_MAMI80_SW_95lower
          multinom_MAMI80_OU_95upper <- multinom_MAMI80_OU_pred + 2*multinom_MAMI80_OU_SE
          multinom_MAMI80_OU_95lower <- multinom_MAMI80_OU_pred - 2*multinom_MAMI80_OU_SE
          multinom_MAMI80_OU_95width <- multinom_MAMI80_OU_95upper - multinom_MAMI80_OU_95lower
          
          multinom_MAMI80_RT_coverge <- (multinom_MAMI80_RT_95lower < RT_true) & (RT_true < multinom_MAMI80_RT_95upper)
          multinom_MAMI80_UT_coverge <- (multinom_MAMI80_UT_95lower < RT_true) & (UT_true < multinom_MAMI80_UT_95upper)
          multinom_MAMI80_SW_coverge <- (multinom_MAMI80_SW_95lower < RT_true) & (SW_true < multinom_MAMI80_SW_95upper)
          multinom_MAMI80_OU_coverge <- (multinom_MAMI80_OU_95lower < RT_true) & (OU_true < multinom_MAMI80_OU_95upper)
          
          list_multinom_MAMI80_RT_pred <- c(list_multinom_MAMI80_RT_pred, multinom_MAMI80_RT_pred)
          list_multinom_MAMI80_UT_pred <- c(list_multinom_MAMI80_UT_pred, multinom_MAMI80_UT_pred)
          list_multinom_MAMI80_SW_pred <- c(list_multinom_MAMI80_SW_pred, multinom_MAMI80_SW_pred)
          list_multinom_MAMI80_OU_pred <- c(list_multinom_MAMI80_OU_pred, multinom_MAMI80_OU_pred)
          list_multinom_MAMI80_RT_SE <- c(list_multinom_MAMI80_RT_SE, multinom_MAMI80_RT_SE)
          list_multinom_MAMI80_UT_SE <- c(list_multinom_MAMI80_UT_SE, multinom_MAMI80_UT_SE)
          list_multinom_MAMI80_SW_SE <- c(list_multinom_MAMI80_SW_SE, multinom_MAMI80_SW_SE)
          list_multinom_MAMI80_OU_SE <- c(list_multinom_MAMI80_OU_SE, multinom_MAMI80_OU_SE)
          list_multinom_MAMI80_RT_95width <- c(list_multinom_MAMI80_RT_95width, multinom_MAMI80_RT_95width)
          list_multinom_MAMI80_UT_95width <- c(list_multinom_MAMI80_UT_95width, multinom_MAMI80_UT_95width)
          list_multinom_MAMI80_SW_95width <- c(list_multinom_MAMI80_SW_95width, multinom_MAMI80_SW_95width)
          list_multinom_MAMI80_OU_95width <- c(list_multinom_MAMI80_OU_95width, multinom_MAMI80_OU_95width)
          list_multinom_MAMI80_RT_coverge <- c(list_multinom_MAMI80_RT_coverge, multinom_MAMI80_RT_coverge)
          list_multinom_MAMI80_UT_coverge <- c(list_multinom_MAMI80_UT_coverge, multinom_MAMI80_UT_coverge)
          list_multinom_MAMI80_SW_coverge <- c(list_multinom_MAMI80_SW_coverge, multinom_MAMI80_SW_coverge)
          list_multinom_MAMI80_OU_coverge <- c(list_multinom_MAMI80_OU_coverge, multinom_MAMI80_OU_coverge)
        }
      }
      
      #impute MA_50 
      {
        #model
        {
          set.seed(19)
          MAMI_50_multinom_imp <- hotdeck(MA_50) 
          MAMI_50_multinom_imp_datasets <- list()
          
          missing_SEX <- MAMI_50_multinom_imp$SEX_imp
          missing_AGE <- MAMI_50_multinom_imp$AGE_imp
          missing_Indication <- MAMI_50_multinom_imp$Indication_imp
          missing_AntibioticClass <- MAMI_50_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              MAMI_50_multinom_imp$SEX <- factor(MAMI_50_multinom_imp$SEX, labels = levels(simulated$SEX))
              MAMI_50_multinom_imp$AGE <- factor(MAMI_50_multinom_imp$AGE, labels = levels(simulated$AGE))
              MAMI_50_multinom_imp$Indication <- factor(MAMI_50_multinom_imp$Indication, labels = levels(simulated$Indication))
              MAMI_50_multinom_imp$AntibioticClass <- factor(MAMI_50_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_50_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_50_multinom_imp[!is.na(MAMI_50_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_50_multinom_imp[is.na(MAMI_50_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MAMI_50_multinom_imp$SEX <- as.numeric(MAMI_50_multinom_imp$SEX)
              MAMI_50_multinom_imp$SEX[missing_SEX] <- pred
              
              MAMI_50_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_50_multinom_imp[!is.na(MAMI_50_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_50_multinom_imp[is.na(MAMI_50_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_50_multinom_imp$AGE <- as.numeric(MAMI_50_multinom_imp$AGE)
              MAMI_50_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_50_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_50_multinom_imp[!is.na(MAMI_50_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MAMI_50_multinom_imp[is.na(MAMI_50_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_50_multinom_imp$Indication <- as.numeric(MAMI_50_multinom_imp$Indication)
              MAMI_50_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_50_multinom_imp_datasets <- c(MAMI_50_multinom_imp_datasets, list(MAMI_50_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_MAMI50_RT_pred_2 <- list()
          multinom_MAMI50_UT_pred_2 <- list()
          multinom_MAMI50_SW_pred_2 <- list()
          multinom_MAMI50_OU_pred_2 <- list()
          multinom_MAMI50_RT_SE_2 <- list()
          multinom_MAMI50_UT_SE_2 <- list()
          multinom_MAMI50_SW_SE_2 <- list()
          multinom_MAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_MAMI50_RT_pred_1 <- prop.table(table(MAMI_50_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_MAMI50_RT_pred_2 <- c(multinom_MAMI50_RT_pred_2, multinom_MAMI50_RT_pred_1)
            multinom_MAMI50_UT_pred_1 <- prop.table(table(MAMI_50_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_MAMI50_UT_pred_2 <- c(multinom_MAMI50_UT_pred_2, multinom_MAMI50_UT_pred_1)
            multinom_MAMI50_SW_pred_1 <- prop.table(table(MAMI_50_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_MAMI50_SW_pred_2 <- c(multinom_MAMI50_SW_pred_2, multinom_MAMI50_SW_pred_1)
            multinom_MAMI50_OU_pred_1 <- prop.table(table(MAMI_50_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_MAMI50_OU_pred_2 <- c(multinom_MAMI50_OU_pred_2, multinom_MAMI50_OU_pred_1)
            
            multinom_MAMI50_RT_SE_1 <- sqrt((multinom_MAMI50_RT_pred_1*(1 - multinom_MAMI50_RT_pred_1))/10000)
            multinom_MAMI50_RT_SE_2 <- c(multinom_MAMI50_RT_SE_2, multinom_MAMI50_RT_SE_1)
            multinom_MAMI50_UT_SE_1 <- sqrt((multinom_MAMI50_UT_pred_1*(1 - multinom_MAMI50_UT_pred_1))/10000)
            multinom_MAMI50_UT_SE_2 <- c(multinom_MAMI50_UT_SE_2, multinom_MAMI50_UT_SE_1)
            multinom_MAMI50_SW_SE_1 <- sqrt((multinom_MAMI50_SW_pred_1*(1 - multinom_MAMI50_SW_pred_1))/10000)
            multinom_MAMI50_SW_SE_2 <- c(multinom_MAMI50_SW_SE_2, multinom_MAMI50_SW_SE_1)
            multinom_MAMI50_OU_SE_1 <- sqrt((multinom_MAMI50_OU_pred_1*(1 - multinom_MAMI50_OU_pred_1))/10000)
            multinom_MAMI50_OU_SE_2 <- c(multinom_MAMI50_OU_SE_2, multinom_MAMI50_OU_SE_1)
          }
          
          multinom_MAMI50_RT_pred <- mean(sapply(multinom_MAMI50_RT_pred_2,sum))
          multinom_MAMI50_RT_SE <- function_RR(multinom_MAMI50_RT_pred_2, multinom_MAMI50_RT_SE_2)
          multinom_MAMI50_UT_pred <- mean(sapply(multinom_MAMI50_UT_pred_2,sum))
          multinom_MAMI50_UT_SE <- function_RR(multinom_MAMI50_UT_pred_2, multinom_MAMI50_UT_SE_2)
          multinom_MAMI50_SW_pred <- mean(sapply(multinom_MAMI50_SW_pred_2,sum))
          multinom_MAMI50_SW_SE <- function_RR(multinom_MAMI50_SW_pred_2, multinom_MAMI50_SW_SE_2)
          multinom_MAMI50_OU_pred <- mean(sapply(multinom_MAMI50_OU_pred_2,sum))
          multinom_MAMI50_OU_SE <- function_RR(multinom_MAMI50_OU_pred_2, multinom_MAMI50_OU_SE_2)
          
          
          multinom_MAMI50_RT_95upper <- multinom_MAMI50_RT_pred + 2*multinom_MAMI50_RT_SE
          multinom_MAMI50_RT_95lower <- multinom_MAMI50_RT_pred - 2*multinom_MAMI50_RT_SE
          multinom_MAMI50_RT_95width <- multinom_MAMI50_RT_95upper - multinom_MAMI50_RT_95lower
          multinom_MAMI50_UT_95upper <- multinom_MAMI50_UT_pred + 2*multinom_MAMI50_UT_SE
          multinom_MAMI50_UT_95lower <- multinom_MAMI50_UT_pred - 2*multinom_MAMI50_UT_SE
          multinom_MAMI50_UT_95width <- multinom_MAMI50_UT_95upper - multinom_MAMI50_UT_95lower
          multinom_MAMI50_SW_95upper <- multinom_MAMI50_SW_pred + 2*multinom_MAMI50_SW_SE
          multinom_MAMI50_SW_95lower <- multinom_MAMI50_SW_pred - 2*multinom_MAMI50_SW_SE
          multinom_MAMI50_SW_95width <- multinom_MAMI50_SW_95upper - multinom_MAMI50_SW_95lower
          multinom_MAMI50_OU_95upper <- multinom_MAMI50_OU_pred + 2*multinom_MAMI50_OU_SE
          multinom_MAMI50_OU_95lower <- multinom_MAMI50_OU_pred - 2*multinom_MAMI50_OU_SE
          multinom_MAMI50_OU_95width <- multinom_MAMI50_OU_95upper - multinom_MAMI50_OU_95lower
          
          multinom_MAMI50_RT_coverge <- (multinom_MAMI50_RT_95lower < RT_true) & (RT_true < multinom_MAMI50_RT_95upper)
          multinom_MAMI50_UT_coverge <- (multinom_MAMI50_UT_95lower < RT_true) & (UT_true < multinom_MAMI50_UT_95upper)
          multinom_MAMI50_SW_coverge <- (multinom_MAMI50_SW_95lower < RT_true) & (SW_true < multinom_MAMI50_SW_95upper)
          multinom_MAMI50_OU_coverge <- (multinom_MAMI50_OU_95lower < RT_true) & (OU_true < multinom_MAMI50_OU_95upper)
          
          list_multinom_MAMI50_RT_pred <- c(list_multinom_MAMI50_RT_pred, multinom_MAMI50_RT_pred)
          list_multinom_MAMI50_UT_pred <- c(list_multinom_MAMI50_UT_pred, multinom_MAMI50_UT_pred)
          list_multinom_MAMI50_SW_pred <- c(list_multinom_MAMI50_SW_pred, multinom_MAMI50_SW_pred)
          list_multinom_MAMI50_OU_pred <- c(list_multinom_MAMI50_OU_pred, multinom_MAMI50_OU_pred)
          list_multinom_MAMI50_RT_SE <- c(list_multinom_MAMI50_RT_SE, multinom_MAMI50_RT_SE)
          list_multinom_MAMI50_UT_SE <- c(list_multinom_MAMI50_UT_SE, multinom_MAMI50_UT_SE)
          list_multinom_MAMI50_SW_SE <- c(list_multinom_MAMI50_SW_SE, multinom_MAMI50_SW_SE)
          list_multinom_MAMI50_OU_SE <- c(list_multinom_MAMI50_OU_SE, multinom_MAMI50_OU_SE)
          list_multinom_MAMI50_RT_95width <- c(list_multinom_MAMI50_RT_95width, multinom_MAMI50_RT_95width)
          list_multinom_MAMI50_UT_95width <- c(list_multinom_MAMI50_UT_95width, multinom_MAMI50_UT_95width)
          list_multinom_MAMI50_SW_95width <- c(list_multinom_MAMI50_SW_95width, multinom_MAMI50_SW_95width)
          list_multinom_MAMI50_OU_95width <- c(list_multinom_MAMI50_OU_95width, multinom_MAMI50_OU_95width)
          list_multinom_MAMI50_RT_coverge <- c(list_multinom_MAMI50_RT_coverge, multinom_MAMI50_RT_coverge)
          list_multinom_MAMI50_UT_coverge <- c(list_multinom_MAMI50_UT_coverge, multinom_MAMI50_UT_coverge)
          list_multinom_MAMI50_SW_coverge <- c(list_multinom_MAMI50_SW_coverge, multinom_MAMI50_SW_coverge)
          list_multinom_MAMI50_OU_coverge <- c(list_multinom_MAMI50_OU_coverge, multinom_MAMI50_OU_coverge)
        }
      }
      
      #impute MA_20 
      {
        #model
        {
          set.seed(19)
          MAMI_20_multinom_imp <- hotdeck(MA_20) 
          MAMI_20_multinom_imp_datasets <- list()
          
          missing_SEX <- MAMI_20_multinom_imp$SEX_imp
          missing_AGE <- MAMI_20_multinom_imp$AGE_imp
          missing_Indication <- MAMI_20_multinom_imp$Indication_imp
          missing_AntibioticClass <- MAMI_20_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              MAMI_20_multinom_imp$SEX <- factor(MAMI_20_multinom_imp$SEX, labels = levels(simulated$SEX))
              MAMI_20_multinom_imp$AGE <- factor(MAMI_20_multinom_imp$AGE, labels = levels(simulated$AGE))
              MAMI_20_multinom_imp$Indication <- factor(MAMI_20_multinom_imp$Indication, labels = levels(simulated$Indication))
              MAMI_20_multinom_imp$AntibioticClass <- factor(MAMI_20_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_20_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_20_multinom_imp[!is.na(MAMI_20_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_20_multinom_imp[is.na(MAMI_20_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MAMI_20_multinom_imp$SEX <- as.numeric(MAMI_20_multinom_imp$SEX)
              MAMI_20_multinom_imp$SEX[missing_SEX] <- pred
              
              MAMI_20_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_20_multinom_imp[!is.na(MAMI_20_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_20_multinom_imp[is.na(MAMI_20_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_20_multinom_imp$AGE <- as.numeric(MAMI_20_multinom_imp$AGE)
              MAMI_20_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_20_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_20_multinom_imp[!is.na(MAMI_20_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MAMI_20_multinom_imp[is.na(MAMI_20_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_20_multinom_imp$Indication <- as.numeric(MAMI_20_multinom_imp$Indication)
              MAMI_20_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_20_multinom_imp_datasets <- c(MAMI_20_multinom_imp_datasets, list(MAMI_20_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_MAMI20_RT_pred_2 <- list()
          multinom_MAMI20_UT_pred_2 <- list()
          multinom_MAMI20_SW_pred_2 <- list()
          multinom_MAMI20_OU_pred_2 <- list()
          multinom_MAMI20_RT_SE_2 <- list()
          multinom_MAMI20_UT_SE_2 <- list()
          multinom_MAMI20_SW_SE_2 <- list()
          multinom_MAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_MAMI20_RT_pred_1 <- prop.table(table(MAMI_20_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_MAMI20_RT_pred_2 <- c(multinom_MAMI20_RT_pred_2, multinom_MAMI20_RT_pred_1)
            multinom_MAMI20_UT_pred_1 <- prop.table(table(MAMI_20_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_MAMI20_UT_pred_2 <- c(multinom_MAMI20_UT_pred_2, multinom_MAMI20_UT_pred_1)
            multinom_MAMI20_SW_pred_1 <- prop.table(table(MAMI_20_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_MAMI20_SW_pred_2 <- c(multinom_MAMI20_SW_pred_2, multinom_MAMI20_SW_pred_1)
            multinom_MAMI20_OU_pred_1 <- prop.table(table(MAMI_20_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_MAMI20_OU_pred_2 <- c(multinom_MAMI20_OU_pred_2, multinom_MAMI20_OU_pred_1)
            
            multinom_MAMI20_RT_SE_1 <- sqrt((multinom_MAMI20_RT_pred_1*(1 - multinom_MAMI20_RT_pred_1))/10000)
            multinom_MAMI20_RT_SE_2 <- c(multinom_MAMI20_RT_SE_2, multinom_MAMI20_RT_SE_1)
            multinom_MAMI20_UT_SE_1 <- sqrt((multinom_MAMI20_UT_pred_1*(1 - multinom_MAMI20_UT_pred_1))/10000)
            multinom_MAMI20_UT_SE_2 <- c(multinom_MAMI20_UT_SE_2, multinom_MAMI20_UT_SE_1)
            multinom_MAMI20_SW_SE_1 <- sqrt((multinom_MAMI20_SW_pred_1*(1 - multinom_MAMI20_SW_pred_1))/10000)
            multinom_MAMI20_SW_SE_2 <- c(multinom_MAMI20_SW_SE_2, multinom_MAMI20_SW_SE_1)
            multinom_MAMI20_OU_SE_1 <- sqrt((multinom_MAMI20_OU_pred_1*(1 - multinom_MAMI20_OU_pred_1))/10000)
            multinom_MAMI20_OU_SE_2 <- c(multinom_MAMI20_OU_SE_2, multinom_MAMI20_OU_SE_1)
          }
          
          multinom_MAMI20_RT_pred <- mean(sapply(multinom_MAMI20_RT_pred_2,sum))
          multinom_MAMI20_RT_SE <- function_RR(multinom_MAMI20_RT_pred_2, multinom_MAMI20_RT_SE_2)
          multinom_MAMI20_UT_pred <- mean(sapply(multinom_MAMI20_UT_pred_2,sum))
          multinom_MAMI20_UT_SE <- function_RR(multinom_MAMI20_UT_pred_2, multinom_MAMI20_UT_SE_2)
          multinom_MAMI20_SW_pred <- mean(sapply(multinom_MAMI20_SW_pred_2,sum))
          multinom_MAMI20_SW_SE <- function_RR(multinom_MAMI20_SW_pred_2, multinom_MAMI20_SW_SE_2)
          multinom_MAMI20_OU_pred <- mean(sapply(multinom_MAMI20_OU_pred_2,sum))
          multinom_MAMI20_OU_SE <- function_RR(multinom_MAMI20_OU_pred_2, multinom_MAMI20_OU_SE_2)
          
          
          multinom_MAMI20_RT_95upper <- multinom_MAMI20_RT_pred + 2*multinom_MAMI20_RT_SE
          multinom_MAMI20_RT_95lower <- multinom_MAMI20_RT_pred - 2*multinom_MAMI20_RT_SE
          multinom_MAMI20_RT_95width <- multinom_MAMI20_RT_95upper - multinom_MAMI20_RT_95lower
          multinom_MAMI20_UT_95upper <- multinom_MAMI20_UT_pred + 2*multinom_MAMI20_UT_SE
          multinom_MAMI20_UT_95lower <- multinom_MAMI20_UT_pred - 2*multinom_MAMI20_UT_SE
          multinom_MAMI20_UT_95width <- multinom_MAMI20_UT_95upper - multinom_MAMI20_UT_95lower
          multinom_MAMI20_SW_95upper <- multinom_MAMI20_SW_pred + 2*multinom_MAMI20_SW_SE
          multinom_MAMI20_SW_95lower <- multinom_MAMI20_SW_pred - 2*multinom_MAMI20_SW_SE
          multinom_MAMI20_SW_95width <- multinom_MAMI20_SW_95upper - multinom_MAMI20_SW_95lower
          multinom_MAMI20_OU_95upper <- multinom_MAMI20_OU_pred + 2*multinom_MAMI20_OU_SE
          multinom_MAMI20_OU_95lower <- multinom_MAMI20_OU_pred - 2*multinom_MAMI20_OU_SE
          multinom_MAMI20_OU_95width <- multinom_MAMI20_OU_95upper - multinom_MAMI20_OU_95lower
          
          multinom_MAMI20_RT_coverge <- (multinom_MAMI20_RT_95lower < RT_true) & (RT_true < multinom_MAMI20_RT_95upper)
          multinom_MAMI20_UT_coverge <- (multinom_MAMI20_UT_95lower < RT_true) & (UT_true < multinom_MAMI20_UT_95upper)
          multinom_MAMI20_SW_coverge <- (multinom_MAMI20_SW_95lower < RT_true) & (SW_true < multinom_MAMI20_SW_95upper)
          multinom_MAMI20_OU_coverge <- (multinom_MAMI20_OU_95lower < RT_true) & (OU_true < multinom_MAMI20_OU_95upper)
          
          list_multinom_MAMI20_RT_pred <- c(list_multinom_MAMI20_RT_pred, multinom_MAMI20_RT_pred)
          list_multinom_MAMI20_UT_pred <- c(list_multinom_MAMI20_UT_pred, multinom_MAMI20_UT_pred)
          list_multinom_MAMI20_SW_pred <- c(list_multinom_MAMI20_SW_pred, multinom_MAMI20_SW_pred)
          list_multinom_MAMI20_OU_pred <- c(list_multinom_MAMI20_OU_pred, multinom_MAMI20_OU_pred)
          list_multinom_MAMI20_RT_SE <- c(list_multinom_MAMI20_RT_SE, multinom_MAMI20_RT_SE)
          list_multinom_MAMI20_UT_SE <- c(list_multinom_MAMI20_UT_SE, multinom_MAMI20_UT_SE)
          list_multinom_MAMI20_SW_SE <- c(list_multinom_MAMI20_SW_SE, multinom_MAMI20_SW_SE)
          list_multinom_MAMI20_OU_SE <- c(list_multinom_MAMI20_OU_SE, multinom_MAMI20_OU_SE)
          list_multinom_MAMI20_RT_95width <- c(list_multinom_MAMI20_RT_95width, multinom_MAMI20_RT_95width)
          list_multinom_MAMI20_UT_95width <- c(list_multinom_MAMI20_UT_95width, multinom_MAMI20_UT_95width)
          list_multinom_MAMI20_SW_95width <- c(list_multinom_MAMI20_SW_95width, multinom_MAMI20_SW_95width)
          list_multinom_MAMI20_OU_95width <- c(list_multinom_MAMI20_OU_95width, multinom_MAMI20_OU_95width)
          list_multinom_MAMI20_RT_coverge <- c(list_multinom_MAMI20_RT_coverge, multinom_MAMI20_RT_coverge)
          list_multinom_MAMI20_UT_coverge <- c(list_multinom_MAMI20_UT_coverge, multinom_MAMI20_UT_coverge)
          list_multinom_MAMI20_SW_coverge <- c(list_multinom_MAMI20_SW_coverge, multinom_MAMI20_SW_coverge)
          list_multinom_MAMI20_OU_coverge <- c(list_multinom_MAMI20_OU_coverge, multinom_MAMI20_OU_coverge)
        }
      }
      
      #impute MA_5 
      {
        #model
        {
          set.seed(19)
          MAMI_5_multinom_imp <- hotdeck(MA_5) 
          MAMI_5_multinom_imp_datasets <- list()
          
          missing_SEX <- MAMI_5_multinom_imp$SEX_imp
          missing_AGE <- MAMI_5_multinom_imp$AGE_imp
          missing_Indication <- MAMI_5_multinom_imp$Indication_imp
          missing_AntibioticClass <- MAMI_5_multinom_imp$AntibioticClass_imp
          
          for(j in 1:5){ 
            for(m in 1:10){ 
              MAMI_5_multinom_imp$SEX <- factor(MAMI_5_multinom_imp$SEX, labels = levels(simulated$SEX))
              MAMI_5_multinom_imp$AGE <- factor(MAMI_5_multinom_imp$AGE, labels = levels(simulated$AGE))
              MAMI_5_multinom_imp$Indication <- factor(MAMI_5_multinom_imp$Indication, labels = levels(simulated$Indication))
              MAMI_5_multinom_imp$AntibioticClass <- factor(MAMI_5_multinom_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_5_multinom_imp$SEX[missing_SEX] <- NA 
              multinom_model <- multinom(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_5_multinom_imp[!is.na(MAMI_5_multinom_imp$SEX), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_5_multinom_imp[is.na(MAMI_5_multinom_imp$SEX), ], type = "probs")
              pred <- rbinom(length(probs), size = 1, prob = probs) + 1
              MAMI_5_multinom_imp$SEX <- as.numeric(MAMI_5_multinom_imp$SEX)
              MAMI_5_multinom_imp$SEX[missing_SEX] <- pred
              
              MAMI_5_multinom_imp$AGE[missing_AGE] <- NA 
              multinom_model <- multinom(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_5_multinom_imp[!is.na(MAMI_5_multinom_imp$AGE), ], family= multipleClasses) 
              probs <- predict(multinom_model, newdata = MAMI_5_multinom_imp[is.na(MAMI_5_multinom_imp$AGE), ], type = "probs")
              pred_AGE <- vector()
              for (i in 1:(length(probs)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=probs[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_5_multinom_imp$AGE <- as.numeric(MAMI_5_multinom_imp$AGE)
              MAMI_5_multinom_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_5_multinom_imp$Indication[missing_Indication] <- NA
              multinom_model <- multinom(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_5_multinom_imp[!is.na(MAMI_5_multinom_imp$Indication), ], family= multipleClasses)
              probs <- predict(multinom_model, newdata = MAMI_5_multinom_imp[is.na(MAMI_5_multinom_imp$Indication), ], type = "probs")
              pred_Indication <- vector()
              for (i in 1:(length(probs)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=probs[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_5_multinom_imp$Indication <- as.numeric(MAMI_5_multinom_imp$Indication)
              MAMI_5_multinom_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_5_multinom_imp_datasets <- c(MAMI_5_multinom_imp_datasets, list(MAMI_5_multinom_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          multinom_MAMI5_RT_pred_2 <- list()
          multinom_MAMI5_UT_pred_2 <- list()
          multinom_MAMI5_SW_pred_2 <- list()
          multinom_MAMI5_OU_pred_2 <- list()
          multinom_MAMI5_RT_SE_2 <- list()
          multinom_MAMI5_UT_SE_2 <- list()
          multinom_MAMI5_SW_SE_2 <- list()
          multinom_MAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            multinom_MAMI5_RT_pred_1 <- prop.table(table(MAMI_5_multinom_imp_datasets[[i]]$Indication))[1]
            multinom_MAMI5_RT_pred_2 <- c(multinom_MAMI5_RT_pred_2, multinom_MAMI5_RT_pred_1)
            multinom_MAMI5_UT_pred_1 <- prop.table(table(MAMI_5_multinom_imp_datasets[[i]]$Indication))[2]
            multinom_MAMI5_UT_pred_2 <- c(multinom_MAMI5_UT_pred_2, multinom_MAMI5_UT_pred_1)
            multinom_MAMI5_SW_pred_1 <- prop.table(table(MAMI_5_multinom_imp_datasets[[i]]$Indication))[3]
            multinom_MAMI5_SW_pred_2 <- c(multinom_MAMI5_SW_pred_2, multinom_MAMI5_SW_pred_1)
            multinom_MAMI5_OU_pred_1 <- prop.table(table(MAMI_5_multinom_imp_datasets[[i]]$Indication))[4]
            multinom_MAMI5_OU_pred_2 <- c(multinom_MAMI5_OU_pred_2, multinom_MAMI5_OU_pred_1)
            
            multinom_MAMI5_RT_SE_1 <- sqrt((multinom_MAMI5_RT_pred_1*(1 - multinom_MAMI5_RT_pred_1))/10000)
            multinom_MAMI5_RT_SE_2 <- c(multinom_MAMI5_RT_SE_2, multinom_MAMI5_RT_SE_1)
            multinom_MAMI5_UT_SE_1 <- sqrt((multinom_MAMI5_UT_pred_1*(1 - multinom_MAMI5_UT_pred_1))/10000)
            multinom_MAMI5_UT_SE_2 <- c(multinom_MAMI5_UT_SE_2, multinom_MAMI5_UT_SE_1)
            multinom_MAMI5_SW_SE_1 <- sqrt((multinom_MAMI5_SW_pred_1*(1 - multinom_MAMI5_SW_pred_1))/10000)
            multinom_MAMI5_SW_SE_2 <- c(multinom_MAMI5_SW_SE_2, multinom_MAMI5_SW_SE_1)
            multinom_MAMI5_OU_SE_1 <- sqrt((multinom_MAMI5_OU_pred_1*(1 - multinom_MAMI5_OU_pred_1))/10000)
            multinom_MAMI5_OU_SE_2 <- c(multinom_MAMI5_OU_SE_2, multinom_MAMI5_OU_SE_1)
          }
          
          multinom_MAMI5_RT_pred <- mean(sapply(multinom_MAMI5_RT_pred_2,sum))
          multinom_MAMI5_RT_SE <- function_RR(multinom_MAMI5_RT_pred_2, multinom_MAMI5_RT_SE_2)
          multinom_MAMI5_UT_pred <- mean(sapply(multinom_MAMI5_UT_pred_2,sum))
          multinom_MAMI5_UT_SE <- function_RR(multinom_MAMI5_UT_pred_2, multinom_MAMI5_UT_SE_2)
          multinom_MAMI5_SW_pred <- mean(sapply(multinom_MAMI5_SW_pred_2,sum))
          multinom_MAMI5_SW_SE <- function_RR(multinom_MAMI5_SW_pred_2, multinom_MAMI5_SW_SE_2)
          multinom_MAMI5_OU_pred <- mean(sapply(multinom_MAMI5_OU_pred_2,sum))
          multinom_MAMI5_OU_SE <- function_RR(multinom_MAMI5_OU_pred_2, multinom_MAMI5_OU_SE_2)
          
          
          multinom_MAMI5_RT_95upper <- multinom_MAMI5_RT_pred + 2*multinom_MAMI5_RT_SE
          multinom_MAMI5_RT_95lower <- multinom_MAMI5_RT_pred - 2*multinom_MAMI5_RT_SE
          multinom_MAMI5_RT_95width <- multinom_MAMI5_RT_95upper - multinom_MAMI5_RT_95lower
          multinom_MAMI5_UT_95upper <- multinom_MAMI5_UT_pred + 2*multinom_MAMI5_UT_SE
          multinom_MAMI5_UT_95lower <- multinom_MAMI5_UT_pred - 2*multinom_MAMI5_UT_SE
          multinom_MAMI5_UT_95width <- multinom_MAMI5_UT_95upper - multinom_MAMI5_UT_95lower
          multinom_MAMI5_SW_95upper <- multinom_MAMI5_SW_pred + 2*multinom_MAMI5_SW_SE
          multinom_MAMI5_SW_95lower <- multinom_MAMI5_SW_pred - 2*multinom_MAMI5_SW_SE
          multinom_MAMI5_SW_95width <- multinom_MAMI5_SW_95upper - multinom_MAMI5_SW_95lower
          multinom_MAMI5_OU_95upper <- multinom_MAMI5_OU_pred + 2*multinom_MAMI5_OU_SE
          multinom_MAMI5_OU_95lower <- multinom_MAMI5_OU_pred - 2*multinom_MAMI5_OU_SE
          multinom_MAMI5_OU_95width <- multinom_MAMI5_OU_95upper - multinom_MAMI5_OU_95lower
          
          multinom_MAMI5_RT_coverge <- (multinom_MAMI5_RT_95lower < RT_true) & (RT_true < multinom_MAMI5_RT_95upper)
          multinom_MAMI5_UT_coverge <- (multinom_MAMI5_UT_95lower < RT_true) & (UT_true < multinom_MAMI5_UT_95upper)
          multinom_MAMI5_SW_coverge <- (multinom_MAMI5_SW_95lower < RT_true) & (SW_true < multinom_MAMI5_SW_95upper)
          multinom_MAMI5_OU_coverge <- (multinom_MAMI5_OU_95lower < RT_true) & (OU_true < multinom_MAMI5_OU_95upper)
          
          list_multinom_MAMI5_RT_pred <- c(list_multinom_MAMI5_RT_pred, multinom_MAMI5_RT_pred)
          list_multinom_MAMI5_UT_pred <- c(list_multinom_MAMI5_UT_pred, multinom_MAMI5_UT_pred)
          list_multinom_MAMI5_SW_pred <- c(list_multinom_MAMI5_SW_pred, multinom_MAMI5_SW_pred)
          list_multinom_MAMI5_OU_pred <- c(list_multinom_MAMI5_OU_pred, multinom_MAMI5_OU_pred)
          list_multinom_MAMI5_RT_SE <- c(list_multinom_MAMI5_RT_SE, multinom_MAMI5_RT_SE)
          list_multinom_MAMI5_UT_SE <- c(list_multinom_MAMI5_UT_SE, multinom_MAMI5_UT_SE)
          list_multinom_MAMI5_SW_SE <- c(list_multinom_MAMI5_SW_SE, multinom_MAMI5_SW_SE)
          list_multinom_MAMI5_OU_SE <- c(list_multinom_MAMI5_OU_SE, multinom_MAMI5_OU_SE)
          list_multinom_MAMI5_RT_95width <- c(list_multinom_MAMI5_RT_95width, multinom_MAMI5_RT_95width)
          list_multinom_MAMI5_UT_95width <- c(list_multinom_MAMI5_UT_95width, multinom_MAMI5_UT_95width)
          list_multinom_MAMI5_SW_95width <- c(list_multinom_MAMI5_SW_95width, multinom_MAMI5_SW_95width)
          list_multinom_MAMI5_OU_95width <- c(list_multinom_MAMI5_OU_95width, multinom_MAMI5_OU_95width)
          list_multinom_MAMI5_RT_coverge <- c(list_multinom_MAMI5_RT_coverge, multinom_MAMI5_RT_coverge)
          list_multinom_MAMI5_UT_coverge <- c(list_multinom_MAMI5_UT_coverge, multinom_MAMI5_UT_coverge)
          list_multinom_MAMI5_SW_coverge <- c(list_multinom_MAMI5_SW_coverge, multinom_MAMI5_SW_coverge)
          list_multinom_MAMI5_OU_coverge <- c(list_multinom_MAMI5_OU_coverge, multinom_MAMI5_OU_coverge)
        }
      }
    }
    
    #nnet multiple imputation
    {
      #impute UA_80 
      {
        #model
        {          
          set.seed(19)
          UAMI_80_nnet_imp <- hotdeck(UA_80) # Step 1
          
          missing_SEX <- UAMI_80_nnet_imp$SEX_imp
          missing_AGE <- UAMI_80_nnet_imp$AGE_imp
          missing_Indication <- UAMI_80_nnet_imp$Indication_imp
          missing_AntibioticClass <- UAMI_80_nnet_imp$AntibioticClass_imp
          
          UAMI_80_nnet_imp_datasets <- list()
          for(j in 1:5){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              # Step 5 -- start
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UAMI_80_nnet_imp$SEX <- factor(UAMI_80_nnet_imp$SEX, labels = levels(simulated$SEX))
              UAMI_80_nnet_imp$AGE <- factor(UAMI_80_nnet_imp$AGE, labels = levels(simulated$AGE))
              UAMI_80_nnet_imp$Indication <- factor(UAMI_80_nnet_imp$Indication, labels = levels(simulated$Indication))
              UAMI_80_nnet_imp$AntibioticClass <- factor(UAMI_80_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_80_nnet_imp$SEX[missing_SEX] <- NA # Step 2
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) # Step3
              # Step4 -- start
              raws <- predict(nnet_model, newdata = UAMI_80_nnet_imp[is.na(UAMI_80_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UAMI_80_nnet_imp$SEX <- as.numeric(UAMI_80_nnet_imp$SEX)
              UAMI_80_nnet_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              UAMI_80_nnet_imp$AGE[missing_AGE] <- NA # Step 2
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              raws <- predict(nnet_model, newdata = UAMI_80_nnet_imp[is.na(UAMI_80_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_80_nnet_imp$AGE <- as.numeric(UAMI_80_nnet_imp$AGE)
              UAMI_80_nnet_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              UAMI_80_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_80_nnet_imp[!is.na(UAMI_80_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UAMI_80_nnet_imp[is.na(UAMI_80_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_80_nnet_imp$Indication <- as.numeric(UAMI_80_nnet_imp$Indication)
              UAMI_80_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_80_nnet_imp_datasets <- c(UAMI_80_nnet_imp_datasets, list(UAMI_80_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_UAMI80_RT_pred_2 <- list()
          nnet_UAMI80_UT_pred_2 <- list()
          nnet_UAMI80_SW_pred_2 <- list()
          nnet_UAMI80_OU_pred_2 <- list()
          nnet_UAMI80_RT_SE_2 <- list()
          nnet_UAMI80_UT_SE_2 <- list()
          nnet_UAMI80_SW_SE_2 <- list()
          nnet_UAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_UAMI80_RT_pred_1 <- prop.table(table(UAMI_80_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_UAMI80_RT_pred_2 <- c(nnet_UAMI80_RT_pred_2, nnet_UAMI80_RT_pred_1)
            nnet_UAMI80_UT_pred_1 <- prop.table(table(UAMI_80_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_UAMI80_UT_pred_2 <- c(nnet_UAMI80_UT_pred_2, nnet_UAMI80_UT_pred_1)
            nnet_UAMI80_SW_pred_1 <- prop.table(table(UAMI_80_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_UAMI80_SW_pred_2 <- c(nnet_UAMI80_SW_pred_2, nnet_UAMI80_SW_pred_1)
            nnet_UAMI80_OU_pred_1 <- prop.table(table(UAMI_80_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_UAMI80_OU_pred_2 <- c(nnet_UAMI80_OU_pred_2, nnet_UAMI80_OU_pred_1)
            
            nnet_UAMI80_RT_SE_1 <- sqrt((nnet_UAMI80_RT_pred_1*(1 - nnet_UAMI80_RT_pred_1))/10000)
            nnet_UAMI80_RT_SE_2 <- c(nnet_UAMI80_RT_SE_2, nnet_UAMI80_RT_SE_1)
            nnet_UAMI80_UT_SE_1 <- sqrt((nnet_UAMI80_UT_pred_1*(1 - nnet_UAMI80_UT_pred_1))/10000)
            nnet_UAMI80_UT_SE_2 <- c(nnet_UAMI80_UT_SE_2, nnet_UAMI80_UT_SE_1)
            nnet_UAMI80_SW_SE_1 <- sqrt((nnet_UAMI80_SW_pred_1*(1 - nnet_UAMI80_SW_pred_1))/10000)
            nnet_UAMI80_SW_SE_2 <- c(nnet_UAMI80_SW_SE_2, nnet_UAMI80_SW_SE_1)
            nnet_UAMI80_OU_SE_1 <- sqrt((nnet_UAMI80_OU_pred_1*(1 - nnet_UAMI80_OU_pred_1))/10000)
            nnet_UAMI80_OU_SE_2 <- c(nnet_UAMI80_OU_SE_2, nnet_UAMI80_OU_SE_1)
          }
          
          nnet_UAMI80_RT_pred <- mean(sapply(nnet_UAMI80_RT_pred_2,sum))
          nnet_UAMI80_RT_SE <- function_RR(nnet_UAMI80_RT_pred_2, nnet_UAMI80_RT_SE_2)
          nnet_UAMI80_UT_pred <- mean(sapply(nnet_UAMI80_UT_pred_2,sum))
          nnet_UAMI80_UT_SE <- function_RR(nnet_UAMI80_UT_pred_2, nnet_UAMI80_UT_SE_2)
          nnet_UAMI80_SW_pred <- mean(sapply(nnet_UAMI80_SW_pred_2,sum))
          nnet_UAMI80_SW_SE <- function_RR(nnet_UAMI80_SW_pred_2, nnet_UAMI80_SW_SE_2)
          nnet_UAMI80_OU_pred <- mean(sapply(nnet_UAMI80_OU_pred_2,sum))
          nnet_UAMI80_OU_SE <- function_RR(nnet_UAMI80_OU_pred_2, nnet_UAMI80_OU_SE_2)
          
          
          nnet_UAMI80_RT_95upper <- nnet_UAMI80_RT_pred + 2*nnet_UAMI80_RT_SE
          nnet_UAMI80_RT_95lower <- nnet_UAMI80_RT_pred - 2*nnet_UAMI80_RT_SE
          nnet_UAMI80_RT_95width <- nnet_UAMI80_RT_95upper - nnet_UAMI80_RT_95lower
          nnet_UAMI80_UT_95upper <- nnet_UAMI80_UT_pred + 2*nnet_UAMI80_UT_SE
          nnet_UAMI80_UT_95lower <- nnet_UAMI80_UT_pred - 2*nnet_UAMI80_UT_SE
          nnet_UAMI80_UT_95width <- nnet_UAMI80_UT_95upper - nnet_UAMI80_UT_95lower
          nnet_UAMI80_SW_95upper <- nnet_UAMI80_SW_pred + 2*nnet_UAMI80_SW_SE
          nnet_UAMI80_SW_95lower <- nnet_UAMI80_SW_pred - 2*nnet_UAMI80_SW_SE
          nnet_UAMI80_SW_95width <- nnet_UAMI80_SW_95upper - nnet_UAMI80_SW_95lower
          nnet_UAMI80_OU_95upper <- nnet_UAMI80_OU_pred + 2*nnet_UAMI80_OU_SE
          nnet_UAMI80_OU_95lower <- nnet_UAMI80_OU_pred - 2*nnet_UAMI80_OU_SE
          nnet_UAMI80_OU_95width <- nnet_UAMI80_OU_95upper - nnet_UAMI80_OU_95lower
          
          nnet_UAMI80_RT_coverge <- (nnet_UAMI80_RT_95lower < RT_true) & (RT_true < nnet_UAMI80_RT_95upper)
          nnet_UAMI80_UT_coverge <- (nnet_UAMI80_UT_95lower < RT_true) & (UT_true < nnet_UAMI80_UT_95upper)
          nnet_UAMI80_SW_coverge <- (nnet_UAMI80_SW_95lower < RT_true) & (SW_true < nnet_UAMI80_SW_95upper)
          nnet_UAMI80_OU_coverge <- (nnet_UAMI80_OU_95lower < RT_true) & (OU_true < nnet_UAMI80_OU_95upper)
          
          list_nnet_UAMI80_RT_pred <- c(list_nnet_UAMI80_RT_pred, nnet_UAMI80_RT_pred)
          list_nnet_UAMI80_UT_pred <- c(list_nnet_UAMI80_UT_pred, nnet_UAMI80_UT_pred)
          list_nnet_UAMI80_SW_pred <- c(list_nnet_UAMI80_SW_pred, nnet_UAMI80_SW_pred)
          list_nnet_UAMI80_OU_pred <- c(list_nnet_UAMI80_OU_pred, nnet_UAMI80_OU_pred)
          list_nnet_UAMI80_RT_SE <- c(list_nnet_UAMI80_RT_SE, nnet_UAMI80_RT_SE)
          list_nnet_UAMI80_UT_SE <- c(list_nnet_UAMI80_UT_SE, nnet_UAMI80_UT_SE)
          list_nnet_UAMI80_SW_SE <- c(list_nnet_UAMI80_SW_SE, nnet_UAMI80_SW_SE)
          list_nnet_UAMI80_OU_SE <- c(list_nnet_UAMI80_OU_SE, nnet_UAMI80_OU_SE)
          list_nnet_UAMI80_RT_95width <- c(list_nnet_UAMI80_RT_95width, nnet_UAMI80_RT_95width)
          list_nnet_UAMI80_UT_95width <- c(list_nnet_UAMI80_UT_95width, nnet_UAMI80_UT_95width)
          list_nnet_UAMI80_SW_95width <- c(list_nnet_UAMI80_SW_95width, nnet_UAMI80_SW_95width)
          list_nnet_UAMI80_OU_95width <- c(list_nnet_UAMI80_OU_95width, nnet_UAMI80_OU_95width)
          list_nnet_UAMI80_RT_coverge <- c(list_nnet_UAMI80_RT_coverge, nnet_UAMI80_RT_coverge)
          list_nnet_UAMI80_UT_coverge <- c(list_nnet_UAMI80_UT_coverge, nnet_UAMI80_UT_coverge)
          list_nnet_UAMI80_SW_coverge <- c(list_nnet_UAMI80_SW_coverge, nnet_UAMI80_SW_coverge)
          list_nnet_UAMI80_OU_coverge <- c(list_nnet_UAMI80_OU_coverge, nnet_UAMI80_OU_coverge)
        }
      }
      
      #impute UA_50 
      {
        #model
        {
          set.seed(19)
          UAMI_50_nnet_imp <- hotdeck(UA_50) 
          
          missing_SEX <- UAMI_50_nnet_imp$SEX_imp
          missing_AGE <- UAMI_50_nnet_imp$AGE_imp
          missing_Indication <- UAMI_50_nnet_imp$Indication_imp
          missing_AntibioticClass <- UAMI_50_nnet_imp$AntibioticClass_imp
          
          UAMI_50_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UAMI_50_nnet_imp$SEX <- factor(UAMI_50_nnet_imp$SEX, labels = levels(simulated$SEX))
              UAMI_50_nnet_imp$AGE <- factor(UAMI_50_nnet_imp$AGE, labels = levels(simulated$AGE))
              UAMI_50_nnet_imp$Indication <- factor(UAMI_50_nnet_imp$Indication, labels = levels(simulated$Indication))
              UAMI_50_nnet_imp$AntibioticClass <- factor(UAMI_50_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_50_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UAMI_50_nnet_imp[is.na(UAMI_50_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UAMI_50_nnet_imp$SEX <- as.numeric(UAMI_50_nnet_imp$SEX)
              UAMI_50_nnet_imp$SEX[missing_SEX] <- pred
              
              UAMI_50_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UAMI_50_nnet_imp[is.na(UAMI_50_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_50_nnet_imp$AGE <- as.numeric(UAMI_50_nnet_imp$AGE)
              UAMI_50_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_50_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_50_nnet_imp[!is.na(UAMI_50_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UAMI_50_nnet_imp[is.na(UAMI_50_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_50_nnet_imp$Indication <- as.numeric(UAMI_50_nnet_imp$Indication)
              UAMI_50_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_50_nnet_imp_datasets <- c(UAMI_50_nnet_imp_datasets, list(UAMI_50_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_UAMI50_RT_pred_2 <- list()
          nnet_UAMI50_UT_pred_2 <- list()
          nnet_UAMI50_SW_pred_2 <- list()
          nnet_UAMI50_OU_pred_2 <- list()
          nnet_UAMI50_RT_SE_2 <- list()
          nnet_UAMI50_UT_SE_2 <- list()
          nnet_UAMI50_SW_SE_2 <- list()
          nnet_UAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_UAMI50_RT_pred_1 <- prop.table(table(UAMI_50_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_UAMI50_RT_pred_2 <- c(nnet_UAMI50_RT_pred_2, nnet_UAMI50_RT_pred_1)
            nnet_UAMI50_UT_pred_1 <- prop.table(table(UAMI_50_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_UAMI50_UT_pred_2 <- c(nnet_UAMI50_UT_pred_2, nnet_UAMI50_UT_pred_1)
            nnet_UAMI50_SW_pred_1 <- prop.table(table(UAMI_50_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_UAMI50_SW_pred_2 <- c(nnet_UAMI50_SW_pred_2, nnet_UAMI50_SW_pred_1)
            nnet_UAMI50_OU_pred_1 <- prop.table(table(UAMI_50_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_UAMI50_OU_pred_2 <- c(nnet_UAMI50_OU_pred_2, nnet_UAMI50_OU_pred_1)
            
            nnet_UAMI50_RT_SE_1 <- sqrt((nnet_UAMI50_RT_pred_1*(1 - nnet_UAMI50_RT_pred_1))/10000)
            nnet_UAMI50_RT_SE_2 <- c(nnet_UAMI50_RT_SE_2, nnet_UAMI50_RT_SE_1)
            nnet_UAMI50_UT_SE_1 <- sqrt((nnet_UAMI50_UT_pred_1*(1 - nnet_UAMI50_UT_pred_1))/10000)
            nnet_UAMI50_UT_SE_2 <- c(nnet_UAMI50_UT_SE_2, nnet_UAMI50_UT_SE_1)
            nnet_UAMI50_SW_SE_1 <- sqrt((nnet_UAMI50_SW_pred_1*(1 - nnet_UAMI50_SW_pred_1))/10000)
            nnet_UAMI50_SW_SE_2 <- c(nnet_UAMI50_SW_SE_2, nnet_UAMI50_SW_SE_1)
            nnet_UAMI50_OU_SE_1 <- sqrt((nnet_UAMI50_OU_pred_1*(1 - nnet_UAMI50_OU_pred_1))/10000)
            nnet_UAMI50_OU_SE_2 <- c(nnet_UAMI50_OU_SE_2, nnet_UAMI50_OU_SE_1)
          }
          
          nnet_UAMI50_RT_pred <- mean(sapply(nnet_UAMI50_RT_pred_2,sum))
          nnet_UAMI50_RT_SE <- function_RR(nnet_UAMI50_RT_pred_2, nnet_UAMI50_RT_SE_2)
          nnet_UAMI50_UT_pred <- mean(sapply(nnet_UAMI50_UT_pred_2,sum))
          nnet_UAMI50_UT_SE <- function_RR(nnet_UAMI50_UT_pred_2, nnet_UAMI50_UT_SE_2)
          nnet_UAMI50_SW_pred <- mean(sapply(nnet_UAMI50_SW_pred_2,sum))
          nnet_UAMI50_SW_SE <- function_RR(nnet_UAMI50_SW_pred_2, nnet_UAMI50_SW_SE_2)
          nnet_UAMI50_OU_pred <- mean(sapply(nnet_UAMI50_OU_pred_2,sum))
          nnet_UAMI50_OU_SE <- function_RR(nnet_UAMI50_OU_pred_2, nnet_UAMI50_OU_SE_2)
          
          
          nnet_UAMI50_RT_95upper <- nnet_UAMI50_RT_pred + 2*nnet_UAMI50_RT_SE
          nnet_UAMI50_RT_95lower <- nnet_UAMI50_RT_pred - 2*nnet_UAMI50_RT_SE
          nnet_UAMI50_RT_95width <- nnet_UAMI50_RT_95upper - nnet_UAMI50_RT_95lower
          nnet_UAMI50_UT_95upper <- nnet_UAMI50_UT_pred + 2*nnet_UAMI50_UT_SE
          nnet_UAMI50_UT_95lower <- nnet_UAMI50_UT_pred - 2*nnet_UAMI50_UT_SE
          nnet_UAMI50_UT_95width <- nnet_UAMI50_UT_95upper - nnet_UAMI50_UT_95lower
          nnet_UAMI50_SW_95upper <- nnet_UAMI50_SW_pred + 2*nnet_UAMI50_SW_SE
          nnet_UAMI50_SW_95lower <- nnet_UAMI50_SW_pred - 2*nnet_UAMI50_SW_SE
          nnet_UAMI50_SW_95width <- nnet_UAMI50_SW_95upper - nnet_UAMI50_SW_95lower
          nnet_UAMI50_OU_95upper <- nnet_UAMI50_OU_pred + 2*nnet_UAMI50_OU_SE
          nnet_UAMI50_OU_95lower <- nnet_UAMI50_OU_pred - 2*nnet_UAMI50_OU_SE
          nnet_UAMI50_OU_95width <- nnet_UAMI50_OU_95upper - nnet_UAMI50_OU_95lower
          
          nnet_UAMI50_RT_coverge <- (nnet_UAMI50_RT_95lower < RT_true) & (RT_true < nnet_UAMI50_RT_95upper)
          nnet_UAMI50_UT_coverge <- (nnet_UAMI50_UT_95lower < RT_true) & (UT_true < nnet_UAMI50_UT_95upper)
          nnet_UAMI50_SW_coverge <- (nnet_UAMI50_SW_95lower < RT_true) & (SW_true < nnet_UAMI50_SW_95upper)
          nnet_UAMI50_OU_coverge <- (nnet_UAMI50_OU_95lower < RT_true) & (OU_true < nnet_UAMI50_OU_95upper)
          
          list_nnet_UAMI50_RT_pred <- c(list_nnet_UAMI50_RT_pred, nnet_UAMI50_RT_pred)
          list_nnet_UAMI50_UT_pred <- c(list_nnet_UAMI50_UT_pred, nnet_UAMI50_UT_pred)
          list_nnet_UAMI50_SW_pred <- c(list_nnet_UAMI50_SW_pred, nnet_UAMI50_SW_pred)
          list_nnet_UAMI50_OU_pred <- c(list_nnet_UAMI50_OU_pred, nnet_UAMI50_OU_pred)
          list_nnet_UAMI50_RT_SE <- c(list_nnet_UAMI50_RT_SE, nnet_UAMI50_RT_SE)
          list_nnet_UAMI50_UT_SE <- c(list_nnet_UAMI50_UT_SE, nnet_UAMI50_UT_SE)
          list_nnet_UAMI50_SW_SE <- c(list_nnet_UAMI50_SW_SE, nnet_UAMI50_SW_SE)
          list_nnet_UAMI50_OU_SE <- c(list_nnet_UAMI50_OU_SE, nnet_UAMI50_OU_SE)
          list_nnet_UAMI50_RT_95width <- c(list_nnet_UAMI50_RT_95width, nnet_UAMI50_RT_95width)
          list_nnet_UAMI50_UT_95width <- c(list_nnet_UAMI50_UT_95width, nnet_UAMI50_UT_95width)
          list_nnet_UAMI50_SW_95width <- c(list_nnet_UAMI50_SW_95width, nnet_UAMI50_SW_95width)
          list_nnet_UAMI50_OU_95width <- c(list_nnet_UAMI50_OU_95width, nnet_UAMI50_OU_95width)
          list_nnet_UAMI50_RT_coverge <- c(list_nnet_UAMI50_RT_coverge, nnet_UAMI50_RT_coverge)
          list_nnet_UAMI50_UT_coverge <- c(list_nnet_UAMI50_UT_coverge, nnet_UAMI50_UT_coverge)
          list_nnet_UAMI50_SW_coverge <- c(list_nnet_UAMI50_SW_coverge, nnet_UAMI50_SW_coverge)
          list_nnet_UAMI50_OU_coverge <- c(list_nnet_UAMI50_OU_coverge, nnet_UAMI50_OU_coverge)
        }
      }
      
      #impute UA_20 
      {
        #model
        {
          set.seed(19)
          UAMI_20_nnet_imp <- hotdeck(UA_20) 
          
          missing_SEX <- UAMI_20_nnet_imp$SEX_imp
          missing_AGE <- UAMI_20_nnet_imp$AGE_imp
          missing_Indication <- UAMI_20_nnet_imp$Indication_imp
          missing_AntibioticClass <- UAMI_20_nnet_imp$AntibioticClass_imp
          
          UAMI_20_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UAMI_20_nnet_imp$SEX <- factor(UAMI_20_nnet_imp$SEX, labels = levels(simulated$SEX))
              UAMI_20_nnet_imp$AGE <- factor(UAMI_20_nnet_imp$AGE, labels = levels(simulated$AGE))
              UAMI_20_nnet_imp$Indication <- factor(UAMI_20_nnet_imp$Indication, labels = levels(simulated$Indication))
              UAMI_20_nnet_imp$AntibioticClass <- factor(UAMI_20_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_20_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UAMI_20_nnet_imp[is.na(UAMI_20_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UAMI_20_nnet_imp$SEX <- as.numeric(UAMI_20_nnet_imp$SEX)
              UAMI_20_nnet_imp$SEX[missing_SEX] <- pred
              
              UAMI_20_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UAMI_20_nnet_imp[is.na(UAMI_20_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_20_nnet_imp$AGE <- as.numeric(UAMI_20_nnet_imp$AGE)
              UAMI_20_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_20_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_20_nnet_imp[!is.na(UAMI_20_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UAMI_20_nnet_imp[is.na(UAMI_20_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_20_nnet_imp$Indication <- as.numeric(UAMI_20_nnet_imp$Indication)
              UAMI_20_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_20_nnet_imp_datasets <- c(UAMI_20_nnet_imp_datasets, list(UAMI_20_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_UAMI20_RT_pred_2 <- list()
          nnet_UAMI20_UT_pred_2 <- list()
          nnet_UAMI20_SW_pred_2 <- list()
          nnet_UAMI20_OU_pred_2 <- list()
          nnet_UAMI20_RT_SE_2 <- list()
          nnet_UAMI20_UT_SE_2 <- list()
          nnet_UAMI20_SW_SE_2 <- list()
          nnet_UAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_UAMI20_RT_pred_1 <- prop.table(table(UAMI_20_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_UAMI20_RT_pred_2 <- c(nnet_UAMI20_RT_pred_2, nnet_UAMI20_RT_pred_1)
            nnet_UAMI20_UT_pred_1 <- prop.table(table(UAMI_20_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_UAMI20_UT_pred_2 <- c(nnet_UAMI20_UT_pred_2, nnet_UAMI20_UT_pred_1)
            nnet_UAMI20_SW_pred_1 <- prop.table(table(UAMI_20_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_UAMI20_SW_pred_2 <- c(nnet_UAMI20_SW_pred_2, nnet_UAMI20_SW_pred_1)
            nnet_UAMI20_OU_pred_1 <- prop.table(table(UAMI_20_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_UAMI20_OU_pred_2 <- c(nnet_UAMI20_OU_pred_2, nnet_UAMI20_OU_pred_1)
            
            nnet_UAMI20_RT_SE_1 <- sqrt((nnet_UAMI20_RT_pred_1*(1 - nnet_UAMI20_RT_pred_1))/10000)
            nnet_UAMI20_RT_SE_2 <- c(nnet_UAMI20_RT_SE_2, nnet_UAMI20_RT_SE_1)
            nnet_UAMI20_UT_SE_1 <- sqrt((nnet_UAMI20_UT_pred_1*(1 - nnet_UAMI20_UT_pred_1))/10000)
            nnet_UAMI20_UT_SE_2 <- c(nnet_UAMI20_UT_SE_2, nnet_UAMI20_UT_SE_1)
            nnet_UAMI20_SW_SE_1 <- sqrt((nnet_UAMI20_SW_pred_1*(1 - nnet_UAMI20_SW_pred_1))/10000)
            nnet_UAMI20_SW_SE_2 <- c(nnet_UAMI20_SW_SE_2, nnet_UAMI20_SW_SE_1)
            nnet_UAMI20_OU_SE_1 <- sqrt((nnet_UAMI20_OU_pred_1*(1 - nnet_UAMI20_OU_pred_1))/10000)
            nnet_UAMI20_OU_SE_2 <- c(nnet_UAMI20_OU_SE_2, nnet_UAMI20_OU_SE_1)
          }
          
          nnet_UAMI20_RT_pred <- mean(sapply(nnet_UAMI20_RT_pred_2,sum))
          nnet_UAMI20_RT_SE <- function_RR(nnet_UAMI20_RT_pred_2, nnet_UAMI20_RT_SE_2)
          nnet_UAMI20_UT_pred <- mean(sapply(nnet_UAMI20_UT_pred_2,sum))
          nnet_UAMI20_UT_SE <- function_RR(nnet_UAMI20_UT_pred_2, nnet_UAMI20_UT_SE_2)
          nnet_UAMI20_SW_pred <- mean(sapply(nnet_UAMI20_SW_pred_2,sum))
          nnet_UAMI20_SW_SE <- function_RR(nnet_UAMI20_SW_pred_2, nnet_UAMI20_SW_SE_2)
          nnet_UAMI20_OU_pred <- mean(sapply(nnet_UAMI20_OU_pred_2,sum))
          nnet_UAMI20_OU_SE <- function_RR(nnet_UAMI20_OU_pred_2, nnet_UAMI20_OU_SE_2)
          
          
          nnet_UAMI20_RT_95upper <- nnet_UAMI20_RT_pred + 2*nnet_UAMI20_RT_SE
          nnet_UAMI20_RT_95lower <- nnet_UAMI20_RT_pred - 2*nnet_UAMI20_RT_SE
          nnet_UAMI20_RT_95width <- nnet_UAMI20_RT_95upper - nnet_UAMI20_RT_95lower
          nnet_UAMI20_UT_95upper <- nnet_UAMI20_UT_pred + 2*nnet_UAMI20_UT_SE
          nnet_UAMI20_UT_95lower <- nnet_UAMI20_UT_pred - 2*nnet_UAMI20_UT_SE
          nnet_UAMI20_UT_95width <- nnet_UAMI20_UT_95upper - nnet_UAMI20_UT_95lower
          nnet_UAMI20_SW_95upper <- nnet_UAMI20_SW_pred + 2*nnet_UAMI20_SW_SE
          nnet_UAMI20_SW_95lower <- nnet_UAMI20_SW_pred - 2*nnet_UAMI20_SW_SE
          nnet_UAMI20_SW_95width <- nnet_UAMI20_SW_95upper - nnet_UAMI20_SW_95lower
          nnet_UAMI20_OU_95upper <- nnet_UAMI20_OU_pred + 2*nnet_UAMI20_OU_SE
          nnet_UAMI20_OU_95lower <- nnet_UAMI20_OU_pred - 2*nnet_UAMI20_OU_SE
          nnet_UAMI20_OU_95width <- nnet_UAMI20_OU_95upper - nnet_UAMI20_OU_95lower
          
          nnet_UAMI20_RT_coverge <- (nnet_UAMI20_RT_95lower < RT_true) & (RT_true < nnet_UAMI20_RT_95upper)
          nnet_UAMI20_UT_coverge <- (nnet_UAMI20_UT_95lower < RT_true) & (UT_true < nnet_UAMI20_UT_95upper)
          nnet_UAMI20_SW_coverge <- (nnet_UAMI20_SW_95lower < RT_true) & (SW_true < nnet_UAMI20_SW_95upper)
          nnet_UAMI20_OU_coverge <- (nnet_UAMI20_OU_95lower < RT_true) & (OU_true < nnet_UAMI20_OU_95upper)
          
          list_nnet_UAMI20_RT_pred <- c(list_nnet_UAMI20_RT_pred, nnet_UAMI20_RT_pred)
          list_nnet_UAMI20_UT_pred <- c(list_nnet_UAMI20_UT_pred, nnet_UAMI20_UT_pred)
          list_nnet_UAMI20_SW_pred <- c(list_nnet_UAMI20_SW_pred, nnet_UAMI20_SW_pred)
          list_nnet_UAMI20_OU_pred <- c(list_nnet_UAMI20_OU_pred, nnet_UAMI20_OU_pred)
          list_nnet_UAMI20_RT_SE <- c(list_nnet_UAMI20_RT_SE, nnet_UAMI20_RT_SE)
          list_nnet_UAMI20_UT_SE <- c(list_nnet_UAMI20_UT_SE, nnet_UAMI20_UT_SE)
          list_nnet_UAMI20_SW_SE <- c(list_nnet_UAMI20_SW_SE, nnet_UAMI20_SW_SE)
          list_nnet_UAMI20_OU_SE <- c(list_nnet_UAMI20_OU_SE, nnet_UAMI20_OU_SE)
          list_nnet_UAMI20_RT_95width <- c(list_nnet_UAMI20_RT_95width, nnet_UAMI20_RT_95width)
          list_nnet_UAMI20_UT_95width <- c(list_nnet_UAMI20_UT_95width, nnet_UAMI20_UT_95width)
          list_nnet_UAMI20_SW_95width <- c(list_nnet_UAMI20_SW_95width, nnet_UAMI20_SW_95width)
          list_nnet_UAMI20_OU_95width <- c(list_nnet_UAMI20_OU_95width, nnet_UAMI20_OU_95width)
          list_nnet_UAMI20_RT_coverge <- c(list_nnet_UAMI20_RT_coverge, nnet_UAMI20_RT_coverge)
          list_nnet_UAMI20_UT_coverge <- c(list_nnet_UAMI20_UT_coverge, nnet_UAMI20_UT_coverge)
          list_nnet_UAMI20_SW_coverge <- c(list_nnet_UAMI20_SW_coverge, nnet_UAMI20_SW_coverge)
          list_nnet_UAMI20_OU_coverge <- c(list_nnet_UAMI20_OU_coverge, nnet_UAMI20_OU_coverge)
        }
      }
      
      #impute UA_5 
      {
        #model
        {
          set.seed(19)
          UAMI_5_nnet_imp <- hotdeck(UA_5) 
          
          missing_SEX <- UAMI_5_nnet_imp$SEX_imp
          missing_AGE <- UAMI_5_nnet_imp$AGE_imp
          missing_Indication <- UAMI_5_nnet_imp$Indication_imp
          missing_AntibioticClass <- UAMI_5_nnet_imp$AntibioticClass_imp
          
          UAMI_5_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              UAMI_5_nnet_imp$SEX <- factor(UAMI_5_nnet_imp$SEX, labels = levels(simulated$SEX))
              UAMI_5_nnet_imp$AGE <- factor(UAMI_5_nnet_imp$AGE, labels = levels(simulated$AGE))
              UAMI_5_nnet_imp$Indication <- factor(UAMI_5_nnet_imp$Indication, labels = levels(simulated$Indication))
              UAMI_5_nnet_imp$AntibioticClass <- factor(UAMI_5_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              UAMI_5_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = UAMI_5_nnet_imp[is.na(UAMI_5_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              UAMI_5_nnet_imp$SEX <- as.numeric(UAMI_5_nnet_imp$SEX)
              UAMI_5_nnet_imp$SEX[missing_SEX] <- pred
              
              UAMI_5_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = UAMI_5_nnet_imp[is.na(UAMI_5_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              UAMI_5_nnet_imp$AGE <- as.numeric(UAMI_5_nnet_imp$AGE)
              UAMI_5_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              UAMI_5_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = UAMI_5_nnet_imp[!is.na(UAMI_5_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = UAMI_5_nnet_imp[is.na(UAMI_5_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              UAMI_5_nnet_imp$Indication <- as.numeric(UAMI_5_nnet_imp$Indication)
              UAMI_5_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            UAMI_5_nnet_imp_datasets <- c(UAMI_5_nnet_imp_datasets, list(UAMI_5_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_UAMI5_RT_pred_2 <- list()
          nnet_UAMI5_UT_pred_2 <- list()
          nnet_UAMI5_SW_pred_2 <- list()
          nnet_UAMI5_OU_pred_2 <- list()
          nnet_UAMI5_RT_SE_2 <- list()
          nnet_UAMI5_UT_SE_2 <- list()
          nnet_UAMI5_SW_SE_2 <- list()
          nnet_UAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_UAMI5_RT_pred_1 <- prop.table(table(UAMI_5_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_UAMI5_RT_pred_2 <- c(nnet_UAMI5_RT_pred_2, nnet_UAMI5_RT_pred_1)
            nnet_UAMI5_UT_pred_1 <- prop.table(table(UAMI_5_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_UAMI5_UT_pred_2 <- c(nnet_UAMI5_UT_pred_2, nnet_UAMI5_UT_pred_1)
            nnet_UAMI5_SW_pred_1 <- prop.table(table(UAMI_5_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_UAMI5_SW_pred_2 <- c(nnet_UAMI5_SW_pred_2, nnet_UAMI5_SW_pred_1)
            nnet_UAMI5_OU_pred_1 <- prop.table(table(UAMI_5_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_UAMI5_OU_pred_2 <- c(nnet_UAMI5_OU_pred_2, nnet_UAMI5_OU_pred_1)
            
            nnet_UAMI5_RT_SE_1 <- sqrt((nnet_UAMI5_RT_pred_1*(1 - nnet_UAMI5_RT_pred_1))/10000)
            nnet_UAMI5_RT_SE_2 <- c(nnet_UAMI5_RT_SE_2, nnet_UAMI5_RT_SE_1)
            nnet_UAMI5_UT_SE_1 <- sqrt((nnet_UAMI5_UT_pred_1*(1 - nnet_UAMI5_UT_pred_1))/10000)
            nnet_UAMI5_UT_SE_2 <- c(nnet_UAMI5_UT_SE_2, nnet_UAMI5_UT_SE_1)
            nnet_UAMI5_SW_SE_1 <- sqrt((nnet_UAMI5_SW_pred_1*(1 - nnet_UAMI5_SW_pred_1))/10000)
            nnet_UAMI5_SW_SE_2 <- c(nnet_UAMI5_SW_SE_2, nnet_UAMI5_SW_SE_1)
            nnet_UAMI5_OU_SE_1 <- sqrt((nnet_UAMI5_OU_pred_1*(1 - nnet_UAMI5_OU_pred_1))/10000)
            nnet_UAMI5_OU_SE_2 <- c(nnet_UAMI5_OU_SE_2, nnet_UAMI5_OU_SE_1)
          }
          
          nnet_UAMI5_RT_pred <- mean(sapply(nnet_UAMI5_RT_pred_2,sum))
          nnet_UAMI5_RT_SE <- function_RR(nnet_UAMI5_RT_pred_2, nnet_UAMI5_RT_SE_2)
          nnet_UAMI5_UT_pred <- mean(sapply(nnet_UAMI5_UT_pred_2,sum))
          nnet_UAMI5_UT_SE <- function_RR(nnet_UAMI5_UT_pred_2, nnet_UAMI5_UT_SE_2)
          nnet_UAMI5_SW_pred <- mean(sapply(nnet_UAMI5_SW_pred_2,sum))
          nnet_UAMI5_SW_SE <- function_RR(nnet_UAMI5_SW_pred_2, nnet_UAMI5_SW_SE_2)
          nnet_UAMI5_OU_pred <- mean(sapply(nnet_UAMI5_OU_pred_2,sum))
          nnet_UAMI5_OU_SE <- function_RR(nnet_UAMI5_OU_pred_2, nnet_UAMI5_OU_SE_2)
          
          
          nnet_UAMI5_RT_95upper <- nnet_UAMI5_RT_pred + 2*nnet_UAMI5_RT_SE
          nnet_UAMI5_RT_95lower <- nnet_UAMI5_RT_pred - 2*nnet_UAMI5_RT_SE
          nnet_UAMI5_RT_95width <- nnet_UAMI5_RT_95upper - nnet_UAMI5_RT_95lower
          nnet_UAMI5_UT_95upper <- nnet_UAMI5_UT_pred + 2*nnet_UAMI5_UT_SE
          nnet_UAMI5_UT_95lower <- nnet_UAMI5_UT_pred - 2*nnet_UAMI5_UT_SE
          nnet_UAMI5_UT_95width <- nnet_UAMI5_UT_95upper - nnet_UAMI5_UT_95lower
          nnet_UAMI5_SW_95upper <- nnet_UAMI5_SW_pred + 2*nnet_UAMI5_SW_SE
          nnet_UAMI5_SW_95lower <- nnet_UAMI5_SW_pred - 2*nnet_UAMI5_SW_SE
          nnet_UAMI5_SW_95width <- nnet_UAMI5_SW_95upper - nnet_UAMI5_SW_95lower
          nnet_UAMI5_OU_95upper <- nnet_UAMI5_OU_pred + 2*nnet_UAMI5_OU_SE
          nnet_UAMI5_OU_95lower <- nnet_UAMI5_OU_pred - 2*nnet_UAMI5_OU_SE
          nnet_UAMI5_OU_95width <- nnet_UAMI5_OU_95upper - nnet_UAMI5_OU_95lower
          
          nnet_UAMI5_RT_coverge <- (nnet_UAMI5_RT_95lower < RT_true) & (RT_true < nnet_UAMI5_RT_95upper)
          nnet_UAMI5_UT_coverge <- (nnet_UAMI5_UT_95lower < RT_true) & (UT_true < nnet_UAMI5_UT_95upper)
          nnet_UAMI5_SW_coverge <- (nnet_UAMI5_SW_95lower < RT_true) & (SW_true < nnet_UAMI5_SW_95upper)
          nnet_UAMI5_OU_coverge <- (nnet_UAMI5_OU_95lower < RT_true) & (OU_true < nnet_UAMI5_OU_95upper)
          
          list_nnet_UAMI5_RT_pred <- c(list_nnet_UAMI5_RT_pred, nnet_UAMI5_RT_pred)
          list_nnet_UAMI5_UT_pred <- c(list_nnet_UAMI5_UT_pred, nnet_UAMI5_UT_pred)
          list_nnet_UAMI5_SW_pred <- c(list_nnet_UAMI5_SW_pred, nnet_UAMI5_SW_pred)
          list_nnet_UAMI5_OU_pred <- c(list_nnet_UAMI5_OU_pred, nnet_UAMI5_OU_pred)
          list_nnet_UAMI5_RT_SE <- c(list_nnet_UAMI5_RT_SE, nnet_UAMI5_RT_SE)
          list_nnet_UAMI5_UT_SE <- c(list_nnet_UAMI5_UT_SE, nnet_UAMI5_UT_SE)
          list_nnet_UAMI5_SW_SE <- c(list_nnet_UAMI5_SW_SE, nnet_UAMI5_SW_SE)
          list_nnet_UAMI5_OU_SE <- c(list_nnet_UAMI5_OU_SE, nnet_UAMI5_OU_SE)
          list_nnet_UAMI5_RT_95width <- c(list_nnet_UAMI5_RT_95width, nnet_UAMI5_RT_95width)
          list_nnet_UAMI5_UT_95width <- c(list_nnet_UAMI5_UT_95width, nnet_UAMI5_UT_95width)
          list_nnet_UAMI5_SW_95width <- c(list_nnet_UAMI5_SW_95width, nnet_UAMI5_SW_95width)
          list_nnet_UAMI5_OU_95width <- c(list_nnet_UAMI5_OU_95width, nnet_UAMI5_OU_95width)
          list_nnet_UAMI5_RT_coverge <- c(list_nnet_UAMI5_RT_coverge, nnet_UAMI5_RT_coverge)
          list_nnet_UAMI5_UT_coverge <- c(list_nnet_UAMI5_UT_coverge, nnet_UAMI5_UT_coverge)
          list_nnet_UAMI5_SW_coverge <- c(list_nnet_UAMI5_SW_coverge, nnet_UAMI5_SW_coverge)
          list_nnet_UAMI5_OU_coverge <- c(list_nnet_UAMI5_OU_coverge, nnet_UAMI5_OU_coverge)
        }
      }
      
      #impute MA_80 
      {
        #model
        {          
          set.seed(19)
          MAMI_80_nnet_imp <- hotdeck(MA_80) # Step 1
          
          missing_SEX <- MAMI_80_nnet_imp$SEX_imp
          missing_AGE <- MAMI_80_nnet_imp$AGE_imp
          missing_Indication <- MAMI_80_nnet_imp$Indication_imp
          missing_AntibioticClass <- MAMI_80_nnet_imp$AntibioticClass_imp
          
          MAMI_80_nnet_imp_datasets <- list()
          for(j in 1:5){ # M = Number of imputed datasets you want to have
            for(m in 1:10){ # maxit = Repeat until convergence (Step 6)
              # Step 5 -- start
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MAMI_80_nnet_imp$SEX <- factor(MAMI_80_nnet_imp$SEX, labels = levels(simulated$SEX))
              MAMI_80_nnet_imp$AGE <- factor(MAMI_80_nnet_imp$AGE, labels = levels(simulated$AGE))
              MAMI_80_nnet_imp$Indication <- factor(MAMI_80_nnet_imp$Indication, labels = levels(simulated$Indication))
              MAMI_80_nnet_imp$AntibioticClass <- factor(MAMI_80_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_80_nnet_imp$SEX[missing_SEX] <- NA # Step 2
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) # Step3
              # Step4 -- start
              raws <- predict(nnet_model, newdata = MAMI_80_nnet_imp[is.na(MAMI_80_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MAMI_80_nnet_imp$SEX <- as.numeric(MAMI_80_nnet_imp$SEX)
              MAMI_80_nnet_imp$SEX[missing_SEX] <- pred
              # Step4 -- end
              # Step 5 -- end
              
              # Step 5 -- start
              MAMI_80_nnet_imp$AGE[missing_AGE] <- NA # Step 2
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) # Step3
              # Step4 (needs changing for > 2 classes) -- start
              raws <- predict(nnet_model, newdata = MAMI_80_nnet_imp[is.na(MAMI_80_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_80_nnet_imp$AGE <- as.numeric(MAMI_80_nnet_imp$AGE)
              MAMI_80_nnet_imp$AGE[missing_AGE] <- pred_AGE
              # Step4 -- end
              # Step 5 -- end
              
              # All following code does the same as for SEX and AGE above just for the remaining two variables.
              MAMI_80_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_80_nnet_imp[!is.na(MAMI_80_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MAMI_80_nnet_imp[is.na(MAMI_80_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_80_nnet_imp$Indication <- as.numeric(MAMI_80_nnet_imp$Indication)
              MAMI_80_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_80_nnet_imp_datasets <- c(MAMI_80_nnet_imp_datasets, list(MAMI_80_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_MAMI80_RT_pred_2 <- list()
          nnet_MAMI80_UT_pred_2 <- list()
          nnet_MAMI80_SW_pred_2 <- list()
          nnet_MAMI80_OU_pred_2 <- list()
          nnet_MAMI80_RT_SE_2 <- list()
          nnet_MAMI80_UT_SE_2 <- list()
          nnet_MAMI80_SW_SE_2 <- list()
          nnet_MAMI80_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_MAMI80_RT_pred_1 <- prop.table(table(MAMI_80_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_MAMI80_RT_pred_2 <- c(nnet_MAMI80_RT_pred_2, nnet_MAMI80_RT_pred_1)
            nnet_MAMI80_UT_pred_1 <- prop.table(table(MAMI_80_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_MAMI80_UT_pred_2 <- c(nnet_MAMI80_UT_pred_2, nnet_MAMI80_UT_pred_1)
            nnet_MAMI80_SW_pred_1 <- prop.table(table(MAMI_80_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_MAMI80_SW_pred_2 <- c(nnet_MAMI80_SW_pred_2, nnet_MAMI80_SW_pred_1)
            nnet_MAMI80_OU_pred_1 <- prop.table(table(MAMI_80_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_MAMI80_OU_pred_2 <- c(nnet_MAMI80_OU_pred_2, nnet_MAMI80_OU_pred_1)
            
            nnet_MAMI80_RT_SE_1 <- sqrt((nnet_MAMI80_RT_pred_1*(1 - nnet_MAMI80_RT_pred_1))/10000)
            nnet_MAMI80_RT_SE_2 <- c(nnet_MAMI80_RT_SE_2, nnet_MAMI80_RT_SE_1)
            nnet_MAMI80_UT_SE_1 <- sqrt((nnet_MAMI80_UT_pred_1*(1 - nnet_MAMI80_UT_pred_1))/10000)
            nnet_MAMI80_UT_SE_2 <- c(nnet_MAMI80_UT_SE_2, nnet_MAMI80_UT_SE_1)
            nnet_MAMI80_SW_SE_1 <- sqrt((nnet_MAMI80_SW_pred_1*(1 - nnet_MAMI80_SW_pred_1))/10000)
            nnet_MAMI80_SW_SE_2 <- c(nnet_MAMI80_SW_SE_2, nnet_MAMI80_SW_SE_1)
            nnet_MAMI80_OU_SE_1 <- sqrt((nnet_MAMI80_OU_pred_1*(1 - nnet_MAMI80_OU_pred_1))/10000)
            nnet_MAMI80_OU_SE_2 <- c(nnet_MAMI80_OU_SE_2, nnet_MAMI80_OU_SE_1)
          }
          
          nnet_MAMI80_RT_pred <- mean(sapply(nnet_MAMI80_RT_pred_2,sum))
          nnet_MAMI80_RT_SE <- function_RR(nnet_MAMI80_RT_pred_2, nnet_MAMI80_RT_SE_2)
          nnet_MAMI80_UT_pred <- mean(sapply(nnet_MAMI80_UT_pred_2,sum))
          nnet_MAMI80_UT_SE <- function_RR(nnet_MAMI80_UT_pred_2, nnet_MAMI80_UT_SE_2)
          nnet_MAMI80_SW_pred <- mean(sapply(nnet_MAMI80_SW_pred_2,sum))
          nnet_MAMI80_SW_SE <- function_RR(nnet_MAMI80_SW_pred_2, nnet_MAMI80_SW_SE_2)
          nnet_MAMI80_OU_pred <- mean(sapply(nnet_MAMI80_OU_pred_2,sum))
          nnet_MAMI80_OU_SE <- function_RR(nnet_MAMI80_OU_pred_2, nnet_MAMI80_OU_SE_2)
          
          
          nnet_MAMI80_RT_95upper <- nnet_MAMI80_RT_pred + 2*nnet_MAMI80_RT_SE
          nnet_MAMI80_RT_95lower <- nnet_MAMI80_RT_pred - 2*nnet_MAMI80_RT_SE
          nnet_MAMI80_RT_95width <- nnet_MAMI80_RT_95upper - nnet_MAMI80_RT_95lower
          nnet_MAMI80_UT_95upper <- nnet_MAMI80_UT_pred + 2*nnet_MAMI80_UT_SE
          nnet_MAMI80_UT_95lower <- nnet_MAMI80_UT_pred - 2*nnet_MAMI80_UT_SE
          nnet_MAMI80_UT_95width <- nnet_MAMI80_UT_95upper - nnet_MAMI80_UT_95lower
          nnet_MAMI80_SW_95upper <- nnet_MAMI80_SW_pred + 2*nnet_MAMI80_SW_SE
          nnet_MAMI80_SW_95lower <- nnet_MAMI80_SW_pred - 2*nnet_MAMI80_SW_SE
          nnet_MAMI80_SW_95width <- nnet_MAMI80_SW_95upper - nnet_MAMI80_SW_95lower
          nnet_MAMI80_OU_95upper <- nnet_MAMI80_OU_pred + 2*nnet_MAMI80_OU_SE
          nnet_MAMI80_OU_95lower <- nnet_MAMI80_OU_pred - 2*nnet_MAMI80_OU_SE
          nnet_MAMI80_OU_95width <- nnet_MAMI80_OU_95upper - nnet_MAMI80_OU_95lower
          
          nnet_MAMI80_RT_coverge <- (nnet_MAMI80_RT_95lower < RT_true) & (RT_true < nnet_MAMI80_RT_95upper)
          nnet_MAMI80_UT_coverge <- (nnet_MAMI80_UT_95lower < RT_true) & (UT_true < nnet_MAMI80_UT_95upper)
          nnet_MAMI80_SW_coverge <- (nnet_MAMI80_SW_95lower < RT_true) & (SW_true < nnet_MAMI80_SW_95upper)
          nnet_MAMI80_OU_coverge <- (nnet_MAMI80_OU_95lower < RT_true) & (OU_true < nnet_MAMI80_OU_95upper)
          
          list_nnet_MAMI80_RT_pred <- c(list_nnet_MAMI80_RT_pred, nnet_MAMI80_RT_pred)
          list_nnet_MAMI80_UT_pred <- c(list_nnet_MAMI80_UT_pred, nnet_MAMI80_UT_pred)
          list_nnet_MAMI80_SW_pred <- c(list_nnet_MAMI80_SW_pred, nnet_MAMI80_SW_pred)
          list_nnet_MAMI80_OU_pred <- c(list_nnet_MAMI80_OU_pred, nnet_MAMI80_OU_pred)
          list_nnet_MAMI80_RT_SE <- c(list_nnet_MAMI80_RT_SE, nnet_MAMI80_RT_SE)
          list_nnet_MAMI80_UT_SE <- c(list_nnet_MAMI80_UT_SE, nnet_MAMI80_UT_SE)
          list_nnet_MAMI80_SW_SE <- c(list_nnet_MAMI80_SW_SE, nnet_MAMI80_SW_SE)
          list_nnet_MAMI80_OU_SE <- c(list_nnet_MAMI80_OU_SE, nnet_MAMI80_OU_SE)
          list_nnet_MAMI80_RT_95width <- c(list_nnet_MAMI80_RT_95width, nnet_MAMI80_RT_95width)
          list_nnet_MAMI80_UT_95width <- c(list_nnet_MAMI80_UT_95width, nnet_MAMI80_UT_95width)
          list_nnet_MAMI80_SW_95width <- c(list_nnet_MAMI80_SW_95width, nnet_MAMI80_SW_95width)
          list_nnet_MAMI80_OU_95width <- c(list_nnet_MAMI80_OU_95width, nnet_MAMI80_OU_95width)
          list_nnet_MAMI80_RT_coverge <- c(list_nnet_MAMI80_RT_coverge, nnet_MAMI80_RT_coverge)
          list_nnet_MAMI80_UT_coverge <- c(list_nnet_MAMI80_UT_coverge, nnet_MAMI80_UT_coverge)
          list_nnet_MAMI80_SW_coverge <- c(list_nnet_MAMI80_SW_coverge, nnet_MAMI80_SW_coverge)
          list_nnet_MAMI80_OU_coverge <- c(list_nnet_MAMI80_OU_coverge, nnet_MAMI80_OU_coverge)
        }
      }
      
      #impute MA_50 
      {
        #model
        {
          set.seed(19)
          MAMI_50_nnet_imp <- hotdeck(MA_50) 
          
          missing_SEX <- MAMI_50_nnet_imp$SEX_imp
          missing_AGE <- MAMI_50_nnet_imp$AGE_imp
          missing_Indication <- MAMI_50_nnet_imp$Indication_imp
          missing_AntibioticClass <- MAMI_50_nnet_imp$AntibioticClass_imp
          
          MAMI_50_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MAMI_50_nnet_imp$SEX <- factor(MAMI_50_nnet_imp$SEX, labels = levels(simulated$SEX))
              MAMI_50_nnet_imp$AGE <- factor(MAMI_50_nnet_imp$AGE, labels = levels(simulated$AGE))
              MAMI_50_nnet_imp$Indication <- factor(MAMI_50_nnet_imp$Indication, labels = levels(simulated$Indication))
              MAMI_50_nnet_imp$AntibioticClass <- factor(MAMI_50_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_50_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MAMI_50_nnet_imp[is.na(MAMI_50_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MAMI_50_nnet_imp$SEX <- as.numeric(MAMI_50_nnet_imp$SEX)
              MAMI_50_nnet_imp$SEX[missing_SEX] <- pred
              
              MAMI_50_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MAMI_50_nnet_imp[is.na(MAMI_50_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_50_nnet_imp$AGE <- as.numeric(MAMI_50_nnet_imp$AGE)
              MAMI_50_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_50_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_50_nnet_imp[!is.na(MAMI_50_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MAMI_50_nnet_imp[is.na(MAMI_50_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_50_nnet_imp$Indication <- as.numeric(MAMI_50_nnet_imp$Indication)
              MAMI_50_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_50_nnet_imp_datasets <- c(MAMI_50_nnet_imp_datasets, list(MAMI_50_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_MAMI50_RT_pred_2 <- list()
          nnet_MAMI50_UT_pred_2 <- list()
          nnet_MAMI50_SW_pred_2 <- list()
          nnet_MAMI50_OU_pred_2 <- list()
          nnet_MAMI50_RT_SE_2 <- list()
          nnet_MAMI50_UT_SE_2 <- list()
          nnet_MAMI50_SW_SE_2 <- list()
          nnet_MAMI50_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_MAMI50_RT_pred_1 <- prop.table(table(MAMI_50_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_MAMI50_RT_pred_2 <- c(nnet_MAMI50_RT_pred_2, nnet_MAMI50_RT_pred_1)
            nnet_MAMI50_UT_pred_1 <- prop.table(table(MAMI_50_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_MAMI50_UT_pred_2 <- c(nnet_MAMI50_UT_pred_2, nnet_MAMI50_UT_pred_1)
            nnet_MAMI50_SW_pred_1 <- prop.table(table(MAMI_50_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_MAMI50_SW_pred_2 <- c(nnet_MAMI50_SW_pred_2, nnet_MAMI50_SW_pred_1)
            nnet_MAMI50_OU_pred_1 <- prop.table(table(MAMI_50_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_MAMI50_OU_pred_2 <- c(nnet_MAMI50_OU_pred_2, nnet_MAMI50_OU_pred_1)
            
            nnet_MAMI50_RT_SE_1 <- sqrt((nnet_MAMI50_RT_pred_1*(1 - nnet_MAMI50_RT_pred_1))/10000)
            nnet_MAMI50_RT_SE_2 <- c(nnet_MAMI50_RT_SE_2, nnet_MAMI50_RT_SE_1)
            nnet_MAMI50_UT_SE_1 <- sqrt((nnet_MAMI50_UT_pred_1*(1 - nnet_MAMI50_UT_pred_1))/10000)
            nnet_MAMI50_UT_SE_2 <- c(nnet_MAMI50_UT_SE_2, nnet_MAMI50_UT_SE_1)
            nnet_MAMI50_SW_SE_1 <- sqrt((nnet_MAMI50_SW_pred_1*(1 - nnet_MAMI50_SW_pred_1))/10000)
            nnet_MAMI50_SW_SE_2 <- c(nnet_MAMI50_SW_SE_2, nnet_MAMI50_SW_SE_1)
            nnet_MAMI50_OU_SE_1 <- sqrt((nnet_MAMI50_OU_pred_1*(1 - nnet_MAMI50_OU_pred_1))/10000)
            nnet_MAMI50_OU_SE_2 <- c(nnet_MAMI50_OU_SE_2, nnet_MAMI50_OU_SE_1)
          }
          
          nnet_MAMI50_RT_pred <- mean(sapply(nnet_MAMI50_RT_pred_2,sum))
          nnet_MAMI50_RT_SE <- function_RR(nnet_MAMI50_RT_pred_2, nnet_MAMI50_RT_SE_2)
          nnet_MAMI50_UT_pred <- mean(sapply(nnet_MAMI50_UT_pred_2,sum))
          nnet_MAMI50_UT_SE <- function_RR(nnet_MAMI50_UT_pred_2, nnet_MAMI50_UT_SE_2)
          nnet_MAMI50_SW_pred <- mean(sapply(nnet_MAMI50_SW_pred_2,sum))
          nnet_MAMI50_SW_SE <- function_RR(nnet_MAMI50_SW_pred_2, nnet_MAMI50_SW_SE_2)
          nnet_MAMI50_OU_pred <- mean(sapply(nnet_MAMI50_OU_pred_2,sum))
          nnet_MAMI50_OU_SE <- function_RR(nnet_MAMI50_OU_pred_2, nnet_MAMI50_OU_SE_2)
          
          
          nnet_MAMI50_RT_95upper <- nnet_MAMI50_RT_pred + 2*nnet_MAMI50_RT_SE
          nnet_MAMI50_RT_95lower <- nnet_MAMI50_RT_pred - 2*nnet_MAMI50_RT_SE
          nnet_MAMI50_RT_95width <- nnet_MAMI50_RT_95upper - nnet_MAMI50_RT_95lower
          nnet_MAMI50_UT_95upper <- nnet_MAMI50_UT_pred + 2*nnet_MAMI50_UT_SE
          nnet_MAMI50_UT_95lower <- nnet_MAMI50_UT_pred - 2*nnet_MAMI50_UT_SE
          nnet_MAMI50_UT_95width <- nnet_MAMI50_UT_95upper - nnet_MAMI50_UT_95lower
          nnet_MAMI50_SW_95upper <- nnet_MAMI50_SW_pred + 2*nnet_MAMI50_SW_SE
          nnet_MAMI50_SW_95lower <- nnet_MAMI50_SW_pred - 2*nnet_MAMI50_SW_SE
          nnet_MAMI50_SW_95width <- nnet_MAMI50_SW_95upper - nnet_MAMI50_SW_95lower
          nnet_MAMI50_OU_95upper <- nnet_MAMI50_OU_pred + 2*nnet_MAMI50_OU_SE
          nnet_MAMI50_OU_95lower <- nnet_MAMI50_OU_pred - 2*nnet_MAMI50_OU_SE
          nnet_MAMI50_OU_95width <- nnet_MAMI50_OU_95upper - nnet_MAMI50_OU_95lower
          
          nnet_MAMI50_RT_coverge <- (nnet_MAMI50_RT_95lower < RT_true) & (RT_true < nnet_MAMI50_RT_95upper)
          nnet_MAMI50_UT_coverge <- (nnet_MAMI50_UT_95lower < RT_true) & (UT_true < nnet_MAMI50_UT_95upper)
          nnet_MAMI50_SW_coverge <- (nnet_MAMI50_SW_95lower < RT_true) & (SW_true < nnet_MAMI50_SW_95upper)
          nnet_MAMI50_OU_coverge <- (nnet_MAMI50_OU_95lower < RT_true) & (OU_true < nnet_MAMI50_OU_95upper)
          
          list_nnet_MAMI50_RT_pred <- c(list_nnet_MAMI50_RT_pred, nnet_MAMI50_RT_pred)
          list_nnet_MAMI50_UT_pred <- c(list_nnet_MAMI50_UT_pred, nnet_MAMI50_UT_pred)
          list_nnet_MAMI50_SW_pred <- c(list_nnet_MAMI50_SW_pred, nnet_MAMI50_SW_pred)
          list_nnet_MAMI50_OU_pred <- c(list_nnet_MAMI50_OU_pred, nnet_MAMI50_OU_pred)
          list_nnet_MAMI50_RT_SE <- c(list_nnet_MAMI50_RT_SE, nnet_MAMI50_RT_SE)
          list_nnet_MAMI50_UT_SE <- c(list_nnet_MAMI50_UT_SE, nnet_MAMI50_UT_SE)
          list_nnet_MAMI50_SW_SE <- c(list_nnet_MAMI50_SW_SE, nnet_MAMI50_SW_SE)
          list_nnet_MAMI50_OU_SE <- c(list_nnet_MAMI50_OU_SE, nnet_MAMI50_OU_SE)
          list_nnet_MAMI50_RT_95width <- c(list_nnet_MAMI50_RT_95width, nnet_MAMI50_RT_95width)
          list_nnet_MAMI50_UT_95width <- c(list_nnet_MAMI50_UT_95width, nnet_MAMI50_UT_95width)
          list_nnet_MAMI50_SW_95width <- c(list_nnet_MAMI50_SW_95width, nnet_MAMI50_SW_95width)
          list_nnet_MAMI50_OU_95width <- c(list_nnet_MAMI50_OU_95width, nnet_MAMI50_OU_95width)
          list_nnet_MAMI50_RT_coverge <- c(list_nnet_MAMI50_RT_coverge, nnet_MAMI50_RT_coverge)
          list_nnet_MAMI50_UT_coverge <- c(list_nnet_MAMI50_UT_coverge, nnet_MAMI50_UT_coverge)
          list_nnet_MAMI50_SW_coverge <- c(list_nnet_MAMI50_SW_coverge, nnet_MAMI50_SW_coverge)
          list_nnet_MAMI50_OU_coverge <- c(list_nnet_MAMI50_OU_coverge, nnet_MAMI50_OU_coverge)
        }
      }
      
      #impute MA_20 
      {
        #model
        {
          set.seed(19)
          MAMI_20_nnet_imp <- hotdeck(MA_20) 
          
          missing_SEX <- MAMI_20_nnet_imp$SEX_imp
          missing_AGE <- MAMI_20_nnet_imp$AGE_imp
          missing_Indication <- MAMI_20_nnet_imp$Indication_imp
          missing_AntibioticClass <- MAMI_20_nnet_imp$AntibioticClass_imp
          
          MAMI_20_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MAMI_20_nnet_imp$SEX <- factor(MAMI_20_nnet_imp$SEX, labels = levels(simulated$SEX))
              MAMI_20_nnet_imp$AGE <- factor(MAMI_20_nnet_imp$AGE, labels = levels(simulated$AGE))
              MAMI_20_nnet_imp$Indication <- factor(MAMI_20_nnet_imp$Indication, labels = levels(simulated$Indication))
              MAMI_20_nnet_imp$AntibioticClass <- factor(MAMI_20_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_20_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MAMI_20_nnet_imp[is.na(MAMI_20_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MAMI_20_nnet_imp$SEX <- as.numeric(MAMI_20_nnet_imp$SEX)
              MAMI_20_nnet_imp$SEX[missing_SEX] <- pred
              
              MAMI_20_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MAMI_20_nnet_imp[is.na(MAMI_20_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_20_nnet_imp$AGE <- as.numeric(MAMI_20_nnet_imp$AGE)
              MAMI_20_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_20_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_20_nnet_imp[!is.na(MAMI_20_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MAMI_20_nnet_imp[is.na(MAMI_20_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_20_nnet_imp$Indication <- as.numeric(MAMI_20_nnet_imp$Indication)
              MAMI_20_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_20_nnet_imp_datasets <- c(MAMI_20_nnet_imp_datasets, list(MAMI_20_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_MAMI20_RT_pred_2 <- list()
          nnet_MAMI20_UT_pred_2 <- list()
          nnet_MAMI20_SW_pred_2 <- list()
          nnet_MAMI20_OU_pred_2 <- list()
          nnet_MAMI20_RT_SE_2 <- list()
          nnet_MAMI20_UT_SE_2 <- list()
          nnet_MAMI20_SW_SE_2 <- list()
          nnet_MAMI20_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_MAMI20_RT_pred_1 <- prop.table(table(MAMI_20_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_MAMI20_RT_pred_2 <- c(nnet_MAMI20_RT_pred_2, nnet_MAMI20_RT_pred_1)
            nnet_MAMI20_UT_pred_1 <- prop.table(table(MAMI_20_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_MAMI20_UT_pred_2 <- c(nnet_MAMI20_UT_pred_2, nnet_MAMI20_UT_pred_1)
            nnet_MAMI20_SW_pred_1 <- prop.table(table(MAMI_20_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_MAMI20_SW_pred_2 <- c(nnet_MAMI20_SW_pred_2, nnet_MAMI20_SW_pred_1)
            nnet_MAMI20_OU_pred_1 <- prop.table(table(MAMI_20_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_MAMI20_OU_pred_2 <- c(nnet_MAMI20_OU_pred_2, nnet_MAMI20_OU_pred_1)
            
            nnet_MAMI20_RT_SE_1 <- sqrt((nnet_MAMI20_RT_pred_1*(1 - nnet_MAMI20_RT_pred_1))/10000)
            nnet_MAMI20_RT_SE_2 <- c(nnet_MAMI20_RT_SE_2, nnet_MAMI20_RT_SE_1)
            nnet_MAMI20_UT_SE_1 <- sqrt((nnet_MAMI20_UT_pred_1*(1 - nnet_MAMI20_UT_pred_1))/10000)
            nnet_MAMI20_UT_SE_2 <- c(nnet_MAMI20_UT_SE_2, nnet_MAMI20_UT_SE_1)
            nnet_MAMI20_SW_SE_1 <- sqrt((nnet_MAMI20_SW_pred_1*(1 - nnet_MAMI20_SW_pred_1))/10000)
            nnet_MAMI20_SW_SE_2 <- c(nnet_MAMI20_SW_SE_2, nnet_MAMI20_SW_SE_1)
            nnet_MAMI20_OU_SE_1 <- sqrt((nnet_MAMI20_OU_pred_1*(1 - nnet_MAMI20_OU_pred_1))/10000)
            nnet_MAMI20_OU_SE_2 <- c(nnet_MAMI20_OU_SE_2, nnet_MAMI20_OU_SE_1)
          }
          
          nnet_MAMI20_RT_pred <- mean(sapply(nnet_MAMI20_RT_pred_2,sum))
          nnet_MAMI20_RT_SE <- function_RR(nnet_MAMI20_RT_pred_2, nnet_MAMI20_RT_SE_2)
          nnet_MAMI20_UT_pred <- mean(sapply(nnet_MAMI20_UT_pred_2,sum))
          nnet_MAMI20_UT_SE <- function_RR(nnet_MAMI20_UT_pred_2, nnet_MAMI20_UT_SE_2)
          nnet_MAMI20_SW_pred <- mean(sapply(nnet_MAMI20_SW_pred_2,sum))
          nnet_MAMI20_SW_SE <- function_RR(nnet_MAMI20_SW_pred_2, nnet_MAMI20_SW_SE_2)
          nnet_MAMI20_OU_pred <- mean(sapply(nnet_MAMI20_OU_pred_2,sum))
          nnet_MAMI20_OU_SE <- function_RR(nnet_MAMI20_OU_pred_2, nnet_MAMI20_OU_SE_2)
          
          
          nnet_MAMI20_RT_95upper <- nnet_MAMI20_RT_pred + 2*nnet_MAMI20_RT_SE
          nnet_MAMI20_RT_95lower <- nnet_MAMI20_RT_pred - 2*nnet_MAMI20_RT_SE
          nnet_MAMI20_RT_95width <- nnet_MAMI20_RT_95upper - nnet_MAMI20_RT_95lower
          nnet_MAMI20_UT_95upper <- nnet_MAMI20_UT_pred + 2*nnet_MAMI20_UT_SE
          nnet_MAMI20_UT_95lower <- nnet_MAMI20_UT_pred - 2*nnet_MAMI20_UT_SE
          nnet_MAMI20_UT_95width <- nnet_MAMI20_UT_95upper - nnet_MAMI20_UT_95lower
          nnet_MAMI20_SW_95upper <- nnet_MAMI20_SW_pred + 2*nnet_MAMI20_SW_SE
          nnet_MAMI20_SW_95lower <- nnet_MAMI20_SW_pred - 2*nnet_MAMI20_SW_SE
          nnet_MAMI20_SW_95width <- nnet_MAMI20_SW_95upper - nnet_MAMI20_SW_95lower
          nnet_MAMI20_OU_95upper <- nnet_MAMI20_OU_pred + 2*nnet_MAMI20_OU_SE
          nnet_MAMI20_OU_95lower <- nnet_MAMI20_OU_pred - 2*nnet_MAMI20_OU_SE
          nnet_MAMI20_OU_95width <- nnet_MAMI20_OU_95upper - nnet_MAMI20_OU_95lower
          
          nnet_MAMI20_RT_coverge <- (nnet_MAMI20_RT_95lower < RT_true) & (RT_true < nnet_MAMI20_RT_95upper)
          nnet_MAMI20_UT_coverge <- (nnet_MAMI20_UT_95lower < RT_true) & (UT_true < nnet_MAMI20_UT_95upper)
          nnet_MAMI20_SW_coverge <- (nnet_MAMI20_SW_95lower < RT_true) & (SW_true < nnet_MAMI20_SW_95upper)
          nnet_MAMI20_OU_coverge <- (nnet_MAMI20_OU_95lower < RT_true) & (OU_true < nnet_MAMI20_OU_95upper)
          
          list_nnet_MAMI20_RT_pred <- c(list_nnet_MAMI20_RT_pred, nnet_MAMI20_RT_pred)
          list_nnet_MAMI20_UT_pred <- c(list_nnet_MAMI20_UT_pred, nnet_MAMI20_UT_pred)
          list_nnet_MAMI20_SW_pred <- c(list_nnet_MAMI20_SW_pred, nnet_MAMI20_SW_pred)
          list_nnet_MAMI20_OU_pred <- c(list_nnet_MAMI20_OU_pred, nnet_MAMI20_OU_pred)
          list_nnet_MAMI20_RT_SE <- c(list_nnet_MAMI20_RT_SE, nnet_MAMI20_RT_SE)
          list_nnet_MAMI20_UT_SE <- c(list_nnet_MAMI20_UT_SE, nnet_MAMI20_UT_SE)
          list_nnet_MAMI20_SW_SE <- c(list_nnet_MAMI20_SW_SE, nnet_MAMI20_SW_SE)
          list_nnet_MAMI20_OU_SE <- c(list_nnet_MAMI20_OU_SE, nnet_MAMI20_OU_SE)
          list_nnet_MAMI20_RT_95width <- c(list_nnet_MAMI20_RT_95width, nnet_MAMI20_RT_95width)
          list_nnet_MAMI20_UT_95width <- c(list_nnet_MAMI20_UT_95width, nnet_MAMI20_UT_95width)
          list_nnet_MAMI20_SW_95width <- c(list_nnet_MAMI20_SW_95width, nnet_MAMI20_SW_95width)
          list_nnet_MAMI20_OU_95width <- c(list_nnet_MAMI20_OU_95width, nnet_MAMI20_OU_95width)
          list_nnet_MAMI20_RT_coverge <- c(list_nnet_MAMI20_RT_coverge, nnet_MAMI20_RT_coverge)
          list_nnet_MAMI20_UT_coverge <- c(list_nnet_MAMI20_UT_coverge, nnet_MAMI20_UT_coverge)
          list_nnet_MAMI20_SW_coverge <- c(list_nnet_MAMI20_SW_coverge, nnet_MAMI20_SW_coverge)
          list_nnet_MAMI20_OU_coverge <- c(list_nnet_MAMI20_OU_coverge, nnet_MAMI20_OU_coverge)
        }
      }
      
      #impute MA_5 
      {
        #model
        {
          set.seed(19)
          MAMI_5_nnet_imp <- hotdeck(MA_5) 
          
          missing_SEX <- MAMI_5_nnet_imp$SEX_imp
          missing_AGE <- MAMI_5_nnet_imp$AGE_imp
          missing_Indication <- MAMI_5_nnet_imp$Indication_imp
          missing_AntibioticClass <- MAMI_5_nnet_imp$AntibioticClass_imp
          
          MAMI_5_nnet_imp_datasets <- list()
          for(j in 1:5){ 
            for(m in 1:10){ 
              #fitControl <- trainControl(method = "repeatedcv", number = 10, repeats = 5, classProbs = TRUE, summaryFunction = multiClassSummary)
              #nnetGrid <-  expand.grid(size = seq(from = 1, to = 10, by = 1), decay = seq(from = 0.1, to = 0.5, by = 0.1))
              #nnetFit <- train(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$SEX), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$AGE), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              #nnetFit <- train(Indication ~ AGE+SEX+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$Indication), ], method = "nnet", metric = "Accuracy", trControl = fitControl, tuneGrid = nnetGrid, verbose = FALSE)
              
              MAMI_5_nnet_imp$SEX <- factor(MAMI_5_nnet_imp$SEX, labels = levels(simulated$SEX))
              MAMI_5_nnet_imp$AGE <- factor(MAMI_5_nnet_imp$AGE, labels = levels(simulated$AGE))
              MAMI_5_nnet_imp$Indication <- factor(MAMI_5_nnet_imp$Indication, labels = levels(simulated$Indication))
              MAMI_5_nnet_imp$AntibioticClass <- factor(MAMI_5_nnet_imp$AntibioticClass, labels = levels(simulated$AntibioticClass))
              
              MAMI_5_nnet_imp$SEX[missing_SEX] <- NA 
              nnet_model <- nnet(SEX ~ AGE+Indication+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$SEX), ], family= multipleClasses, size = 2, decay= 0.4) 
              raws <- predict(nnet_model, newdata = MAMI_5_nnet_imp[is.na(MAMI_5_nnet_imp$SEX), ], type = "raw")
              pred <- rbinom(length(raws), size = 1, prob = raws) + 1
              MAMI_5_nnet_imp$SEX <- as.numeric(MAMI_5_nnet_imp$SEX)
              MAMI_5_nnet_imp$SEX[missing_SEX] <- pred
              
              MAMI_5_nnet_imp$AGE[missing_AGE] <- NA
              nnet_model <- nnet(AGE ~ SEX+Indication+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$AGE), ], family= multipleClasses, size = 16, decay= 0.6) 
              raws <- predict(nnet_model, newdata = MAMI_5_nnet_imp[is.na(MAMI_5_nnet_imp$AGE), ], type = "raw")
              pred_AGE <- vector()
              for (i in 1:(length(raws)/3)){
                pred <- sample(c(1,2,3), 1, replace=TRUE, prob=raws[i, ])
                pred_AGE <- c(pred_AGE, pred)
              }
              MAMI_5_nnet_imp$AGE <- as.numeric(MAMI_5_nnet_imp$AGE)
              MAMI_5_nnet_imp$AGE[missing_AGE] <- pred_AGE
              
              MAMI_5_nnet_imp$Indication[missing_Indication] <- NA
              nnet_model <- nnet(Indication ~ SEX+AGE+AntibioticClass, data = MAMI_5_nnet_imp[!is.na(MAMI_5_nnet_imp$Indication), ], family= multipleClasses, size = 4, decay= 0.3)
              raws <- predict(nnet_model, newdata = MAMI_5_nnet_imp[is.na(MAMI_5_nnet_imp$Indication), ], type = "raw")
              pred_Indication <- vector()
              for (i in 1:(length(raws)/4)){
                pred <- sample(c(1,2,3,4), 1, replace=TRUE, prob=raws[i, ])
                pred_Indication <- c(pred_Indication, pred)
              } 
              MAMI_5_nnet_imp$Indication <- as.numeric(MAMI_5_nnet_imp$Indication)
              MAMI_5_nnet_imp$Indication[missing_Indication] <- pred_Indication
            }
            MAMI_5_nnet_imp_datasets <- c(MAMI_5_nnet_imp_datasets, list(MAMI_5_nnet_imp))
          }  
        }
        
        #results
        {
          #percentage of only imputed antibiotics class
          nnet_MAMI5_RT_pred_2 <- list()
          nnet_MAMI5_UT_pred_2 <- list()
          nnet_MAMI5_SW_pred_2 <- list()
          nnet_MAMI5_OU_pred_2 <- list()
          nnet_MAMI5_RT_SE_2 <- list()
          nnet_MAMI5_UT_SE_2 <- list()
          nnet_MAMI5_SW_SE_2 <- list()
          nnet_MAMI5_OU_SE_2 <- list()
          
          for (i in 1:5){
            nnet_MAMI5_RT_pred_1 <- prop.table(table(MAMI_5_nnet_imp_datasets[[i]]$Indication))[1]
            nnet_MAMI5_RT_pred_2 <- c(nnet_MAMI5_RT_pred_2, nnet_MAMI5_RT_pred_1)
            nnet_MAMI5_UT_pred_1 <- prop.table(table(MAMI_5_nnet_imp_datasets[[i]]$Indication))[2]
            nnet_MAMI5_UT_pred_2 <- c(nnet_MAMI5_UT_pred_2, nnet_MAMI5_UT_pred_1)
            nnet_MAMI5_SW_pred_1 <- prop.table(table(MAMI_5_nnet_imp_datasets[[i]]$Indication))[3]
            nnet_MAMI5_SW_pred_2 <- c(nnet_MAMI5_SW_pred_2, nnet_MAMI5_SW_pred_1)
            nnet_MAMI5_OU_pred_1 <- prop.table(table(MAMI_5_nnet_imp_datasets[[i]]$Indication))[4]
            nnet_MAMI5_OU_pred_2 <- c(nnet_MAMI5_OU_pred_2, nnet_MAMI5_OU_pred_1)
            
            nnet_MAMI5_RT_SE_1 <- sqrt((nnet_MAMI5_RT_pred_1*(1 - nnet_MAMI5_RT_pred_1))/10000)
            nnet_MAMI5_RT_SE_2 <- c(nnet_MAMI5_RT_SE_2, nnet_MAMI5_RT_SE_1)
            nnet_MAMI5_UT_SE_1 <- sqrt((nnet_MAMI5_UT_pred_1*(1 - nnet_MAMI5_UT_pred_1))/10000)
            nnet_MAMI5_UT_SE_2 <- c(nnet_MAMI5_UT_SE_2, nnet_MAMI5_UT_SE_1)
            nnet_MAMI5_SW_SE_1 <- sqrt((nnet_MAMI5_SW_pred_1*(1 - nnet_MAMI5_SW_pred_1))/10000)
            nnet_MAMI5_SW_SE_2 <- c(nnet_MAMI5_SW_SE_2, nnet_MAMI5_SW_SE_1)
            nnet_MAMI5_OU_SE_1 <- sqrt((nnet_MAMI5_OU_pred_1*(1 - nnet_MAMI5_OU_pred_1))/10000)
            nnet_MAMI5_OU_SE_2 <- c(nnet_MAMI5_OU_SE_2, nnet_MAMI5_OU_SE_1)
          }
          
          nnet_MAMI5_RT_pred <- mean(sapply(nnet_MAMI5_RT_pred_2,sum))
          nnet_MAMI5_RT_SE <- function_RR(nnet_MAMI5_RT_pred_2, nnet_MAMI5_RT_SE_2)
          nnet_MAMI5_UT_pred <- mean(sapply(nnet_MAMI5_UT_pred_2,sum))
          nnet_MAMI5_UT_SE <- function_RR(nnet_MAMI5_UT_pred_2, nnet_MAMI5_UT_SE_2)
          nnet_MAMI5_SW_pred <- mean(sapply(nnet_MAMI5_SW_pred_2,sum))
          nnet_MAMI5_SW_SE <- function_RR(nnet_MAMI5_SW_pred_2, nnet_MAMI5_SW_SE_2)
          nnet_MAMI5_OU_pred <- mean(sapply(nnet_MAMI5_OU_pred_2,sum))
          nnet_MAMI5_OU_SE <- function_RR(nnet_MAMI5_OU_pred_2, nnet_MAMI5_OU_SE_2)
          
          
          nnet_MAMI5_RT_95upper <- nnet_MAMI5_RT_pred + 2*nnet_MAMI5_RT_SE
          nnet_MAMI5_RT_95lower <- nnet_MAMI5_RT_pred - 2*nnet_MAMI5_RT_SE
          nnet_MAMI5_RT_95width <- nnet_MAMI5_RT_95upper - nnet_MAMI5_RT_95lower
          nnet_MAMI5_UT_95upper <- nnet_MAMI5_UT_pred + 2*nnet_MAMI5_UT_SE
          nnet_MAMI5_UT_95lower <- nnet_MAMI5_UT_pred - 2*nnet_MAMI5_UT_SE
          nnet_MAMI5_UT_95width <- nnet_MAMI5_UT_95upper - nnet_MAMI5_UT_95lower
          nnet_MAMI5_SW_95upper <- nnet_MAMI5_SW_pred + 2*nnet_MAMI5_SW_SE
          nnet_MAMI5_SW_95lower <- nnet_MAMI5_SW_pred - 2*nnet_MAMI5_SW_SE
          nnet_MAMI5_SW_95width <- nnet_MAMI5_SW_95upper - nnet_MAMI5_SW_95lower
          nnet_MAMI5_OU_95upper <- nnet_MAMI5_OU_pred + 2*nnet_MAMI5_OU_SE
          nnet_MAMI5_OU_95lower <- nnet_MAMI5_OU_pred - 2*nnet_MAMI5_OU_SE
          nnet_MAMI5_OU_95width <- nnet_MAMI5_OU_95upper - nnet_MAMI5_OU_95lower
          
          nnet_MAMI5_RT_coverge <- (nnet_MAMI5_RT_95lower < RT_true) & (RT_true < nnet_MAMI5_RT_95upper)
          nnet_MAMI5_UT_coverge <- (nnet_MAMI5_UT_95lower < RT_true) & (UT_true < nnet_MAMI5_UT_95upper)
          nnet_MAMI5_SW_coverge <- (nnet_MAMI5_SW_95lower < RT_true) & (SW_true < nnet_MAMI5_SW_95upper)
          nnet_MAMI5_OU_coverge <- (nnet_MAMI5_OU_95lower < RT_true) & (OU_true < nnet_MAMI5_OU_95upper)
          
          list_nnet_MAMI5_RT_pred <- c(list_nnet_MAMI5_RT_pred, nnet_MAMI5_RT_pred)
          list_nnet_MAMI5_UT_pred <- c(list_nnet_MAMI5_UT_pred, nnet_MAMI5_UT_pred)
          list_nnet_MAMI5_SW_pred <- c(list_nnet_MAMI5_SW_pred, nnet_MAMI5_SW_pred)
          list_nnet_MAMI5_OU_pred <- c(list_nnet_MAMI5_OU_pred, nnet_MAMI5_OU_pred)
          list_nnet_MAMI5_RT_SE <- c(list_nnet_MAMI5_RT_SE, nnet_MAMI5_RT_SE)
          list_nnet_MAMI5_UT_SE <- c(list_nnet_MAMI5_UT_SE, nnet_MAMI5_UT_SE)
          list_nnet_MAMI5_SW_SE <- c(list_nnet_MAMI5_SW_SE, nnet_MAMI5_SW_SE)
          list_nnet_MAMI5_OU_SE <- c(list_nnet_MAMI5_OU_SE, nnet_MAMI5_OU_SE)
          list_nnet_MAMI5_RT_95width <- c(list_nnet_MAMI5_RT_95width, nnet_MAMI5_RT_95width)
          list_nnet_MAMI5_UT_95width <- c(list_nnet_MAMI5_UT_95width, nnet_MAMI5_UT_95width)
          list_nnet_MAMI5_SW_95width <- c(list_nnet_MAMI5_SW_95width, nnet_MAMI5_SW_95width)
          list_nnet_MAMI5_OU_95width <- c(list_nnet_MAMI5_OU_95width, nnet_MAMI5_OU_95width)
          list_nnet_MAMI5_RT_coverge <- c(list_nnet_MAMI5_RT_coverge, nnet_MAMI5_RT_coverge)
          list_nnet_MAMI5_UT_coverge <- c(list_nnet_MAMI5_UT_coverge, nnet_MAMI5_UT_coverge)
          list_nnet_MAMI5_SW_coverge <- c(list_nnet_MAMI5_SW_coverge, nnet_MAMI5_SW_coverge)
          list_nnet_MAMI5_OU_coverge <- c(list_nnet_MAMI5_OU_coverge, nnet_MAMI5_OU_coverge)
        }
      }
    }
  }
}

#Performance of benchmark
{
  list_UA_80_benchmark_RT <- sapply(list_UA_80_benchmark_RT, sum)
  mean_UA_80_benchmark_RT <- mean(list_UA_80_benchmark_RT)
  sd_UA_80_benchmark_RT <- sd(list_UA_80_benchmark_RT)
  list_UA_80_benchmark_RT_SE <- sapply(list_UA_80_benchmark_RT_SE, sum)
  mean_UA_80_benchmark_RT_SE <- mean(list_UA_80_benchmark_RT_SE)
  sd_UA_80_benchmark_RT_SE <- sd(list_UA_80_benchmark_RT_SE)
  CIlower_UA_80_benchmark_RT <- mean_UA_80_benchmark_RT - (2*mean_UA_80_benchmark_RT_SE)
  CIupper_UA_80_benchmark_RT <- mean_UA_80_benchmark_RT + (2*mean_UA_80_benchmark_RT_SE)
  UA_80_benchmark_RT_max <- max(list_UA_80_benchmark_RT) 
  UA_80_benchmark_RT_min <- min(list_UA_80_benchmark_RT)
  RB_UA_80_benchmark_RT <- bias(RT_true, list_UA_80_benchmark_RT)
  bias_RB_UA_80_benchmark_RT <- list_UA_80_benchmark_RT - RT_true
  sd_RB_UA_80_benchmark_RT <- sd(bias_RB_UA_80_benchmark_RT)
  PB_UA_80_benchmark_RT <- percent_bias(RT_true, list_UA_80_benchmark_RT) *100
  RMSE_UA_80_benchmark_RT <- rmse(RT_true, list_UA_80_benchmark_RT)
  AW_UA_80_benchmark_RT <- mean(sapply(list_UA_80_benchmark_RT_95width, sum))
  list_UA_80_benchmark_RT_coverge <- sapply(list_UA_80_benchmark_RT_coverge, sum)
  CR_UA_80_benchmark_RT <- mean(list_UA_80_benchmark_RT_coverge)
  sd_CR_UA_80_benchmark_RT <- sd(list_UA_80_benchmark_RT_coverge)
  list_UA_80_benchmark_UT <- sapply(list_UA_80_benchmark_UT, sum)
  mean_UA_80_benchmark_UT <- mean(list_UA_80_benchmark_UT)
  sd_UA_80_benchmark_UT <- sd(list_UA_80_benchmark_UT)
  list_UA_80_benchmark_UT_SE <- sapply(list_UA_80_benchmark_UT_SE, sum)
  mean_UA_80_benchmark_UT_SE <- mean(list_UA_80_benchmark_UT_SE)
  sd_UA_80_benchmark_UT_SE <- sd(list_UA_80_benchmark_UT_SE)
  CIlower_UA_80_benchmark_UT <- mean_UA_80_benchmark_UT - (2*mean_UA_80_benchmark_UT_SE)
  CIupper_UA_80_benchmark_UT <- mean_UA_80_benchmark_UT + (2*mean_UA_80_benchmark_UT_SE)
  UA_80_benchmark_UT_max <- max(list_UA_80_benchmark_UT) 
  UA_80_benchmark_UT_min <- min(list_UA_80_benchmark_UT)
  RB_UA_80_benchmark_UT <- bias(UT_true, list_UA_80_benchmark_UT)
  bias_RB_UA_80_benchmark_UT <- list_UA_80_benchmark_UT - UT_true
  sd_RB_UA_80_benchmark_UT <- sd(bias_RB_UA_80_benchmark_UT)
  PB_UA_80_benchmark_UT <- percent_bias(UT_true, list_UA_80_benchmark_UT) *100
  RMSE_UA_80_benchmark_UT <- rmse(UT_true, list_UA_80_benchmark_UT)
  AW_UA_80_benchmark_UT <- mean(sapply(list_UA_80_benchmark_UT_95width, sum))
  list_UA_80_benchmark_UT_coverge <- sapply(list_UA_80_benchmark_UT_coverge, sum)
  CR_UA_80_benchmark_UT <- mean(list_UA_80_benchmark_UT_coverge)
  sd_CR_UA_80_benchmark_UT <- sd(list_UA_80_benchmark_UT_coverge)
  list_UA_80_benchmark_SW <- sapply(list_UA_80_benchmark_SW, sum)
  mean_UA_80_benchmark_SW <- mean(list_UA_80_benchmark_SW)
  sd_UA_80_benchmark_SW <- sd(list_UA_80_benchmark_SW)
  list_UA_80_benchmark_SW_SE <- sapply(list_UA_80_benchmark_SW_SE, sum)
  mean_UA_80_benchmark_SW_SE <- mean(list_UA_80_benchmark_SW_SE)
  sd_UA_80_benchmark_SW_SE <- sd(list_UA_80_benchmark_SW_SE)
  CIlower_UA_80_benchmark_SW <- mean_UA_80_benchmark_SW - (2*mean_UA_80_benchmark_SW_SE)
  CIupper_UA_80_benchmark_SW <- mean_UA_80_benchmark_SW + (2*mean_UA_80_benchmark_SW_SE)
  UA_80_benchmark_SW_max <- max(list_UA_80_benchmark_SW) 
  UA_80_benchmark_SW_min <- min(list_UA_80_benchmark_SW)
  RB_UA_80_benchmark_SW <- bias(SW_true, list_UA_80_benchmark_SW)
  bias_RB_UA_80_benchmark_SW <- list_UA_80_benchmark_SW - SW_true
  sd_RB_UA_80_benchmark_SW <- sd(bias_RB_UA_80_benchmark_SW)
  PB_UA_80_benchmark_SW <- percent_bias(SW_true, list_UA_80_benchmark_SW) *100
  RMSE_UA_80_benchmark_SW <- rmse(SW_true, list_UA_80_benchmark_SW)
  AW_UA_80_benchmark_SW <- mean(sapply(list_UA_80_benchmark_SW_95width, sum))
  list_UA_80_benchmark_SW_coverge <- sapply(list_UA_80_benchmark_SW_coverge, sum)
  CR_UA_80_benchmark_SW <- mean(list_UA_80_benchmark_SW_coverge)
  sd_CR_UA_80_benchmark_SW <- sd(list_UA_80_benchmark_SW_coverge)
  list_UA_80_benchmark_OU <- sapply(list_UA_80_benchmark_OU, sum)
  mean_UA_80_benchmark_OU <- mean(list_UA_80_benchmark_OU)
  sd_UA_80_benchmark_OU <- sd(list_UA_80_benchmark_OU)
  list_UA_80_benchmark_OU_SE <- sapply(list_UA_80_benchmark_OU_SE, sum)
  mean_UA_80_benchmark_OU_SE <- mean(list_UA_80_benchmark_OU_SE)
  sd_UA_80_benchmark_OU_SE <- sd(list_UA_80_benchmark_OU_SE)
  CIlower_UA_80_benchmark_OU <- mean_UA_80_benchmark_OU - (2*mean_UA_80_benchmark_OU_SE)
  CIupper_UA_80_benchmark_OU <- mean_UA_80_benchmark_OU + (2*mean_UA_80_benchmark_OU_SE)
  UA_80_benchmark_OU_max <- max(list_UA_80_benchmark_OU) 
  UA_80_benchmark_OU_min <- min(list_UA_80_benchmark_OU)
  RB_UA_80_benchmark_OU <- bias(OU_true, list_UA_80_benchmark_OU)
  bias_RB_UA_80_benchmark_OU <- list_UA_80_benchmark_OU - OU_true
  sd_RB_UA_80_benchmark_OU <- sd(bias_RB_UA_80_benchmark_OU)
  PB_UA_80_benchmark_OU <- percent_bias(OU_true, list_UA_80_benchmark_OU) *100
  RMSE_UA_80_benchmark_OU <- rmse(OU_true, list_UA_80_benchmark_OU)
  AW_UA_80_benchmark_OU <- mean(sapply(list_UA_80_benchmark_OU_95width, sum))
  list_UA_80_benchmark_OU_coverge <- sapply(list_UA_80_benchmark_OU_coverge, sum)
  CR_UA_80_benchmark_OU <- mean(list_UA_80_benchmark_OU_coverge)
  sd_CR_UA_80_benchmark_OU <- sd(list_UA_80_benchmark_OU_coverge)
  
  list_UA_50_benchmark_RT <- sapply(list_UA_50_benchmark_RT, sum)
  mean_UA_50_benchmark_RT <- mean(list_UA_50_benchmark_RT)
  sd_UA_50_benchmark_RT <- sd(list_UA_50_benchmark_RT)
  list_UA_50_benchmark_RT_SE <- sapply(list_UA_50_benchmark_RT_SE, sum)
  mean_UA_50_benchmark_RT_SE <- mean(list_UA_50_benchmark_RT_SE)
  sd_UA_50_benchmark_RT_SE <- sd(list_UA_50_benchmark_RT_SE)
  CIlower_UA_50_benchmark_RT <- mean_UA_50_benchmark_RT - (2*mean_UA_50_benchmark_RT_SE)
  CIupper_UA_50_benchmark_RT <- mean_UA_50_benchmark_RT + (2*mean_UA_50_benchmark_RT_SE)
  UA_50_benchmark_RT_max <- max(list_UA_50_benchmark_RT) 
  UA_50_benchmark_RT_min <- min(list_UA_50_benchmark_RT)
  RB_UA_50_benchmark_RT <- bias(RT_true, list_UA_50_benchmark_RT)
  bias_RB_UA_50_benchmark_RT <- list_UA_50_benchmark_RT - RT_true
  sd_RB_UA_50_benchmark_RT <- sd(bias_RB_UA_50_benchmark_RT)
  PB_UA_50_benchmark_RT <- percent_bias(RT_true, list_UA_50_benchmark_RT) *100
  RMSE_UA_50_benchmark_RT <- rmse(RT_true, list_UA_50_benchmark_RT)
  AW_UA_50_benchmark_RT <- mean(sapply(list_UA_50_benchmark_RT_95width, sum))
  list_UA_50_benchmark_RT_coverge <- sapply(list_UA_50_benchmark_RT_coverge, sum)
  CR_UA_50_benchmark_RT <- mean(list_UA_50_benchmark_RT_coverge)
  sd_CR_UA_50_benchmark_RT <- sd(list_UA_50_benchmark_RT_coverge)
  list_UA_50_benchmark_UT <- sapply(list_UA_50_benchmark_UT, sum)
  mean_UA_50_benchmark_UT <- mean(list_UA_50_benchmark_UT)
  sd_UA_50_benchmark_UT <- sd(list_UA_50_benchmark_UT)
  list_UA_50_benchmark_UT_SE <- sapply(list_UA_50_benchmark_UT_SE, sum)
  mean_UA_50_benchmark_UT_SE <- mean(list_UA_50_benchmark_UT_SE)
  sd_UA_50_benchmark_UT_SE <- sd(list_UA_50_benchmark_UT_SE)
  CIlower_UA_50_benchmark_UT <- mean_UA_50_benchmark_UT - (2*mean_UA_50_benchmark_UT_SE)
  CIupper_UA_50_benchmark_UT <- mean_UA_50_benchmark_UT + (2*mean_UA_50_benchmark_UT_SE)
  UA_50_benchmark_UT_max <- max(list_UA_50_benchmark_UT) 
  UA_50_benchmark_UT_min <- min(list_UA_50_benchmark_UT)
  RB_UA_50_benchmark_UT <- bias(UT_true, list_UA_50_benchmark_UT)
  bias_RB_UA_50_benchmark_UT <- list_UA_50_benchmark_UT - UT_true
  sd_RB_UA_50_benchmark_UT <- sd(bias_RB_UA_50_benchmark_UT)
  PB_UA_50_benchmark_UT <- percent_bias(UT_true, list_UA_50_benchmark_UT) *100
  RMSE_UA_50_benchmark_UT <- rmse(UT_true, list_UA_50_benchmark_UT)
  AW_UA_50_benchmark_UT <- mean(sapply(list_UA_50_benchmark_UT_95width, sum))
  list_UA_50_benchmark_UT_coverge <- sapply(list_UA_50_benchmark_UT_coverge, sum)
  CR_UA_50_benchmark_UT <- mean(list_UA_50_benchmark_UT_coverge)
  sd_CR_UA_50_benchmark_UT <- sd(list_UA_50_benchmark_UT_coverge)
  list_UA_50_benchmark_SW <- sapply(list_UA_50_benchmark_SW, sum)
  mean_UA_50_benchmark_SW <- mean(list_UA_50_benchmark_SW)
  sd_UA_50_benchmark_SW <- sd(list_UA_50_benchmark_SW)
  list_UA_50_benchmark_SW_SE <- sapply(list_UA_50_benchmark_SW_SE, sum)
  mean_UA_50_benchmark_SW_SE <- mean(list_UA_50_benchmark_SW_SE)
  sd_UA_50_benchmark_SW_SE <- sd(list_UA_50_benchmark_SW_SE)
  CIlower_UA_50_benchmark_SW <- mean_UA_50_benchmark_SW - (2*mean_UA_50_benchmark_SW_SE)
  CIupper_UA_50_benchmark_SW <- mean_UA_50_benchmark_SW + (2*mean_UA_50_benchmark_SW_SE)
  UA_50_benchmark_SW_max <- max(list_UA_50_benchmark_SW) 
  UA_50_benchmark_SW_min <- min(list_UA_50_benchmark_SW)
  RB_UA_50_benchmark_SW <- bias(SW_true, list_UA_50_benchmark_SW)
  bias_RB_UA_50_benchmark_SW <- list_UA_50_benchmark_SW - SW_true
  sd_RB_UA_50_benchmark_SW <- sd(bias_RB_UA_50_benchmark_SW)
  PB_UA_50_benchmark_SW <- percent_bias(SW_true, list_UA_50_benchmark_SW) *100
  RMSE_UA_50_benchmark_SW <- rmse(SW_true, list_UA_50_benchmark_SW)
  AW_UA_50_benchmark_SW <- mean(sapply(list_UA_50_benchmark_SW_95width, sum))
  list_UA_50_benchmark_SW_coverge <- sapply(list_UA_50_benchmark_SW_coverge, sum)
  CR_UA_50_benchmark_SW <- mean(list_UA_50_benchmark_SW_coverge)
  sd_CR_UA_50_benchmark_SW <- sd(list_UA_50_benchmark_SW_coverge)
  list_UA_50_benchmark_OU <- sapply(list_UA_50_benchmark_OU, sum)
  mean_UA_50_benchmark_OU <- mean(list_UA_50_benchmark_OU)
  sd_UA_50_benchmark_OU <- sd(list_UA_50_benchmark_OU)
  list_UA_50_benchmark_OU_SE <- sapply(list_UA_50_benchmark_OU_SE, sum)
  mean_UA_50_benchmark_OU_SE <- mean(list_UA_50_benchmark_OU_SE)
  sd_UA_50_benchmark_OU_SE <- sd(list_UA_50_benchmark_OU_SE)
  CIlower_UA_50_benchmark_OU <- mean_UA_50_benchmark_OU - (2*mean_UA_50_benchmark_OU_SE)
  CIupper_UA_50_benchmark_OU <- mean_UA_50_benchmark_OU + (2*mean_UA_50_benchmark_OU_SE)
  UA_50_benchmark_OU_max <- max(list_UA_50_benchmark_OU) 
  UA_50_benchmark_OU_min <- min(list_UA_50_benchmark_OU)
  RB_UA_50_benchmark_OU <- bias(OU_true, list_UA_50_benchmark_OU)
  bias_RB_UA_50_benchmark_OU <- list_UA_50_benchmark_OU - OU_true
  sd_RB_UA_50_benchmark_OU <- sd(bias_RB_UA_50_benchmark_OU)
  PB_UA_50_benchmark_OU <- percent_bias(OU_true, list_UA_50_benchmark_OU) *100
  RMSE_UA_50_benchmark_OU <- rmse(OU_true, list_UA_50_benchmark_OU)
  AW_UA_50_benchmark_OU <- mean(sapply(list_UA_50_benchmark_OU_95width, sum))
  list_UA_50_benchmark_OU_coverge <- sapply(list_UA_50_benchmark_OU_coverge, sum)
  CR_UA_50_benchmark_OU <- mean(list_UA_50_benchmark_OU_coverge)
  sd_CR_UA_50_benchmark_OU <- sd(list_UA_50_benchmark_OU_coverge)
  
  list_UA_20_benchmark_RT <- sapply(list_UA_20_benchmark_RT, sum)
  mean_UA_20_benchmark_RT <- mean(list_UA_20_benchmark_RT)
  sd_UA_20_benchmark_RT <- sd(list_UA_20_benchmark_RT)
  list_UA_20_benchmark_RT_SE <- sapply(list_UA_20_benchmark_RT_SE, sum)
  mean_UA_20_benchmark_RT_SE <- mean(list_UA_20_benchmark_RT_SE)
  sd_UA_20_benchmark_RT_SE <- sd(list_UA_20_benchmark_RT_SE)
  CIlower_UA_20_benchmark_RT <- mean_UA_20_benchmark_RT - (2*mean_UA_20_benchmark_RT_SE)
  CIupper_UA_20_benchmark_RT <- mean_UA_20_benchmark_RT + (2*mean_UA_20_benchmark_RT_SE)
  UA_20_benchmark_RT_max <- max(list_UA_20_benchmark_RT) 
  UA_20_benchmark_RT_min <- min(list_UA_20_benchmark_RT)
  RB_UA_20_benchmark_RT <- bias(RT_true, list_UA_20_benchmark_RT)
  bias_RB_UA_20_benchmark_RT <- list_UA_20_benchmark_RT - RT_true
  sd_RB_UA_20_benchmark_RT <- sd(bias_RB_UA_20_benchmark_RT)
  PB_UA_20_benchmark_RT <- percent_bias(RT_true, list_UA_20_benchmark_RT) *100
  RMSE_UA_20_benchmark_RT <- rmse(RT_true, list_UA_20_benchmark_RT)
  AW_UA_20_benchmark_RT <- mean(sapply(list_UA_20_benchmark_RT_95width, sum))
  list_UA_20_benchmark_RT_coverge <- sapply(list_UA_20_benchmark_RT_coverge, sum)
  CR_UA_20_benchmark_RT <- mean(list_UA_20_benchmark_RT_coverge)
  sd_CR_UA_20_benchmark_RT <- sd(list_UA_20_benchmark_RT_coverge)
  list_UA_20_benchmark_UT <- sapply(list_UA_20_benchmark_UT, sum)
  mean_UA_20_benchmark_UT <- mean(list_UA_20_benchmark_UT)
  sd_UA_20_benchmark_UT <- sd(list_UA_20_benchmark_UT)
  list_UA_20_benchmark_UT_SE <- sapply(list_UA_20_benchmark_UT_SE, sum)
  mean_UA_20_benchmark_UT_SE <- mean(list_UA_20_benchmark_UT_SE)
  sd_UA_20_benchmark_UT_SE <- sd(list_UA_20_benchmark_UT_SE)
  CIlower_UA_20_benchmark_UT <- mean_UA_20_benchmark_UT - (2*mean_UA_20_benchmark_UT_SE)
  CIupper_UA_20_benchmark_UT <- mean_UA_20_benchmark_UT + (2*mean_UA_20_benchmark_UT_SE)
  UA_20_benchmark_UT_max <- max(list_UA_20_benchmark_UT) 
  UA_20_benchmark_UT_min <- min(list_UA_20_benchmark_UT)
  RB_UA_20_benchmark_UT <- bias(UT_true, list_UA_20_benchmark_UT)
  bias_RB_UA_20_benchmark_UT <- list_UA_20_benchmark_UT - UT_true
  sd_RB_UA_20_benchmark_UT <- sd(bias_RB_UA_20_benchmark_UT)
  PB_UA_20_benchmark_UT <- percent_bias(UT_true, list_UA_20_benchmark_UT) *100
  RMSE_UA_20_benchmark_UT <- rmse(UT_true, list_UA_20_benchmark_UT)
  AW_UA_20_benchmark_UT <- mean(sapply(list_UA_20_benchmark_UT_95width, sum))
  list_UA_20_benchmark_UT_coverge <- sapply(list_UA_20_benchmark_UT_coverge, sum)
  CR_UA_20_benchmark_UT <- mean(list_UA_20_benchmark_UT_coverge)
  sd_CR_UA_20_benchmark_UT <- sd(list_UA_20_benchmark_UT_coverge)
  list_UA_20_benchmark_SW <- sapply(list_UA_20_benchmark_SW, sum)
  mean_UA_20_benchmark_SW <- mean(list_UA_20_benchmark_SW)
  sd_UA_20_benchmark_SW <- sd(list_UA_20_benchmark_SW)
  list_UA_20_benchmark_SW_SE <- sapply(list_UA_20_benchmark_SW_SE, sum)
  mean_UA_20_benchmark_SW_SE <- mean(list_UA_20_benchmark_SW_SE)
  sd_UA_20_benchmark_SW_SE <- sd(list_UA_20_benchmark_SW_SE)
  CIlower_UA_20_benchmark_SW <- mean_UA_20_benchmark_SW - (2*mean_UA_20_benchmark_SW_SE)
  CIupper_UA_20_benchmark_SW <- mean_UA_20_benchmark_SW + (2*mean_UA_20_benchmark_SW_SE)
  UA_20_benchmark_SW_max <- max(list_UA_20_benchmark_SW) 
  UA_20_benchmark_SW_min <- min(list_UA_20_benchmark_SW)
  RB_UA_20_benchmark_SW <- bias(SW_true, list_UA_20_benchmark_SW)
  bias_RB_UA_20_benchmark_SW <- list_UA_20_benchmark_SW - SW_true
  sd_RB_UA_20_benchmark_SW <- sd(bias_RB_UA_20_benchmark_SW)
  PB_UA_20_benchmark_SW <- percent_bias(SW_true, list_UA_20_benchmark_SW) *100
  RMSE_UA_20_benchmark_SW <- rmse(SW_true, list_UA_20_benchmark_SW)
  AW_UA_20_benchmark_SW <- mean(sapply(list_UA_20_benchmark_SW_95width, sum))
  list_UA_20_benchmark_SW_coverge <- sapply(list_UA_20_benchmark_SW_coverge, sum)
  CR_UA_20_benchmark_SW <- mean(list_UA_20_benchmark_SW_coverge)
  sd_CR_UA_20_benchmark_SW <- sd(list_UA_20_benchmark_SW_coverge)
  list_UA_20_benchmark_OU <- sapply(list_UA_20_benchmark_OU, sum)
  mean_UA_20_benchmark_OU <- mean(list_UA_20_benchmark_OU)
  sd_UA_20_benchmark_OU <- sd(list_UA_20_benchmark_OU)
  list_UA_20_benchmark_OU_SE <- sapply(list_UA_20_benchmark_OU_SE, sum)
  mean_UA_20_benchmark_OU_SE <- mean(list_UA_20_benchmark_OU_SE)
  sd_UA_20_benchmark_OU_SE <- sd(list_UA_20_benchmark_OU_SE)
  CIlower_UA_20_benchmark_OU <- mean_UA_20_benchmark_OU - (2*mean_UA_20_benchmark_OU_SE)
  CIupper_UA_20_benchmark_OU <- mean_UA_20_benchmark_OU + (2*mean_UA_20_benchmark_OU_SE)
  UA_20_benchmark_OU_max <- max(list_UA_20_benchmark_OU) 
  UA_20_benchmark_OU_min <- min(list_UA_20_benchmark_OU)
  RB_UA_20_benchmark_OU <- bias(OU_true, list_UA_20_benchmark_OU)
  bias_RB_UA_20_benchmark_OU <- list_UA_20_benchmark_OU - OU_true
  sd_RB_UA_20_benchmark_OU <- sd(bias_RB_UA_20_benchmark_OU)
  PB_UA_20_benchmark_OU <- percent_bias(OU_true, list_UA_20_benchmark_OU) *100
  RMSE_UA_20_benchmark_OU <- rmse(OU_true, list_UA_20_benchmark_OU)
  AW_UA_20_benchmark_OU <- mean(sapply(list_UA_20_benchmark_OU_95width, sum))
  list_UA_20_benchmark_OU_coverge <- sapply(list_UA_20_benchmark_OU_coverge, sum)
  CR_UA_20_benchmark_OU <- mean(list_UA_20_benchmark_OU_coverge)
  sd_CR_UA_20_benchmark_OU <- sd(list_UA_20_benchmark_OU_coverge)
  
  list_UA_5_benchmark_RT <- sapply(list_UA_5_benchmark_RT, sum)
  mean_UA_5_benchmark_RT <- mean(list_UA_5_benchmark_RT)
  sd_UA_5_benchmark_RT <- sd(list_UA_5_benchmark_RT)
  list_UA_5_benchmark_RT_SE <- sapply(list_UA_5_benchmark_RT_SE, sum)
  mean_UA_5_benchmark_RT_SE <- mean(list_UA_5_benchmark_RT_SE)
  sd_UA_5_benchmark_RT_SE <- sd(list_UA_5_benchmark_RT_SE)
  CIlower_UA_5_benchmark_RT <- mean_UA_5_benchmark_RT - (2*mean_UA_5_benchmark_RT_SE)
  CIupper_UA_5_benchmark_RT <- mean_UA_5_benchmark_RT + (2*mean_UA_5_benchmark_RT_SE)
  UA_5_benchmark_RT_max <- max(list_UA_5_benchmark_RT) 
  UA_5_benchmark_RT_min <- min(list_UA_5_benchmark_RT)
  RB_UA_5_benchmark_RT <- bias(RT_true, list_UA_5_benchmark_RT)
  bias_RB_UA_5_benchmark_RT <- list_UA_5_benchmark_RT - RT_true
  sd_RB_UA_5_benchmark_RT <- sd(bias_RB_UA_5_benchmark_RT)
  PB_UA_5_benchmark_RT <- percent_bias(RT_true, list_UA_5_benchmark_RT) *100
  RMSE_UA_5_benchmark_RT <- rmse(RT_true, list_UA_5_benchmark_RT)
  AW_UA_5_benchmark_RT <- mean(sapply(list_UA_5_benchmark_RT_95width, sum))
  list_UA_5_benchmark_RT_coverge <- sapply(list_UA_5_benchmark_RT_coverge, sum)
  CR_UA_5_benchmark_RT <- mean(list_UA_5_benchmark_RT_coverge)
  sd_CR_UA_5_benchmark_RT <- sd(list_UA_5_benchmark_RT_coverge)
  list_UA_5_benchmark_UT <- sapply(list_UA_5_benchmark_UT, sum)
  mean_UA_5_benchmark_UT <- mean(list_UA_5_benchmark_UT)
  sd_UA_5_benchmark_UT <- sd(list_UA_5_benchmark_UT)
  list_UA_5_benchmark_UT_SE <- sapply(list_UA_5_benchmark_UT_SE, sum)
  mean_UA_5_benchmark_UT_SE <- mean(list_UA_5_benchmark_UT_SE)
  sd_UA_5_benchmark_UT_SE <- sd(list_UA_5_benchmark_UT_SE)
  CIlower_UA_5_benchmark_UT <- mean_UA_5_benchmark_UT - (2*mean_UA_5_benchmark_UT_SE)
  CIupper_UA_5_benchmark_UT <- mean_UA_5_benchmark_UT + (2*mean_UA_5_benchmark_UT_SE)
  UA_5_benchmark_UT_max <- max(list_UA_5_benchmark_UT) 
  UA_5_benchmark_UT_min <- min(list_UA_5_benchmark_UT)
  RB_UA_5_benchmark_UT <- bias(UT_true, list_UA_5_benchmark_UT)
  bias_RB_UA_5_benchmark_UT <- list_UA_5_benchmark_UT - UT_true
  sd_RB_UA_5_benchmark_UT <- sd(bias_RB_UA_5_benchmark_UT)
  PB_UA_5_benchmark_UT <- percent_bias(UT_true, list_UA_5_benchmark_UT) *100
  RMSE_UA_5_benchmark_UT <- rmse(UT_true, list_UA_5_benchmark_UT)
  AW_UA_5_benchmark_UT <- mean(sapply(list_UA_5_benchmark_UT_95width, sum))
  list_UA_5_benchmark_UT_coverge <- sapply(list_UA_5_benchmark_UT_coverge, sum)
  CR_UA_5_benchmark_UT <- mean(list_UA_5_benchmark_UT_coverge)
  sd_CR_UA_5_benchmark_UT <- sd(list_UA_5_benchmark_UT_coverge)
  list_UA_5_benchmark_SW <- sapply(list_UA_5_benchmark_SW, sum)
  mean_UA_5_benchmark_SW <- mean(list_UA_5_benchmark_SW)
  sd_UA_5_benchmark_SW <- sd(list_UA_5_benchmark_SW)
  list_UA_5_benchmark_SW_SE <- sapply(list_UA_5_benchmark_SW_SE, sum)
  mean_UA_5_benchmark_SW_SE <- mean(list_UA_5_benchmark_SW_SE)
  sd_UA_5_benchmark_SW_SE <- sd(list_UA_5_benchmark_SW_SE)
  CIlower_UA_5_benchmark_SW <- mean_UA_5_benchmark_SW - (2*mean_UA_5_benchmark_SW_SE)
  CIupper_UA_5_benchmark_SW <- mean_UA_5_benchmark_SW + (2*mean_UA_5_benchmark_SW_SE)
  UA_5_benchmark_SW_max <- max(list_UA_5_benchmark_SW) 
  UA_5_benchmark_SW_min <- min(list_UA_5_benchmark_SW)
  RB_UA_5_benchmark_SW <- bias(SW_true, list_UA_5_benchmark_SW)
  bias_RB_UA_5_benchmark_SW <- list_UA_5_benchmark_SW - SW_true
  sd_RB_UA_5_benchmark_SW <- sd(bias_RB_UA_5_benchmark_SW)
  PB_UA_5_benchmark_SW <- percent_bias(SW_true, list_UA_5_benchmark_SW) *100
  RMSE_UA_5_benchmark_SW <- rmse(SW_true, list_UA_5_benchmark_SW)
  AW_UA_5_benchmark_SW <- mean(sapply(list_UA_5_benchmark_SW_95width, sum))
  list_UA_5_benchmark_SW_coverge <- sapply(list_UA_5_benchmark_SW_coverge, sum)
  CR_UA_5_benchmark_SW <- mean(list_UA_5_benchmark_SW_coverge)
  sd_CR_UA_5_benchmark_SW <- sd(list_UA_5_benchmark_SW_coverge)
  list_UA_5_benchmark_OU <- sapply(list_UA_5_benchmark_OU, sum)
  mean_UA_5_benchmark_OU <- mean(list_UA_5_benchmark_OU)
  sd_UA_5_benchmark_OU <- sd(list_UA_5_benchmark_OU)
  list_UA_5_benchmark_OU_SE <- sapply(list_UA_5_benchmark_OU_SE, sum)
  mean_UA_5_benchmark_OU_SE <- mean(list_UA_5_benchmark_OU_SE)
  sd_UA_5_benchmark_OU_SE <- sd(list_UA_5_benchmark_OU_SE)
  CIlower_UA_5_benchmark_OU <- mean_UA_5_benchmark_OU - (2*mean_UA_5_benchmark_OU_SE)
  CIupper_UA_5_benchmark_OU <- mean_UA_5_benchmark_OU + (2*mean_UA_5_benchmark_OU_SE)
  UA_5_benchmark_OU_max <- max(list_UA_5_benchmark_OU) 
  UA_5_benchmark_OU_min <- min(list_UA_5_benchmark_OU)
  RB_UA_5_benchmark_OU <- bias(OU_true, list_UA_5_benchmark_OU)
  bias_RB_UA_5_benchmark_OU <- list_UA_5_benchmark_OU - OU_true
  sd_RB_UA_5_benchmark_OU <- sd(bias_RB_UA_5_benchmark_OU)
  PB_UA_5_benchmark_OU <- percent_bias(OU_true, list_UA_5_benchmark_OU) *100
  RMSE_UA_5_benchmark_OU <- rmse(OU_true, list_UA_5_benchmark_OU)
  AW_UA_5_benchmark_OU <- mean(sapply(list_UA_5_benchmark_OU_95width, sum))
  list_UA_5_benchmark_OU_coverge <- sapply(list_UA_5_benchmark_OU_coverge, sum)
  CR_UA_5_benchmark_OU <- mean(list_UA_5_benchmark_OU_coverge)
  sd_CR_UA_5_benchmark_OU <- sd(list_UA_5_benchmark_OU_coverge)
  
  list_MA_80_benchmark_RT <- sapply(list_MA_80_benchmark_RT, sum)
  mean_MA_80_benchmark_RT <- mean(list_MA_80_benchmark_RT)
  sd_MA_80_benchmark_RT <- sd(list_MA_80_benchmark_RT)
  list_MA_80_benchmark_RT_SE <- sapply(list_MA_80_benchmark_RT_SE, sum)
  mean_MA_80_benchmark_RT_SE <- mean(list_MA_80_benchmark_RT_SE)
  sd_MA_80_benchmark_RT_SE <- sd(list_MA_80_benchmark_RT_SE)
  CIlower_MA_80_benchmark_RT <- mean_MA_80_benchmark_RT - (2*mean_MA_80_benchmark_RT_SE)
  CIupper_MA_80_benchmark_RT <- mean_MA_80_benchmark_RT + (2*mean_MA_80_benchmark_RT_SE)
  MA_80_benchmark_RT_max <- max(list_MA_80_benchmark_RT) 
  MA_80_benchmark_RT_min <- min(list_MA_80_benchmark_RT)
  RB_MA_80_benchmark_RT <- bias(RT_true, list_MA_80_benchmark_RT)
  bias_RB_MA_80_benchmark_RT <- list_MA_80_benchmark_RT - RT_true
  sd_RB_MA_80_benchmark_RT <- sd(bias_RB_MA_80_benchmark_RT)
  PB_MA_80_benchmark_RT <- percent_bias(RT_true, list_MA_80_benchmark_RT) *100
  RMSE_MA_80_benchmark_RT <- rmse(RT_true, list_MA_80_benchmark_RT)
  AW_MA_80_benchmark_RT <- mean(sapply(list_MA_80_benchmark_RT_95width, sum))
  list_MA_80_benchmark_RT_coverge <- sapply(list_MA_80_benchmark_RT_coverge, sum)
  CR_MA_80_benchmark_RT <- mean(list_MA_80_benchmark_RT_coverge)
  sd_CR_MA_80_benchmark_RT <- sd(list_MA_80_benchmark_RT_coverge)
  list_MA_80_benchmark_UT <- sapply(list_MA_80_benchmark_UT, sum)
  mean_MA_80_benchmark_UT <- mean(list_MA_80_benchmark_UT)
  sd_MA_80_benchmark_UT <- sd(list_MA_80_benchmark_UT)
  list_MA_80_benchmark_UT_SE <- sapply(list_MA_80_benchmark_UT_SE, sum)
  mean_MA_80_benchmark_UT_SE <- mean(list_MA_80_benchmark_UT_SE)
  sd_MA_80_benchmark_UT_SE <- sd(list_MA_80_benchmark_UT_SE)
  CIlower_MA_80_benchmark_UT <- mean_MA_80_benchmark_UT - (2*mean_MA_80_benchmark_UT_SE)
  CIupper_MA_80_benchmark_UT <- mean_MA_80_benchmark_UT + (2*mean_MA_80_benchmark_UT_SE)
  MA_80_benchmark_UT_max <- max(list_MA_80_benchmark_UT) 
  MA_80_benchmark_UT_min <- min(list_MA_80_benchmark_UT)
  RB_MA_80_benchmark_UT <- bias(UT_true, list_MA_80_benchmark_UT)
  bias_RB_MA_80_benchmark_UT <- list_MA_80_benchmark_UT - UT_true
  sd_RB_MA_80_benchmark_UT <- sd(bias_RB_MA_80_benchmark_UT)
  PB_MA_80_benchmark_UT <- percent_bias(UT_true, list_MA_80_benchmark_UT) *100
  RMSE_MA_80_benchmark_UT <- rmse(UT_true, list_MA_80_benchmark_UT)
  AW_MA_80_benchmark_UT <- mean(sapply(list_MA_80_benchmark_UT_95width, sum))
  list_MA_80_benchmark_UT_coverge <- sapply(list_MA_80_benchmark_UT_coverge, sum)
  CR_MA_80_benchmark_UT <- mean(list_MA_80_benchmark_UT_coverge)
  sd_CR_MA_80_benchmark_UT <- sd(list_MA_80_benchmark_UT_coverge)
  list_MA_80_benchmark_SW <- sapply(list_MA_80_benchmark_SW, sum)
  mean_MA_80_benchmark_SW <- mean(list_MA_80_benchmark_SW)
  sd_MA_80_benchmark_SW <- sd(list_MA_80_benchmark_SW)
  list_MA_80_benchmark_SW_SE <- sapply(list_MA_80_benchmark_SW_SE, sum)
  mean_MA_80_benchmark_SW_SE <- mean(list_MA_80_benchmark_SW_SE)
  sd_MA_80_benchmark_SW_SE <- sd(list_MA_80_benchmark_SW_SE)
  CIlower_MA_80_benchmark_SW <- mean_MA_80_benchmark_SW - (2*mean_MA_80_benchmark_SW_SE)
  CIupper_MA_80_benchmark_SW <- mean_MA_80_benchmark_SW + (2*mean_MA_80_benchmark_SW_SE)
  MA_80_benchmark_SW_max <- max(list_MA_80_benchmark_SW) 
  MA_80_benchmark_SW_min <- min(list_MA_80_benchmark_SW)
  RB_MA_80_benchmark_SW <- bias(SW_true, list_MA_80_benchmark_SW)
  bias_RB_MA_80_benchmark_SW <- list_MA_80_benchmark_SW - SW_true
  sd_RB_MA_80_benchmark_SW <- sd(bias_RB_MA_80_benchmark_SW)
  PB_MA_80_benchmark_SW <- percent_bias(SW_true, list_MA_80_benchmark_SW) *100
  RMSE_MA_80_benchmark_SW <- rmse(SW_true, list_MA_80_benchmark_SW)
  AW_MA_80_benchmark_SW <- mean(sapply(list_MA_80_benchmark_SW_95width, sum))
  list_MA_80_benchmark_SW_coverge <- sapply(list_MA_80_benchmark_SW_coverge, sum)
  CR_MA_80_benchmark_SW <- mean(list_MA_80_benchmark_SW_coverge)
  sd_CR_MA_80_benchmark_SW <- sd(list_MA_80_benchmark_SW_coverge)
  list_MA_80_benchmark_OU <- sapply(list_MA_80_benchmark_OU, sum)
  mean_MA_80_benchmark_OU <- mean(list_MA_80_benchmark_OU)
  sd_MA_80_benchmark_OU <- sd(list_MA_80_benchmark_OU)
  list_MA_80_benchmark_OU_SE <- sapply(list_MA_80_benchmark_OU_SE, sum)
  mean_MA_80_benchmark_OU_SE <- mean(list_MA_80_benchmark_OU_SE)
  sd_MA_80_benchmark_OU_SE <- sd(list_MA_80_benchmark_OU_SE)
  CIlower_MA_80_benchmark_OU <- mean_MA_80_benchmark_OU - (2*mean_MA_80_benchmark_OU_SE)
  CIupper_MA_80_benchmark_OU <- mean_MA_80_benchmark_OU + (2*mean_MA_80_benchmark_OU_SE)
  MA_80_benchmark_OU_max <- max(list_MA_80_benchmark_OU) 
  MA_80_benchmark_OU_min <- min(list_MA_80_benchmark_OU)
  RB_MA_80_benchmark_OU <- bias(OU_true, list_MA_80_benchmark_OU)
  bias_RB_MA_80_benchmark_OU <- list_MA_80_benchmark_OU - OU_true
  sd_RB_MA_80_benchmark_OU <- sd(bias_RB_MA_80_benchmark_OU)
  PB_MA_80_benchmark_OU <- percent_bias(OU_true, list_MA_80_benchmark_OU) *100
  RMSE_MA_80_benchmark_OU <- rmse(OU_true, list_MA_80_benchmark_OU)
  AW_MA_80_benchmark_OU <- mean(sapply(list_MA_80_benchmark_OU_95width, sum))
  list_MA_80_benchmark_OU_coverge <- sapply(list_MA_80_benchmark_OU_coverge, sum)
  CR_MA_80_benchmark_OU <- mean(list_MA_80_benchmark_OU_coverge)
  sd_CR_MA_80_benchmark_OU <- sd(list_MA_80_benchmark_OU_coverge)
  
  list_MA_50_benchmark_RT <- sapply(list_MA_50_benchmark_RT, sum)
  mean_MA_50_benchmark_RT <- mean(list_MA_50_benchmark_RT)
  sd_MA_50_benchmark_RT <- sd(list_MA_50_benchmark_RT)
  list_MA_50_benchmark_RT_SE <- sapply(list_MA_50_benchmark_RT_SE, sum)
  mean_MA_50_benchmark_RT_SE <- mean(list_MA_50_benchmark_RT_SE)
  sd_MA_50_benchmark_RT_SE <- sd(list_MA_50_benchmark_RT_SE)
  CIlower_MA_50_benchmark_RT <- mean_MA_50_benchmark_RT - (2*mean_MA_50_benchmark_RT_SE)
  CIupper_MA_50_benchmark_RT <- mean_MA_50_benchmark_RT + (2*mean_MA_50_benchmark_RT_SE)
  MA_50_benchmark_RT_max <- max(list_MA_50_benchmark_RT) 
  MA_50_benchmark_RT_min <- min(list_MA_50_benchmark_RT)
  RB_MA_50_benchmark_RT <- bias(RT_true, list_MA_50_benchmark_RT)
  bias_RB_MA_50_benchmark_RT <- list_MA_50_benchmark_RT - RT_true
  sd_RB_MA_50_benchmark_RT <- sd(bias_RB_MA_50_benchmark_RT)
  PB_MA_50_benchmark_RT <- percent_bias(RT_true, list_MA_50_benchmark_RT) *100
  RMSE_MA_50_benchmark_RT <- rmse(RT_true, list_MA_50_benchmark_RT)
  AW_MA_50_benchmark_RT <- mean(sapply(list_MA_50_benchmark_RT_95width, sum))
  list_MA_50_benchmark_RT_coverge <- sapply(list_MA_50_benchmark_RT_coverge, sum)
  CR_MA_50_benchmark_RT <- mean(list_MA_50_benchmark_RT_coverge)
  sd_CR_MA_50_benchmark_RT <- sd(list_MA_50_benchmark_RT_coverge)
  list_MA_50_benchmark_UT <- sapply(list_MA_50_benchmark_UT, sum)
  mean_MA_50_benchmark_UT <- mean(list_MA_50_benchmark_UT)
  sd_MA_50_benchmark_UT <- sd(list_MA_50_benchmark_UT)
  list_MA_50_benchmark_UT_SE <- sapply(list_MA_50_benchmark_UT_SE, sum)
  mean_MA_50_benchmark_UT_SE <- mean(list_MA_50_benchmark_UT_SE)
  sd_MA_50_benchmark_UT_SE <- sd(list_MA_50_benchmark_UT_SE)
  CIlower_MA_50_benchmark_UT <- mean_MA_50_benchmark_UT - (2*mean_MA_50_benchmark_UT_SE)
  CIupper_MA_50_benchmark_UT <- mean_MA_50_benchmark_UT + (2*mean_MA_50_benchmark_UT_SE)
  MA_50_benchmark_UT_max <- max(list_MA_50_benchmark_UT) 
  MA_50_benchmark_UT_min <- min(list_MA_50_benchmark_UT)
  RB_MA_50_benchmark_UT <- bias(UT_true, list_MA_50_benchmark_UT)
  bias_RB_MA_50_benchmark_UT <- list_MA_50_benchmark_UT - UT_true
  sd_RB_MA_50_benchmark_UT <- sd(bias_RB_MA_50_benchmark_UT)
  PB_MA_50_benchmark_UT <- percent_bias(UT_true, list_MA_50_benchmark_UT) *100
  RMSE_MA_50_benchmark_UT <- rmse(UT_true, list_MA_50_benchmark_UT)
  AW_MA_50_benchmark_UT <- mean(sapply(list_MA_50_benchmark_UT_95width, sum))
  list_MA_50_benchmark_UT_coverge <- sapply(list_MA_50_benchmark_UT_coverge, sum)
  CR_MA_50_benchmark_UT <- mean(list_MA_50_benchmark_UT_coverge)
  sd_CR_MA_50_benchmark_UT <- sd(list_MA_50_benchmark_UT_coverge)
  list_MA_50_benchmark_SW <- sapply(list_MA_50_benchmark_SW, sum)
  mean_MA_50_benchmark_SW <- mean(list_MA_50_benchmark_SW)
  sd_MA_50_benchmark_SW <- sd(list_MA_50_benchmark_SW)
  list_MA_50_benchmark_SW_SE <- sapply(list_MA_50_benchmark_SW_SE, sum)
  mean_MA_50_benchmark_SW_SE <- mean(list_MA_50_benchmark_SW_SE)
  sd_MA_50_benchmark_SW_SE <- sd(list_MA_50_benchmark_SW_SE)
  CIlower_MA_50_benchmark_SW <- mean_MA_50_benchmark_SW - (2*mean_MA_50_benchmark_SW_SE)
  CIupper_MA_50_benchmark_SW <- mean_MA_50_benchmark_SW + (2*mean_MA_50_benchmark_SW_SE)
  MA_50_benchmark_SW_max <- max(list_MA_50_benchmark_SW) 
  MA_50_benchmark_SW_min <- min(list_MA_50_benchmark_SW)
  RB_MA_50_benchmark_SW <- bias(SW_true, list_MA_50_benchmark_SW)
  bias_RB_MA_50_benchmark_SW <- list_MA_50_benchmark_SW - SW_true
  sd_RB_MA_50_benchmark_SW <- sd(bias_RB_MA_50_benchmark_SW)
  PB_MA_50_benchmark_SW <- percent_bias(SW_true, list_MA_50_benchmark_SW) *100
  RMSE_MA_50_benchmark_SW <- rmse(SW_true, list_MA_50_benchmark_SW)
  AW_MA_50_benchmark_SW <- mean(sapply(list_MA_50_benchmark_SW_95width, sum))
  list_MA_50_benchmark_SW_coverge <- sapply(list_MA_50_benchmark_SW_coverge, sum)
  CR_MA_50_benchmark_SW <- mean(list_MA_50_benchmark_SW_coverge)
  sd_CR_MA_50_benchmark_SW <- sd(list_MA_50_benchmark_SW_coverge)
  list_MA_50_benchmark_OU <- sapply(list_MA_50_benchmark_OU, sum)
  mean_MA_50_benchmark_OU <- mean(list_MA_50_benchmark_OU)
  sd_MA_50_benchmark_OU <- sd(list_MA_50_benchmark_OU)
  list_MA_50_benchmark_OU_SE <- sapply(list_MA_50_benchmark_OU_SE, sum)
  mean_MA_50_benchmark_OU_SE <- mean(list_MA_50_benchmark_OU_SE)
  sd_MA_50_benchmark_OU_SE <- sd(list_MA_50_benchmark_OU_SE)
  CIlower_MA_50_benchmark_OU <- mean_MA_50_benchmark_OU - (2*mean_MA_50_benchmark_OU_SE)
  CIupper_MA_50_benchmark_OU <- mean_MA_50_benchmark_OU + (2*mean_MA_50_benchmark_OU_SE)
  MA_50_benchmark_OU_max <- max(list_MA_50_benchmark_OU) 
  MA_50_benchmark_OU_min <- min(list_MA_50_benchmark_OU)
  RB_MA_50_benchmark_OU <- bias(OU_true, list_MA_50_benchmark_OU)
  bias_RB_MA_50_benchmark_OU <- list_MA_50_benchmark_OU - OU_true
  sd_RB_MA_50_benchmark_OU <- sd(bias_RB_MA_50_benchmark_OU)
  PB_MA_50_benchmark_OU <- percent_bias(OU_true, list_MA_50_benchmark_OU) *100
  RMSE_MA_50_benchmark_OU <- rmse(OU_true, list_MA_50_benchmark_OU)
  AW_MA_50_benchmark_OU <- mean(sapply(list_MA_50_benchmark_OU_95width, sum))
  list_MA_50_benchmark_OU_coverge <- sapply(list_MA_50_benchmark_OU_coverge, sum)
  CR_MA_50_benchmark_OU <- mean(list_MA_50_benchmark_OU_coverge)
  sd_CR_MA_50_benchmark_OU <- sd(list_MA_50_benchmark_OU_coverge)
  
  list_MA_20_benchmark_RT <- sapply(list_MA_20_benchmark_RT, sum)
  mean_MA_20_benchmark_RT <- mean(list_MA_20_benchmark_RT)
  sd_MA_20_benchmark_RT <- sd(list_MA_20_benchmark_RT)
  list_MA_20_benchmark_RT_SE <- sapply(list_MA_20_benchmark_RT_SE, sum)
  mean_MA_20_benchmark_RT_SE <- mean(list_MA_20_benchmark_RT_SE)
  sd_MA_20_benchmark_RT_SE <- sd(list_MA_20_benchmark_RT_SE)
  CIlower_MA_20_benchmark_RT <- mean_MA_20_benchmark_RT - (2*mean_MA_20_benchmark_RT_SE)
  CIupper_MA_20_benchmark_RT <- mean_MA_20_benchmark_RT + (2*mean_MA_20_benchmark_RT_SE)
  MA_20_benchmark_RT_max <- max(list_MA_20_benchmark_RT) 
  MA_20_benchmark_RT_min <- min(list_MA_20_benchmark_RT)
  RB_MA_20_benchmark_RT <- bias(RT_true, list_MA_20_benchmark_RT)
  bias_RB_MA_20_benchmark_RT <- list_MA_20_benchmark_RT - RT_true
  sd_RB_MA_20_benchmark_RT <- sd(bias_RB_MA_20_benchmark_RT)
  PB_MA_20_benchmark_RT <- percent_bias(RT_true, list_MA_20_benchmark_RT) *100
  RMSE_MA_20_benchmark_RT <- rmse(RT_true, list_MA_20_benchmark_RT)
  AW_MA_20_benchmark_RT <- mean(sapply(list_MA_20_benchmark_RT_95width, sum))
  list_MA_20_benchmark_RT_coverge <- sapply(list_MA_20_benchmark_RT_coverge, sum)
  CR_MA_20_benchmark_RT <- mean(list_MA_20_benchmark_RT_coverge)
  sd_CR_MA_20_benchmark_RT <- sd(list_MA_20_benchmark_RT_coverge)
  list_MA_20_benchmark_UT <- sapply(list_MA_20_benchmark_UT, sum)
  mean_MA_20_benchmark_UT <- mean(list_MA_20_benchmark_UT)
  sd_MA_20_benchmark_UT <- sd(list_MA_20_benchmark_UT)
  list_MA_20_benchmark_UT_SE <- sapply(list_MA_20_benchmark_UT_SE, sum)
  mean_MA_20_benchmark_UT_SE <- mean(list_MA_20_benchmark_UT_SE)
  sd_MA_20_benchmark_UT_SE <- sd(list_MA_20_benchmark_UT_SE)
  CIlower_MA_20_benchmark_UT <- mean_MA_20_benchmark_UT - (2*mean_MA_20_benchmark_UT_SE)
  CIupper_MA_20_benchmark_UT <- mean_MA_20_benchmark_UT + (2*mean_MA_20_benchmark_UT_SE)
  MA_20_benchmark_UT_max <- max(list_MA_20_benchmark_UT) 
  MA_20_benchmark_UT_min <- min(list_MA_20_benchmark_UT)
  RB_MA_20_benchmark_UT <- bias(UT_true, list_MA_20_benchmark_UT)
  bias_RB_MA_20_benchmark_UT <- list_MA_20_benchmark_UT - UT_true
  sd_RB_MA_20_benchmark_UT <- sd(bias_RB_MA_20_benchmark_UT)
  PB_MA_20_benchmark_UT <- percent_bias(UT_true, list_MA_20_benchmark_UT) *100
  RMSE_MA_20_benchmark_UT <- rmse(UT_true, list_MA_20_benchmark_UT)
  AW_MA_20_benchmark_UT <- mean(sapply(list_MA_20_benchmark_UT_95width, sum))
  list_MA_20_benchmark_UT_coverge <- sapply(list_MA_20_benchmark_UT_coverge, sum)
  CR_MA_20_benchmark_UT <- mean(list_MA_20_benchmark_UT_coverge)
  sd_CR_MA_20_benchmark_UT <- sd(list_MA_20_benchmark_UT_coverge)
  list_MA_20_benchmark_SW <- sapply(list_MA_20_benchmark_SW, sum)
  mean_MA_20_benchmark_SW <- mean(list_MA_20_benchmark_SW)
  sd_MA_20_benchmark_SW <- sd(list_MA_20_benchmark_SW)
  list_MA_20_benchmark_SW_SE <- sapply(list_MA_20_benchmark_SW_SE, sum)
  mean_MA_20_benchmark_SW_SE <- mean(list_MA_20_benchmark_SW_SE)
  sd_MA_20_benchmark_SW_SE <- sd(list_MA_20_benchmark_SW_SE)
  CIlower_MA_20_benchmark_SW <- mean_MA_20_benchmark_SW - (2*mean_MA_20_benchmark_SW_SE)
  CIupper_MA_20_benchmark_SW <- mean_MA_20_benchmark_SW + (2*mean_MA_20_benchmark_SW_SE)
  MA_20_benchmark_SW_max <- max(list_MA_20_benchmark_SW) 
  MA_20_benchmark_SW_min <- min(list_MA_20_benchmark_SW)
  RB_MA_20_benchmark_SW <- bias(SW_true, list_MA_20_benchmark_SW)
  bias_RB_MA_20_benchmark_SW <- list_MA_20_benchmark_SW - SW_true
  sd_RB_MA_20_benchmark_SW <- sd(bias_RB_MA_20_benchmark_SW)
  PB_MA_20_benchmark_SW <- percent_bias(SW_true, list_MA_20_benchmark_SW) *100
  RMSE_MA_20_benchmark_SW <- rmse(SW_true, list_MA_20_benchmark_SW)
  AW_MA_20_benchmark_SW <- mean(sapply(list_MA_20_benchmark_SW_95width, sum))
  list_MA_20_benchmark_SW_coverge <- sapply(list_MA_20_benchmark_SW_coverge, sum)
  CR_MA_20_benchmark_SW <- mean(list_MA_20_benchmark_SW_coverge)
  sd_CR_MA_20_benchmark_SW <- sd(list_MA_20_benchmark_SW_coverge)
  list_MA_20_benchmark_OU <- sapply(list_MA_20_benchmark_OU, sum)
  mean_MA_20_benchmark_OU <- mean(list_MA_20_benchmark_OU)
  sd_MA_20_benchmark_OU <- sd(list_MA_20_benchmark_OU)
  list_MA_20_benchmark_OU_SE <- sapply(list_MA_20_benchmark_OU_SE, sum)
  mean_MA_20_benchmark_OU_SE <- mean(list_MA_20_benchmark_OU_SE)
  sd_MA_20_benchmark_OU_SE <- sd(list_MA_20_benchmark_OU_SE)
  CIlower_MA_20_benchmark_OU <- mean_MA_20_benchmark_OU - (2*mean_MA_20_benchmark_OU_SE)
  CIupper_MA_20_benchmark_OU <- mean_MA_20_benchmark_OU + (2*mean_MA_20_benchmark_OU_SE)
  MA_20_benchmark_OU_max <- max(list_MA_20_benchmark_OU) 
  MA_20_benchmark_OU_min <- min(list_MA_20_benchmark_OU)
  RB_MA_20_benchmark_OU <- bias(OU_true, list_MA_20_benchmark_OU)
  bias_RB_MA_20_benchmark_OU <- list_MA_20_benchmark_OU - OU_true
  sd_RB_MA_20_benchmark_OU <- sd(bias_RB_MA_20_benchmark_OU)
  PB_MA_20_benchmark_OU <- percent_bias(OU_true, list_MA_20_benchmark_OU) *100
  RMSE_MA_20_benchmark_OU <- rmse(OU_true, list_MA_20_benchmark_OU)
  AW_MA_20_benchmark_OU <- mean(sapply(list_MA_20_benchmark_OU_95width, sum))
  list_MA_20_benchmark_OU_coverge <- sapply(list_MA_20_benchmark_OU_coverge, sum)
  CR_MA_20_benchmark_OU <- mean(list_MA_20_benchmark_OU_coverge)
  sd_CR_MA_20_benchmark_OU <- sd(list_MA_20_benchmark_OU_coverge)
  
  list_MA_5_benchmark_RT <- sapply(list_MA_5_benchmark_RT, sum)
  mean_MA_5_benchmark_RT <- mean(list_MA_5_benchmark_RT)
  sd_MA_5_benchmark_RT <- sd(list_MA_5_benchmark_RT)
  list_MA_5_benchmark_RT_SE <- sapply(list_MA_5_benchmark_RT_SE, sum)
  mean_MA_5_benchmark_RT_SE <- mean(list_MA_5_benchmark_RT_SE)
  sd_MA_5_benchmark_RT_SE <- sd(list_MA_5_benchmark_RT_SE)
  CIlower_MA_5_benchmark_RT <- mean_MA_5_benchmark_RT - (2*mean_MA_5_benchmark_RT_SE)
  CIupper_MA_5_benchmark_RT <- mean_MA_5_benchmark_RT + (2*mean_MA_5_benchmark_RT_SE)
  MA_5_benchmark_RT_max <- max(list_MA_5_benchmark_RT) 
  MA_5_benchmark_RT_min <- min(list_MA_5_benchmark_RT)
  RB_MA_5_benchmark_RT <- bias(RT_true, list_MA_5_benchmark_RT)
  bias_RB_MA_5_benchmark_RT <- list_MA_5_benchmark_RT - RT_true
  sd_RB_MA_5_benchmark_RT <- sd(bias_RB_MA_5_benchmark_RT)
  PB_MA_5_benchmark_RT <- percent_bias(RT_true, list_MA_5_benchmark_RT) *100
  RMSE_MA_5_benchmark_RT <- rmse(RT_true, list_MA_5_benchmark_RT)
  AW_MA_5_benchmark_RT <- mean(sapply(list_MA_5_benchmark_RT_95width, sum))
  list_MA_5_benchmark_RT_coverge <- sapply(list_MA_5_benchmark_RT_coverge, sum)
  CR_MA_5_benchmark_RT <- mean(list_MA_5_benchmark_RT_coverge)
  sd_CR_MA_5_benchmark_RT <- sd(list_MA_5_benchmark_RT_coverge)
  list_MA_5_benchmark_UT <- sapply(list_MA_5_benchmark_UT, sum)
  mean_MA_5_benchmark_UT <- mean(list_MA_5_benchmark_UT)
  sd_MA_5_benchmark_UT <- sd(list_MA_5_benchmark_UT)
  list_MA_5_benchmark_UT_SE <- sapply(list_MA_5_benchmark_UT_SE, sum)
  mean_MA_5_benchmark_UT_SE <- mean(list_MA_5_benchmark_UT_SE)
  sd_MA_5_benchmark_UT_SE <- sd(list_MA_5_benchmark_UT_SE)
  CIlower_MA_5_benchmark_UT <- mean_MA_5_benchmark_UT - (2*mean_MA_5_benchmark_UT_SE)
  CIupper_MA_5_benchmark_UT <- mean_MA_5_benchmark_UT + (2*mean_MA_5_benchmark_UT_SE)
  MA_5_benchmark_UT_max <- max(list_MA_5_benchmark_UT) 
  MA_5_benchmark_UT_min <- min(list_MA_5_benchmark_UT)
  RB_MA_5_benchmark_UT <- bias(UT_true, list_MA_5_benchmark_UT)
  bias_RB_MA_5_benchmark_UT <- list_MA_5_benchmark_UT - UT_true
  sd_RB_MA_5_benchmark_UT <- sd(bias_RB_MA_5_benchmark_UT)
  PB_MA_5_benchmark_UT <- percent_bias(UT_true, list_MA_5_benchmark_UT) *100
  RMSE_MA_5_benchmark_UT <- rmse(UT_true, list_MA_5_benchmark_UT)
  AW_MA_5_benchmark_UT <- mean(sapply(list_MA_5_benchmark_UT_95width, sum))
  list_MA_5_benchmark_UT_coverge <- sapply(list_MA_5_benchmark_UT_coverge, sum)
  CR_MA_5_benchmark_UT <- mean(list_MA_5_benchmark_UT_coverge)
  sd_CR_MA_5_benchmark_UT <- sd(list_MA_5_benchmark_UT_coverge)
  list_MA_5_benchmark_SW <- sapply(list_MA_5_benchmark_SW, sum)
  mean_MA_5_benchmark_SW <- mean(list_MA_5_benchmark_SW)
  sd_MA_5_benchmark_SW <- sd(list_MA_5_benchmark_SW)
  list_MA_5_benchmark_SW_SE <- sapply(list_MA_5_benchmark_SW_SE, sum)
  mean_MA_5_benchmark_SW_SE <- mean(list_MA_5_benchmark_SW_SE)
  sd_MA_5_benchmark_SW_SE <- sd(list_MA_5_benchmark_SW_SE)
  CIlower_MA_5_benchmark_SW <- mean_MA_5_benchmark_SW - (2*mean_MA_5_benchmark_SW_SE)
  CIupper_MA_5_benchmark_SW <- mean_MA_5_benchmark_SW + (2*mean_MA_5_benchmark_SW_SE)
  MA_5_benchmark_SW_max <- max(list_MA_5_benchmark_SW) 
  MA_5_benchmark_SW_min <- min(list_MA_5_benchmark_SW)
  RB_MA_5_benchmark_SW <- bias(SW_true, list_MA_5_benchmark_SW)
  bias_RB_MA_5_benchmark_SW <- list_MA_5_benchmark_SW - SW_true
  sd_RB_MA_5_benchmark_SW <- sd(bias_RB_MA_5_benchmark_SW)
  PB_MA_5_benchmark_SW <- percent_bias(SW_true, list_MA_5_benchmark_SW) *100
  RMSE_MA_5_benchmark_SW <- rmse(SW_true, list_MA_5_benchmark_SW)
  AW_MA_5_benchmark_SW <- mean(sapply(list_MA_5_benchmark_SW_95width, sum))
  list_MA_5_benchmark_SW_coverge <- sapply(list_MA_5_benchmark_SW_coverge, sum)
  CR_MA_5_benchmark_SW <- mean(list_MA_5_benchmark_SW_coverge)
  sd_CR_MA_5_benchmark_SW <- sd(list_MA_5_benchmark_SW_coverge)
  list_MA_5_benchmark_OU <- sapply(list_MA_5_benchmark_OU, sum)
  mean_MA_5_benchmark_OU <- mean(list_MA_5_benchmark_OU)
  sd_MA_5_benchmark_OU <- sd(list_MA_5_benchmark_OU)
  list_MA_5_benchmark_OU_SE <- sapply(list_MA_5_benchmark_OU_SE, sum)
  mean_MA_5_benchmark_OU_SE <- mean(list_MA_5_benchmark_OU_SE)
  sd_MA_5_benchmark_OU_SE <- sd(list_MA_5_benchmark_OU_SE)
  CIlower_MA_5_benchmark_OU <- mean_MA_5_benchmark_OU - (2*mean_MA_5_benchmark_OU_SE)
  CIupper_MA_5_benchmark_OU <- mean_MA_5_benchmark_OU + (2*mean_MA_5_benchmark_OU_SE)
  MA_5_benchmark_OU_max <- max(list_MA_5_benchmark_OU) 
  MA_5_benchmark_OU_min <- min(list_MA_5_benchmark_OU)
  RB_MA_5_benchmark_OU <- bias(OU_true, list_MA_5_benchmark_OU)
  bias_RB_MA_5_benchmark_OU <- list_MA_5_benchmark_OU - OU_true
  sd_RB_MA_5_benchmark_OU <- sd(bias_RB_MA_5_benchmark_OU)
  PB_MA_5_benchmark_OU <- percent_bias(OU_true, list_MA_5_benchmark_OU) *100
  RMSE_MA_5_benchmark_OU <- rmse(OU_true, list_MA_5_benchmark_OU)
  AW_MA_5_benchmark_OU <- mean(sapply(list_MA_5_benchmark_OU_95width, sum))
  list_MA_5_benchmark_OU_coverge <- sapply(list_MA_5_benchmark_OU_coverge, sum)
  CR_MA_5_benchmark_OU <- mean(list_MA_5_benchmark_OU_coverge)
  sd_CR_MA_5_benchmark_OU <- sd(list_MA_5_benchmark_OU_coverge)
}

#mice Performance of SI
{
  #Performance of UASI80
  {
    list_mice_UASI80_RT_pred <- sapply(list_mice_UASI80_RT_pred, sum)
    mean_mice_UASI80_RT_pred <- mean(list_mice_UASI80_RT_pred)
    sd_mice_UASI80_RT_pred <- sd(list_mice_UASI80_RT_pred)
    list_mice_UASI80_RT_SE <- sapply(list_mice_UASI80_RT_SE, sum)
    mean_mice_UASI80_RT_SE <- mean(list_mice_UASI80_RT_SE)
    sd_mice_UASI80_RT_SE <- sd(list_mice_UASI80_RT_SE)
    CIlower_mice_UASI80_RT_pred <- mean_mice_UASI80_RT_pred - (2*mean_mice_UASI80_RT_SE)
    CIupper_mice_UASI80_RT_pred <- mean_mice_UASI80_RT_pred + (2*mean_mice_UASI80_RT_SE)
    mice_UASI80_RT_pred_max <- max(list_mice_UASI80_RT_pred) 
    mice_UASI80_RT_pred_min <- min(list_mice_UASI80_RT_pred)
    RB_mice_UASI80_RT_pred <- bias(RT_true, list_mice_UASI80_RT_pred)
    bias_RB_mice_UASI80_RT_pred <- list_mice_UASI80_RT_pred - RT_true
    sd_RB_mice_UASI80_RT_pred <- sd(bias_RB_mice_UASI80_RT_pred)    
    PB_mice_UASI80_RT_pred <- percent_bias(RT_true, list_mice_UASI80_RT_pred) *100
    RMSE_mice_UASI80_RT_pred <- rmse(RT_true, list_mice_UASI80_RT_pred)
    AW_mice_UASI80_RT_pred <- mean(sapply(list_mice_UASI80_RT_95width, sum))
    list_mice_UASI80_RT_coverge <- sapply(list_mice_UASI80_RT_coverge, sum)
    CR_mice_UASI80_RT_pred <- mean(list_mice_UASI80_RT_coverge)
    sd_CR_mice_UASI80_RT_pred <- sd(list_mice_UASI80_RT_coverge)
    
    list_mice_UASI80_UT_pred <- sapply(list_mice_UASI80_UT_pred, sum)
    mean_mice_UASI80_UT_pred <- mean(list_mice_UASI80_UT_pred)
    sd_mice_UASI80_UT_pred <- sd(list_mice_UASI80_UT_pred)
    list_mice_UASI80_UT_SE <- sapply(list_mice_UASI80_UT_SE, sum)
    mean_mice_UASI80_UT_SE <- mean(list_mice_UASI80_UT_SE)
    sd_mice_UASI80_UT_SE <- sd(list_mice_UASI80_UT_SE)
    CIlower_mice_UASI80_UT_pred <- mean_mice_UASI80_UT_pred - (2*mean_mice_UASI80_UT_SE)
    CIupper_mice_UASI80_UT_pred <- mean_mice_UASI80_UT_pred + (2*mean_mice_UASI80_UT_SE)
    mice_UASI80_UT_pred_max <- max(list_mice_UASI80_UT_pred) 
    mice_UASI80_UT_pred_min <- min(list_mice_UASI80_UT_pred)
    RB_mice_UASI80_UT_pred <- bias(UT_true, list_mice_UASI80_UT_pred)
    bias_RB_mice_UASI80_UT_pred <- list_mice_UASI80_UT_pred - UT_true
    sd_RB_mice_UASI80_UT_pred <- sd(bias_RB_mice_UASI80_UT_pred)    
    PB_mice_UASI80_UT_pred <- percent_bias(UT_true, list_mice_UASI80_UT_pred) *100
    RMSE_mice_UASI80_UT_pred <- rmse(UT_true, list_mice_UASI80_UT_pred)
    AW_mice_UASI80_UT_pred <- mean(sapply(list_mice_UASI80_UT_95width, sum))
    list_mice_UASI80_UT_coverge <- sapply(list_mice_UASI80_UT_coverge, sum)
    CR_mice_UASI80_UT_pred <- mean(list_mice_UASI80_UT_coverge)
    sd_CR_mice_UASI80_UT_pred <- sd(list_mice_UASI80_UT_coverge)
    
    list_mice_UASI80_SW_pred <- sapply(list_mice_UASI80_SW_pred, sum)
    mean_mice_UASI80_SW_pred <- mean(list_mice_UASI80_SW_pred)
    sd_mice_UASI80_SW_pred <- sd(list_mice_UASI80_SW_pred)
    list_mice_UASI80_SW_SE <- sapply(list_mice_UASI80_SW_SE, sum)
    mean_mice_UASI80_SW_SE <- mean(list_mice_UASI80_SW_SE)
    sd_mice_UASI80_SW_SE <- sd(list_mice_UASI80_SW_SE)
    CIlower_mice_UASI80_SW_pred <- mean_mice_UASI80_SW_pred - (2*mean_mice_UASI80_SW_SE)
    CIupper_mice_UASI80_SW_pred <- mean_mice_UASI80_SW_pred + (2*mean_mice_UASI80_SW_SE)
    mice_UASI80_SW_pred_max <- max(list_mice_UASI80_SW_pred) 
    mice_UASI80_SW_pred_min <- min(list_mice_UASI80_SW_pred)
    RB_mice_UASI80_SW_pred <- bias(SW_true, list_mice_UASI80_SW_pred)
    bias_RB_mice_UASI80_SW_pred <- list_mice_UASI80_SW_pred - SW_true
    sd_RB_mice_UASI80_SW_pred <- sd(bias_RB_mice_UASI80_SW_pred)    
    PB_mice_UASI80_SW_pred <- percent_bias(SW_true, list_mice_UASI80_SW_pred) *100
    RMSE_mice_UASI80_SW_pred <- rmse(SW_true, list_mice_UASI80_SW_pred)
    AW_mice_UASI80_SW_pred <- mean(sapply(list_mice_UASI80_SW_95width, sum))
    list_mice_UASI80_SW_coverge <- sapply(list_mice_UASI80_SW_coverge, sum)
    CR_mice_UASI80_SW_pred <- mean(list_mice_UASI80_SW_coverge)
    sd_CR_mice_UASI80_SW_pred <- sd(list_mice_UASI80_SW_coverge)
    
    list_mice_UASI80_OU_pred <- sapply(list_mice_UASI80_OU_pred, sum)
    mean_mice_UASI80_OU_pred <- mean(list_mice_UASI80_OU_pred)
    sd_mice_UASI80_OU_pred <- sd(list_mice_UASI80_OU_pred)
    list_mice_UASI80_OU_SE <- sapply(list_mice_UASI80_OU_SE, sum)
    mean_mice_UASI80_OU_SE <- mean(list_mice_UASI80_OU_SE)
    sd_mice_UASI80_OU_SE <- sd(list_mice_UASI80_OU_SE)
    CIlower_mice_UASI80_OU_pred <- mean_mice_UASI80_OU_pred - (2*mean_mice_UASI80_OU_SE)
    CIupper_mice_UASI80_OU_pred <- mean_mice_UASI80_OU_pred + (2*mean_mice_UASI80_OU_SE)
    mice_UASI80_OU_pred_max <- max(list_mice_UASI80_OU_pred) 
    mice_UASI80_OU_pred_min <- min(list_mice_UASI80_OU_pred)
    RB_mice_UASI80_OU_pred <- bias(OU_true, list_mice_UASI80_OU_pred)
    bias_RB_mice_UASI80_OU_pred <- list_mice_UASI80_OU_pred - OU_true
    sd_RB_mice_UASI80_OU_pred <- sd(bias_RB_mice_UASI80_OU_pred)    
    PB_mice_UASI80_OU_pred <- percent_bias(OU_true, list_mice_UASI80_OU_pred) *100
    RMSE_mice_UASI80_OU_pred <- rmse(OU_true, list_mice_UASI80_OU_pred)
    AW_mice_UASI80_OU_pred <- mean(sapply(list_mice_UASI80_OU_95width, sum))
    list_mice_UASI80_OU_coverge <- sapply(list_mice_UASI80_OU_coverge, sum)
    CR_mice_UASI80_OU_pred <- mean(list_mice_UASI80_OU_coverge)
    sd_CR_mice_UASI80_OU_pred <- sd(list_mice_UASI80_OU_coverge)
  }
  
  #Performance of UASI50
  {
    list_mice_UASI50_RT_pred <- sapply(list_mice_UASI50_RT_pred, sum)
    mean_mice_UASI50_RT_pred <- mean(list_mice_UASI50_RT_pred)
    sd_mice_UASI50_RT_pred <- sd(list_mice_UASI50_RT_pred)
    list_mice_UASI50_RT_SE <- sapply(list_mice_UASI50_RT_SE, sum)
    mean_mice_UASI50_RT_SE <- mean(list_mice_UASI50_RT_SE)
    sd_mice_UASI50_RT_SE <- sd(list_mice_UASI50_RT_SE)
    CIlower_mice_UASI50_RT_pred <- mean_mice_UASI50_RT_pred - (2*mean_mice_UASI50_RT_SE)
    CIupper_mice_UASI50_RT_pred <- mean_mice_UASI50_RT_pred + (2*mean_mice_UASI50_RT_SE)
    mice_UASI50_RT_pred_max <- max(list_mice_UASI50_RT_pred) 
    mice_UASI50_RT_pred_min <- min(list_mice_UASI50_RT_pred)
    RB_mice_UASI50_RT_pred <- bias(RT_true, list_mice_UASI50_RT_pred)
    bias_RB_mice_UASI50_RT_pred <- list_mice_UASI50_RT_pred - RT_true
    sd_RB_mice_UASI50_RT_pred <- sd(bias_RB_mice_UASI50_RT_pred)    
    PB_mice_UASI50_RT_pred <- percent_bias(RT_true, list_mice_UASI50_RT_pred) *100
    RMSE_mice_UASI50_RT_pred <- rmse(RT_true, list_mice_UASI50_RT_pred)
    AW_mice_UASI50_RT_pred <- mean(sapply(list_mice_UASI50_RT_95width, sum))
    list_mice_UASI50_RT_coverge <- sapply(list_mice_UASI50_RT_coverge, sum)
    CR_mice_UASI50_RT_pred <- mean(list_mice_UASI50_RT_coverge)
    sd_CR_mice_UASI50_RT_pred <- sd(list_mice_UASI50_RT_coverge)
    
    list_mice_UASI50_UT_pred <- sapply(list_mice_UASI50_UT_pred, sum)
    mean_mice_UASI50_UT_pred <- mean(list_mice_UASI50_UT_pred)
    sd_mice_UASI50_UT_pred <- sd(list_mice_UASI50_UT_pred)
    list_mice_UASI50_UT_SE <- sapply(list_mice_UASI50_UT_SE, sum)
    mean_mice_UASI50_UT_SE <- mean(list_mice_UASI50_UT_SE)
    sd_mice_UASI50_UT_SE <- sd(list_mice_UASI50_UT_SE)
    CIlower_mice_UASI50_UT_pred <- mean_mice_UASI50_UT_pred - (2*mean_mice_UASI50_UT_SE)
    CIupper_mice_UASI50_UT_pred <- mean_mice_UASI50_UT_pred + (2*mean_mice_UASI50_UT_SE)
    mice_UASI50_UT_pred_max <- max(list_mice_UASI50_UT_pred) 
    mice_UASI50_UT_pred_min <- min(list_mice_UASI50_UT_pred)
    RB_mice_UASI50_UT_pred <- bias(UT_true, list_mice_UASI50_UT_pred)
    bias_RB_mice_UASI50_UT_pred <- list_mice_UASI50_UT_pred - UT_true
    sd_RB_mice_UASI50_UT_pred <- sd(bias_RB_mice_UASI50_UT_pred)    
    PB_mice_UASI50_UT_pred <- percent_bias(UT_true, list_mice_UASI50_UT_pred) *100
    RMSE_mice_UASI50_UT_pred <- rmse(UT_true, list_mice_UASI50_UT_pred)
    AW_mice_UASI50_UT_pred <- mean(sapply(list_mice_UASI50_UT_95width, sum))
    list_mice_UASI50_UT_coverge <- sapply(list_mice_UASI50_UT_coverge, sum)
    CR_mice_UASI50_UT_pred <- mean(list_mice_UASI50_UT_coverge)
    sd_CR_mice_UASI50_UT_pred <- sd(list_mice_UASI50_UT_coverge)
    
    list_mice_UASI50_SW_pred <- sapply(list_mice_UASI50_SW_pred, sum)
    mean_mice_UASI50_SW_pred <- mean(list_mice_UASI50_SW_pred)
    sd_mice_UASI50_SW_pred <- sd(list_mice_UASI50_SW_pred)
    list_mice_UASI50_SW_SE <- sapply(list_mice_UASI50_SW_SE, sum)
    mean_mice_UASI50_SW_SE <- mean(list_mice_UASI50_SW_SE)
    sd_mice_UASI50_SW_SE <- sd(list_mice_UASI50_SW_SE)
    CIlower_mice_UASI50_SW_pred <- mean_mice_UASI50_SW_pred - (2*mean_mice_UASI50_SW_SE)
    CIupper_mice_UASI50_SW_pred <- mean_mice_UASI50_SW_pred + (2*mean_mice_UASI50_SW_SE)
    mice_UASI50_SW_pred_max <- max(list_mice_UASI50_SW_pred) 
    mice_UASI50_SW_pred_min <- min(list_mice_UASI50_SW_pred)
    RB_mice_UASI50_SW_pred <- bias(SW_true, list_mice_UASI50_SW_pred)
    bias_RB_mice_UASI50_SW_pred <- list_mice_UASI50_SW_pred - SW_true
    sd_RB_mice_UASI50_SW_pred <- sd(bias_RB_mice_UASI50_SW_pred)    
    PB_mice_UASI50_SW_pred <- percent_bias(SW_true, list_mice_UASI50_SW_pred) *100
    RMSE_mice_UASI50_SW_pred <- rmse(SW_true, list_mice_UASI50_SW_pred)
    AW_mice_UASI50_SW_pred <- mean(sapply(list_mice_UASI50_SW_95width, sum))
    list_mice_UASI50_SW_coverge <- sapply(list_mice_UASI50_SW_coverge, sum)
    CR_mice_UASI50_SW_pred <- mean(list_mice_UASI50_SW_coverge)
    sd_CR_mice_UASI50_SW_pred <- sd(list_mice_UASI50_SW_coverge)
    
    list_mice_UASI50_OU_pred <- sapply(list_mice_UASI50_OU_pred, sum)
    mean_mice_UASI50_OU_pred <- mean(list_mice_UASI50_OU_pred)
    sd_mice_UASI50_OU_pred <- sd(list_mice_UASI50_OU_pred)
    list_mice_UASI50_OU_SE <- sapply(list_mice_UASI50_OU_SE, sum)
    mean_mice_UASI50_OU_SE <- mean(list_mice_UASI50_OU_SE)
    sd_mice_UASI50_OU_SE <- sd(list_mice_UASI50_OU_SE)
    CIlower_mice_UASI50_OU_pred <- mean_mice_UASI50_OU_pred - (2*mean_mice_UASI50_OU_SE)
    CIupper_mice_UASI50_OU_pred <- mean_mice_UASI50_OU_pred + (2*mean_mice_UASI50_OU_SE)
    mice_UASI50_OU_pred_max <- max(list_mice_UASI50_OU_pred) 
    mice_UASI50_OU_pred_min <- min(list_mice_UASI50_OU_pred)
    RB_mice_UASI50_OU_pred <- bias(OU_true, list_mice_UASI50_OU_pred)
    bias_RB_mice_UASI50_OU_pred <- list_mice_UASI50_OU_pred - OU_true
    sd_RB_mice_UASI50_OU_pred <- sd(bias_RB_mice_UASI50_OU_pred)    
    PB_mice_UASI50_OU_pred <- percent_bias(OU_true, list_mice_UASI50_OU_pred) *100
    RMSE_mice_UASI50_OU_pred <- rmse(OU_true, list_mice_UASI50_OU_pred)
    AW_mice_UASI50_OU_pred <- mean(sapply(list_mice_UASI50_OU_95width, sum))
    list_mice_UASI50_OU_coverge <- sapply(list_mice_UASI50_OU_coverge, sum)
    CR_mice_UASI50_OU_pred <- mean(list_mice_UASI50_OU_coverge)
    sd_CR_mice_UASI50_OU_pred <- sd(list_mice_UASI50_OU_coverge)
  }
  
  #Performance of UASI20
  {
    list_mice_UASI20_RT_pred <- sapply(list_mice_UASI20_RT_pred, sum)
    mean_mice_UASI20_RT_pred <- mean(list_mice_UASI20_RT_pred)
    sd_mice_UASI20_RT_pred <- sd(list_mice_UASI20_RT_pred)
    list_mice_UASI20_RT_SE <- sapply(list_mice_UASI20_RT_SE, sum)
    mean_mice_UASI20_RT_SE <- mean(list_mice_UASI20_RT_SE)
    sd_mice_UASI20_RT_SE <- sd(list_mice_UASI20_RT_SE)
    CIlower_mice_UASI20_RT_pred <- mean_mice_UASI20_RT_pred - (2*mean_mice_UASI20_RT_SE)
    CIupper_mice_UASI20_RT_pred <- mean_mice_UASI20_RT_pred + (2*mean_mice_UASI20_RT_SE)
    mice_UASI20_RT_pred_max <- max(list_mice_UASI20_RT_pred) 
    mice_UASI20_RT_pred_min <- min(list_mice_UASI20_RT_pred)
    RB_mice_UASI20_RT_pred <- bias(RT_true, list_mice_UASI20_RT_pred)
    bias_RB_mice_UASI20_RT_pred <- list_mice_UASI20_RT_pred - RT_true
    sd_RB_mice_UASI20_RT_pred <- sd(bias_RB_mice_UASI20_RT_pred)    
    PB_mice_UASI20_RT_pred <- percent_bias(RT_true, list_mice_UASI20_RT_pred) *100
    RMSE_mice_UASI20_RT_pred <- rmse(RT_true, list_mice_UASI20_RT_pred)
    AW_mice_UASI20_RT_pred <- mean(sapply(list_mice_UASI20_RT_95width, sum))
    list_mice_UASI20_RT_coverge <- sapply(list_mice_UASI20_RT_coverge, sum)
    CR_mice_UASI20_RT_pred <- mean(list_mice_UASI20_RT_coverge)
    sd_CR_mice_UASI20_RT_pred <- sd(list_mice_UASI20_RT_coverge)
    
    list_mice_UASI20_UT_pred <- sapply(list_mice_UASI20_UT_pred, sum)
    mean_mice_UASI20_UT_pred <- mean(list_mice_UASI20_UT_pred)
    sd_mice_UASI20_UT_pred <- sd(list_mice_UASI20_UT_pred)
    list_mice_UASI20_UT_SE <- sapply(list_mice_UASI20_UT_SE, sum)
    mean_mice_UASI20_UT_SE <- mean(list_mice_UASI20_UT_SE)
    sd_mice_UASI20_UT_SE <- sd(list_mice_UASI20_UT_SE)
    CIlower_mice_UASI20_UT_pred <- mean_mice_UASI20_UT_pred - (2*mean_mice_UASI20_UT_SE)
    CIupper_mice_UASI20_UT_pred <- mean_mice_UASI20_UT_pred + (2*mean_mice_UASI20_UT_SE)
    mice_UASI20_UT_pred_max <- max(list_mice_UASI20_UT_pred) 
    mice_UASI20_UT_pred_min <- min(list_mice_UASI20_UT_pred)
    RB_mice_UASI20_UT_pred <- bias(UT_true, list_mice_UASI20_UT_pred)
    bias_RB_mice_UASI20_UT_pred <- list_mice_UASI20_UT_pred - UT_true
    sd_RB_mice_UASI20_UT_pred <- sd(bias_RB_mice_UASI20_UT_pred)    
    PB_mice_UASI20_UT_pred <- percent_bias(UT_true, list_mice_UASI20_UT_pred) *100
    RMSE_mice_UASI20_UT_pred <- rmse(UT_true, list_mice_UASI20_UT_pred)
    AW_mice_UASI20_UT_pred <- mean(sapply(list_mice_UASI20_UT_95width, sum))
    list_mice_UASI20_UT_coverge <- sapply(list_mice_UASI20_UT_coverge, sum)
    CR_mice_UASI20_UT_pred <- mean(list_mice_UASI20_UT_coverge)
    sd_CR_mice_UASI20_UT_pred <- sd(list_mice_UASI20_UT_coverge)
    
    list_mice_UASI20_SW_pred <- sapply(list_mice_UASI20_SW_pred, sum)
    mean_mice_UASI20_SW_pred <- mean(list_mice_UASI20_SW_pred)
    sd_mice_UASI20_SW_pred <- sd(list_mice_UASI20_SW_pred)
    list_mice_UASI20_SW_SE <- sapply(list_mice_UASI20_SW_SE, sum)
    mean_mice_UASI20_SW_SE <- mean(list_mice_UASI20_SW_SE)
    sd_mice_UASI20_SW_SE <- sd(list_mice_UASI20_SW_SE)
    CIlower_mice_UASI20_SW_pred <- mean_mice_UASI20_SW_pred - (2*mean_mice_UASI20_SW_SE)
    CIupper_mice_UASI20_SW_pred <- mean_mice_UASI20_SW_pred + (2*mean_mice_UASI20_SW_SE)
    mice_UASI20_SW_pred_max <- max(list_mice_UASI20_SW_pred) 
    mice_UASI20_SW_pred_min <- min(list_mice_UASI20_SW_pred)
    RB_mice_UASI20_SW_pred <- bias(SW_true, list_mice_UASI20_SW_pred)
    bias_RB_mice_UASI20_SW_pred <- list_mice_UASI20_SW_pred - SW_true
    sd_RB_mice_UASI20_SW_pred <- sd(bias_RB_mice_UASI20_SW_pred)    
    PB_mice_UASI20_SW_pred <- percent_bias(SW_true, list_mice_UASI20_SW_pred) *100
    RMSE_mice_UASI20_SW_pred <- rmse(SW_true, list_mice_UASI20_SW_pred)
    AW_mice_UASI20_SW_pred <- mean(sapply(list_mice_UASI20_SW_95width, sum))
    list_mice_UASI20_SW_coverge <- sapply(list_mice_UASI20_SW_coverge, sum)
    CR_mice_UASI20_SW_pred <- mean(list_mice_UASI20_SW_coverge)
    sd_CR_mice_UASI20_SW_pred <- sd(list_mice_UASI20_SW_coverge)
    
    list_mice_UASI20_OU_pred <- sapply(list_mice_UASI20_OU_pred, sum)
    mean_mice_UASI20_OU_pred <- mean(list_mice_UASI20_OU_pred)
    sd_mice_UASI20_OU_pred <- sd(list_mice_UASI20_OU_pred)
    list_mice_UASI20_OU_SE <- sapply(list_mice_UASI20_OU_SE, sum)
    mean_mice_UASI20_OU_SE <- mean(list_mice_UASI20_OU_SE)
    sd_mice_UASI20_OU_SE <- sd(list_mice_UASI20_OU_SE)
    CIlower_mice_UASI20_OU_pred <- mean_mice_UASI20_OU_pred - (2*mean_mice_UASI20_OU_SE)
    CIupper_mice_UASI20_OU_pred <- mean_mice_UASI20_OU_pred + (2*mean_mice_UASI20_OU_SE)
    mice_UASI20_OU_pred_max <- max(list_mice_UASI20_OU_pred) 
    mice_UASI20_OU_pred_min <- min(list_mice_UASI20_OU_pred)
    RB_mice_UASI20_OU_pred <- bias(OU_true, list_mice_UASI20_OU_pred)
    bias_RB_mice_UASI20_OU_pred <- list_mice_UASI20_OU_pred - OU_true
    sd_RB_mice_UASI20_OU_pred <- sd(bias_RB_mice_UASI20_OU_pred)    
    PB_mice_UASI20_OU_pred <- percent_bias(OU_true, list_mice_UASI20_OU_pred) *100
    RMSE_mice_UASI20_OU_pred <- rmse(OU_true, list_mice_UASI20_OU_pred)
    AW_mice_UASI20_OU_pred <- mean(sapply(list_mice_UASI20_OU_95width, sum))
    list_mice_UASI20_OU_coverge <- sapply(list_mice_UASI20_OU_coverge, sum)
    CR_mice_UASI20_OU_pred <- mean(list_mice_UASI20_OU_coverge)
    sd_CR_mice_UASI20_OU_pred <- sd(list_mice_UASI20_OU_coverge)
  }
  
  #Performance of UASI5
  {
    list_mice_UASI5_RT_pred <- sapply(list_mice_UASI5_RT_pred, sum)
    mean_mice_UASI5_RT_pred <- mean(list_mice_UASI5_RT_pred)
    sd_mice_UASI5_RT_pred <- sd(list_mice_UASI5_RT_pred)
    list_mice_UASI5_RT_SE <- sapply(list_mice_UASI5_RT_SE, sum)
    mean_mice_UASI5_RT_SE <- mean(list_mice_UASI5_RT_SE)
    sd_mice_UASI5_RT_SE <- sd(list_mice_UASI5_RT_SE)
    CIlower_mice_UASI5_RT_pred <- mean_mice_UASI5_RT_pred - (2*mean_mice_UASI5_RT_SE)
    CIupper_mice_UASI5_RT_pred <- mean_mice_UASI5_RT_pred + (2*mean_mice_UASI5_RT_SE)
    mice_UASI5_RT_pred_max <- max(list_mice_UASI5_RT_pred) 
    mice_UASI5_RT_pred_min <- min(list_mice_UASI5_RT_pred)
    RB_mice_UASI5_RT_pred <- bias(RT_true, list_mice_UASI5_RT_pred)
    bias_RB_mice_UASI5_RT_pred <- list_mice_UASI5_RT_pred - RT_true
    sd_RB_mice_UASI5_RT_pred <- sd(bias_RB_mice_UASI5_RT_pred)    
    PB_mice_UASI5_RT_pred <- percent_bias(RT_true, list_mice_UASI5_RT_pred) *100
    RMSE_mice_UASI5_RT_pred <- rmse(RT_true, list_mice_UASI5_RT_pred)
    AW_mice_UASI5_RT_pred <- mean(sapply(list_mice_UASI5_RT_95width, sum))
    list_mice_UASI5_RT_coverge <- sapply(list_mice_UASI5_RT_coverge, sum)
    CR_mice_UASI5_RT_pred <- mean(list_mice_UASI5_RT_coverge)
    sd_CR_mice_UASI5_RT_pred <- sd(list_mice_UASI5_RT_coverge)
    
    list_mice_UASI5_UT_pred <- sapply(list_mice_UASI5_UT_pred, sum)
    mean_mice_UASI5_UT_pred <- mean(list_mice_UASI5_UT_pred)
    sd_mice_UASI5_UT_pred <- sd(list_mice_UASI5_UT_pred)
    list_mice_UASI5_UT_SE <- sapply(list_mice_UASI5_UT_SE, sum)
    mean_mice_UASI5_UT_SE <- mean(list_mice_UASI5_UT_SE)
    sd_mice_UASI5_UT_SE <- sd(list_mice_UASI5_UT_SE)
    CIlower_mice_UASI5_UT_pred <- mean_mice_UASI5_UT_pred - (2*mean_mice_UASI5_UT_SE)
    CIupper_mice_UASI5_UT_pred <- mean_mice_UASI5_UT_pred + (2*mean_mice_UASI5_UT_SE)
    mice_UASI5_UT_pred_max <- max(list_mice_UASI5_UT_pred) 
    mice_UASI5_UT_pred_min <- min(list_mice_UASI5_UT_pred)
    RB_mice_UASI5_UT_pred <- bias(UT_true, list_mice_UASI5_UT_pred)
    bias_RB_mice_UASI5_UT_pred <- list_mice_UASI5_UT_pred - UT_true
    sd_RB_mice_UASI5_UT_pred <- sd(bias_RB_mice_UASI5_UT_pred)    
    PB_mice_UASI5_UT_pred <- percent_bias(UT_true, list_mice_UASI5_UT_pred) *100
    RMSE_mice_UASI5_UT_pred <- rmse(UT_true, list_mice_UASI5_UT_pred)
    AW_mice_UASI5_UT_pred <- mean(sapply(list_mice_UASI5_UT_95width, sum))
    list_mice_UASI5_UT_coverge <- sapply(list_mice_UASI5_UT_coverge, sum)
    CR_mice_UASI5_UT_pred <- mean(list_mice_UASI5_UT_coverge)
    sd_CR_mice_UASI5_UT_pred <- sd(list_mice_UASI5_UT_coverge)
    
    list_mice_UASI5_SW_pred <- sapply(list_mice_UASI5_SW_pred, sum)
    mean_mice_UASI5_SW_pred <- mean(list_mice_UASI5_SW_pred)
    sd_mice_UASI5_SW_pred <- sd(list_mice_UASI5_SW_pred)
    list_mice_UASI5_SW_SE <- sapply(list_mice_UASI5_SW_SE, sum)
    mean_mice_UASI5_SW_SE <- mean(list_mice_UASI5_SW_SE)
    sd_mice_UASI5_SW_SE <- sd(list_mice_UASI5_SW_SE)
    CIlower_mice_UASI5_SW_pred <- mean_mice_UASI5_SW_pred - (2*mean_mice_UASI5_SW_SE)
    CIupper_mice_UASI5_SW_pred <- mean_mice_UASI5_SW_pred + (2*mean_mice_UASI5_SW_SE)
    mice_UASI5_SW_pred_max <- max(list_mice_UASI5_SW_pred) 
    mice_UASI5_SW_pred_min <- min(list_mice_UASI5_SW_pred)
    RB_mice_UASI5_SW_pred <- bias(SW_true, list_mice_UASI5_SW_pred)
    bias_RB_mice_UASI5_SW_pred <- list_mice_UASI5_SW_pred - SW_true
    sd_RB_mice_UASI5_SW_pred <- sd(bias_RB_mice_UASI5_SW_pred)    
    PB_mice_UASI5_SW_pred <- percent_bias(SW_true, list_mice_UASI5_SW_pred) *100
    RMSE_mice_UASI5_SW_pred <- rmse(SW_true, list_mice_UASI5_SW_pred)
    AW_mice_UASI5_SW_pred <- mean(sapply(list_mice_UASI5_SW_95width, sum))
    list_mice_UASI5_SW_coverge <- sapply(list_mice_UASI5_SW_coverge, sum)
    CR_mice_UASI5_SW_pred <- mean(list_mice_UASI5_SW_coverge)
    sd_CR_mice_UASI5_SW_pred <- sd(list_mice_UASI5_SW_coverge)
    
    list_mice_UASI5_OU_pred <- sapply(list_mice_UASI5_OU_pred, sum)
    mean_mice_UASI5_OU_pred <- mean(list_mice_UASI5_OU_pred)
    sd_mice_UASI5_OU_pred <- sd(list_mice_UASI5_OU_pred)
    list_mice_UASI5_OU_SE <- sapply(list_mice_UASI5_OU_SE, sum)
    mean_mice_UASI5_OU_SE <- mean(list_mice_UASI5_OU_SE)
    sd_mice_UASI5_OU_SE <- sd(list_mice_UASI5_OU_SE)
    CIlower_mice_UASI5_OU_pred <- mean_mice_UASI5_OU_pred - (2*mean_mice_UASI5_OU_SE)
    CIupper_mice_UASI5_OU_pred <- mean_mice_UASI5_OU_pred + (2*mean_mice_UASI5_OU_SE)
    mice_UASI5_OU_pred_max <- max(list_mice_UASI5_OU_pred) 
    mice_UASI5_OU_pred_min <- min(list_mice_UASI5_OU_pred)
    RB_mice_UASI5_OU_pred <- bias(OU_true, list_mice_UASI5_OU_pred)
    bias_RB_mice_UASI5_OU_pred <- list_mice_UASI5_OU_pred - OU_true
    sd_RB_mice_UASI5_OU_pred <- sd(bias_RB_mice_UASI5_OU_pred)    
    PB_mice_UASI5_OU_pred <- percent_bias(OU_true, list_mice_UASI5_OU_pred) *100
    RMSE_mice_UASI5_OU_pred <- rmse(OU_true, list_mice_UASI5_OU_pred)
    AW_mice_UASI5_OU_pred <- mean(sapply(list_mice_UASI5_OU_95width, sum))
    list_mice_UASI5_OU_coverge <- sapply(list_mice_UASI5_OU_coverge, sum)
    CR_mice_UASI5_OU_pred <- mean(list_mice_UASI5_OU_coverge)
    sd_CR_mice_UASI5_OU_pred <- sd(list_mice_UASI5_OU_coverge)
  }
  
  #Performance of MASI80
  {
    list_mice_MASI80_RT_pred <- sapply(list_mice_MASI80_RT_pred, sum)
    mean_mice_MASI80_RT_pred <- mean(list_mice_MASI80_RT_pred)
    sd_mice_MASI80_RT_pred <- sd(list_mice_MASI80_RT_pred)
    list_mice_MASI80_RT_SE <- sapply(list_mice_MASI80_RT_SE, sum)
    mean_mice_MASI80_RT_SE <- mean(list_mice_MASI80_RT_SE)
    sd_mice_MASI80_RT_SE <- sd(list_mice_MASI80_RT_SE)
    CIlower_mice_MASI80_RT_pred <- mean_mice_MASI80_RT_pred - (2*mean_mice_MASI80_RT_SE)
    CIupper_mice_MASI80_RT_pred <- mean_mice_MASI80_RT_pred + (2*mean_mice_MASI80_RT_SE)
    mice_MASI80_RT_pred_max <- max(list_mice_MASI80_RT_pred) 
    mice_MASI80_RT_pred_min <- min(list_mice_MASI80_RT_pred)
    RB_mice_MASI80_RT_pred <- bias(RT_true, list_mice_MASI80_RT_pred)
    bias_RB_mice_MASI80_RT_pred <- list_mice_MASI80_RT_pred - RT_true
    sd_RB_mice_MASI80_RT_pred <- sd(bias_RB_mice_MASI80_RT_pred)    
    PB_mice_MASI80_RT_pred <- percent_bias(RT_true, list_mice_MASI80_RT_pred) *100
    RMSE_mice_MASI80_RT_pred <- rmse(RT_true, list_mice_MASI80_RT_pred)
    AW_mice_MASI80_RT_pred <- mean(sapply(list_mice_MASI80_RT_95width, sum))
    list_mice_MASI80_RT_coverge <- sapply(list_mice_MASI80_RT_coverge, sum)
    CR_mice_MASI80_RT_pred <- mean(list_mice_MASI80_RT_coverge)
    sd_CR_mice_MASI80_RT_pred <- sd(list_mice_MASI80_RT_coverge)
    
    list_mice_MASI80_UT_pred <- sapply(list_mice_MASI80_UT_pred, sum)
    mean_mice_MASI80_UT_pred <- mean(list_mice_MASI80_UT_pred)
    sd_mice_MASI80_UT_pred <- sd(list_mice_MASI80_UT_pred)
    list_mice_MASI80_UT_SE <- sapply(list_mice_MASI80_UT_SE, sum)
    mean_mice_MASI80_UT_SE <- mean(list_mice_MASI80_UT_SE)
    sd_mice_MASI80_UT_SE <- sd(list_mice_MASI80_UT_SE)
    CIlower_mice_MASI80_UT_pred <- mean_mice_MASI80_UT_pred - (2*mean_mice_MASI80_UT_SE)
    CIupper_mice_MASI80_UT_pred <- mean_mice_MASI80_UT_pred + (2*mean_mice_MASI80_UT_SE)
    mice_MASI80_UT_pred_max <- max(list_mice_MASI80_UT_pred) 
    mice_MASI80_UT_pred_min <- min(list_mice_MASI80_UT_pred)
    RB_mice_MASI80_UT_pred <- bias(UT_true, list_mice_MASI80_UT_pred)
    bias_RB_mice_MASI80_UT_pred <- list_mice_MASI80_UT_pred - UT_true
    sd_RB_mice_MASI80_UT_pred <- sd(bias_RB_mice_MASI80_UT_pred)    
    PB_mice_MASI80_UT_pred <- percent_bias(UT_true, list_mice_MASI80_UT_pred) *100
    RMSE_mice_MASI80_UT_pred <- rmse(UT_true, list_mice_MASI80_UT_pred)
    AW_mice_MASI80_UT_pred <- mean(sapply(list_mice_MASI80_UT_95width, sum))
    list_mice_MASI80_UT_coverge <- sapply(list_mice_MASI80_UT_coverge, sum)
    CR_mice_MASI80_UT_pred <- mean(list_mice_MASI80_UT_coverge)
    sd_CR_mice_MASI80_UT_pred <- sd(list_mice_MASI80_UT_coverge)
    
    list_mice_MASI80_SW_pred <- sapply(list_mice_MASI80_SW_pred, sum)
    mean_mice_MASI80_SW_pred <- mean(list_mice_MASI80_SW_pred)
    sd_mice_MASI80_SW_pred <- sd(list_mice_MASI80_SW_pred)
    list_mice_MASI80_SW_SE <- sapply(list_mice_MASI80_SW_SE, sum)
    mean_mice_MASI80_SW_SE <- mean(list_mice_MASI80_SW_SE)
    sd_mice_MASI80_SW_SE <- sd(list_mice_MASI80_SW_SE)
    CIlower_mice_MASI80_SW_pred <- mean_mice_MASI80_SW_pred - (2*mean_mice_MASI80_SW_SE)
    CIupper_mice_MASI80_SW_pred <- mean_mice_MASI80_SW_pred + (2*mean_mice_MASI80_SW_SE)
    mice_MASI80_SW_pred_max <- max(list_mice_MASI80_SW_pred) 
    mice_MASI80_SW_pred_min <- min(list_mice_MASI80_SW_pred)
    RB_mice_MASI80_SW_pred <- bias(SW_true, list_mice_MASI80_SW_pred)
    bias_RB_mice_MASI80_SW_pred <- list_mice_MASI80_SW_pred - SW_true
    sd_RB_mice_MASI80_SW_pred <- sd(bias_RB_mice_MASI80_SW_pred)    
    PB_mice_MASI80_SW_pred <- percent_bias(SW_true, list_mice_MASI80_SW_pred) *100
    RMSE_mice_MASI80_SW_pred <- rmse(SW_true, list_mice_MASI80_SW_pred)
    AW_mice_MASI80_SW_pred <- mean(sapply(list_mice_MASI80_SW_95width, sum))
    list_mice_MASI80_SW_coverge <- sapply(list_mice_MASI80_SW_coverge, sum)
    CR_mice_MASI80_SW_pred <- mean(list_mice_MASI80_SW_coverge)
    sd_CR_mice_MASI80_SW_pred <- sd(list_mice_MASI80_SW_coverge)
    
    list_mice_MASI80_OU_pred <- sapply(list_mice_MASI80_OU_pred, sum)
    mean_mice_MASI80_OU_pred <- mean(list_mice_MASI80_OU_pred)
    sd_mice_MASI80_OU_pred <- sd(list_mice_MASI80_OU_pred)
    list_mice_MASI80_OU_SE <- sapply(list_mice_MASI80_OU_SE, sum)
    mean_mice_MASI80_OU_SE <- mean(list_mice_MASI80_OU_SE)
    sd_mice_MASI80_OU_SE <- sd(list_mice_MASI80_OU_SE)
    CIlower_mice_MASI80_OU_pred <- mean_mice_MASI80_OU_pred - (2*mean_mice_MASI80_OU_SE)
    CIupper_mice_MASI80_OU_pred <- mean_mice_MASI80_OU_pred + (2*mean_mice_MASI80_OU_SE)
    mice_MASI80_OU_pred_max <- max(list_mice_MASI80_OU_pred) 
    mice_MASI80_OU_pred_min <- min(list_mice_MASI80_OU_pred)
    RB_mice_MASI80_OU_pred <- bias(OU_true, list_mice_MASI80_OU_pred)
    bias_RB_mice_MASI80_OU_pred <- list_mice_MASI80_OU_pred - OU_true
    sd_RB_mice_MASI80_OU_pred <- sd(bias_RB_mice_MASI80_OU_pred)    
    PB_mice_MASI80_OU_pred <- percent_bias(OU_true, list_mice_MASI80_OU_pred) *100
    RMSE_mice_MASI80_OU_pred <- rmse(OU_true, list_mice_MASI80_OU_pred)
    AW_mice_MASI80_OU_pred <- mean(sapply(list_mice_MASI80_OU_95width, sum))
    list_mice_MASI80_OU_coverge <- sapply(list_mice_MASI80_OU_coverge, sum)
    CR_mice_MASI80_OU_pred <- mean(list_mice_MASI80_OU_coverge)
    sd_CR_mice_MASI80_OU_pred <- sd(list_mice_MASI80_OU_coverge)
  }
  
  #Performance of MASI50
  {
    list_mice_MASI50_RT_pred <- sapply(list_mice_MASI50_RT_pred, sum)
    mean_mice_MASI50_RT_pred <- mean(list_mice_MASI50_RT_pred)
    sd_mice_MASI50_RT_pred <- sd(list_mice_MASI50_RT_pred)
    list_mice_MASI50_RT_SE <- sapply(list_mice_MASI50_RT_SE, sum)
    mean_mice_MASI50_RT_SE <- mean(list_mice_MASI50_RT_SE)
    sd_mice_MASI50_RT_SE <- sd(list_mice_MASI50_RT_SE)
    CIlower_mice_MASI50_RT_pred <- mean_mice_MASI50_RT_pred - (2*mean_mice_MASI50_RT_SE)
    CIupper_mice_MASI50_RT_pred <- mean_mice_MASI50_RT_pred + (2*mean_mice_MASI50_RT_SE)
    mice_MASI50_RT_pred_max <- max(list_mice_MASI50_RT_pred) 
    mice_MASI50_RT_pred_min <- min(list_mice_MASI50_RT_pred)
    RB_mice_MASI50_RT_pred <- bias(RT_true, list_mice_MASI50_RT_pred)
    bias_RB_mice_MASI50_RT_pred <- list_mice_MASI50_RT_pred - RT_true
    sd_RB_mice_MASI50_RT_pred <- sd(bias_RB_mice_MASI50_RT_pred)    
    PB_mice_MASI50_RT_pred <- percent_bias(RT_true, list_mice_MASI50_RT_pred) *100
    RMSE_mice_MASI50_RT_pred <- rmse(RT_true, list_mice_MASI50_RT_pred)
    AW_mice_MASI50_RT_pred <- mean(sapply(list_mice_MASI50_RT_95width, sum))
    list_mice_MASI50_RT_coverge <- sapply(list_mice_MASI50_RT_coverge, sum)
    CR_mice_MASI50_RT_pred <- mean(list_mice_MASI50_RT_coverge)
    sd_CR_mice_MASI50_RT_pred <- sd(list_mice_MASI50_RT_coverge)
    
    list_mice_MASI50_UT_pred <- sapply(list_mice_MASI50_UT_pred, sum)
    mean_mice_MASI50_UT_pred <- mean(list_mice_MASI50_UT_pred)
    sd_mice_MASI50_UT_pred <- sd(list_mice_MASI50_UT_pred)
    list_mice_MASI50_UT_SE <- sapply(list_mice_MASI50_UT_SE, sum)
    mean_mice_MASI50_UT_SE <- mean(list_mice_MASI50_UT_SE)
    sd_mice_MASI50_UT_SE <- sd(list_mice_MASI50_UT_SE)
    CIlower_mice_MASI50_UT_pred <- mean_mice_MASI50_UT_pred - (2*mean_mice_MASI50_UT_SE)
    CIupper_mice_MASI50_UT_pred <- mean_mice_MASI50_UT_pred + (2*mean_mice_MASI50_UT_SE)
    mice_MASI50_UT_pred_max <- max(list_mice_MASI50_UT_pred) 
    mice_MASI50_UT_pred_min <- min(list_mice_MASI50_UT_pred)
    RB_mice_MASI50_UT_pred <- bias(UT_true, list_mice_MASI50_UT_pred)
    bias_RB_mice_MASI50_UT_pred <- list_mice_MASI50_UT_pred - UT_true
    sd_RB_mice_MASI50_UT_pred <- sd(bias_RB_mice_MASI50_UT_pred)    
    PB_mice_MASI50_UT_pred <- percent_bias(UT_true, list_mice_MASI50_UT_pred) *100
    RMSE_mice_MASI50_UT_pred <- rmse(UT_true, list_mice_MASI50_UT_pred)
    AW_mice_MASI50_UT_pred <- mean(sapply(list_mice_MASI50_UT_95width, sum))
    list_mice_MASI50_UT_coverge <- sapply(list_mice_MASI50_UT_coverge, sum)
    CR_mice_MASI50_UT_pred <- mean(list_mice_MASI50_UT_coverge)
    sd_CR_mice_MASI50_UT_pred <- sd(list_mice_MASI50_UT_coverge)
    
    list_mice_MASI50_SW_pred <- sapply(list_mice_MASI50_SW_pred, sum)
    mean_mice_MASI50_SW_pred <- mean(list_mice_MASI50_SW_pred)
    sd_mice_MASI50_SW_pred <- sd(list_mice_MASI50_SW_pred)
    list_mice_MASI50_SW_SE <- sapply(list_mice_MASI50_SW_SE, sum)
    mean_mice_MASI50_SW_SE <- mean(list_mice_MASI50_SW_SE)
    sd_mice_MASI50_SW_SE <- sd(list_mice_MASI50_SW_SE)
    CIlower_mice_MASI50_SW_pred <- mean_mice_MASI50_SW_pred - (2*mean_mice_MASI50_SW_SE)
    CIupper_mice_MASI50_SW_pred <- mean_mice_MASI50_SW_pred + (2*mean_mice_MASI50_SW_SE)
    mice_MASI50_SW_pred_max <- max(list_mice_MASI50_SW_pred) 
    mice_MASI50_SW_pred_min <- min(list_mice_MASI50_SW_pred)
    RB_mice_MASI50_SW_pred <- bias(SW_true, list_mice_MASI50_SW_pred)
    bias_RB_mice_MASI50_SW_pred <- list_mice_MASI50_SW_pred - SW_true
    sd_RB_mice_MASI50_SW_pred <- sd(bias_RB_mice_MASI50_SW_pred)    
    PB_mice_MASI50_SW_pred <- percent_bias(SW_true, list_mice_MASI50_SW_pred) *100
    RMSE_mice_MASI50_SW_pred <- rmse(SW_true, list_mice_MASI50_SW_pred)
    AW_mice_MASI50_SW_pred <- mean(sapply(list_mice_MASI50_SW_95width, sum))
    list_mice_MASI50_SW_coverge <- sapply(list_mice_MASI50_SW_coverge, sum)
    CR_mice_MASI50_SW_pred <- mean(list_mice_MASI50_SW_coverge)
    sd_CR_mice_MASI50_SW_pred <- sd(list_mice_MASI50_SW_coverge)
    
    list_mice_MASI50_OU_pred <- sapply(list_mice_MASI50_OU_pred, sum)
    mean_mice_MASI50_OU_pred <- mean(list_mice_MASI50_OU_pred)
    sd_mice_MASI50_OU_pred <- sd(list_mice_MASI50_OU_pred)
    list_mice_MASI50_OU_SE <- sapply(list_mice_MASI50_OU_SE, sum)
    mean_mice_MASI50_OU_SE <- mean(list_mice_MASI50_OU_SE)
    sd_mice_MASI50_OU_SE <- sd(list_mice_MASI50_OU_SE)
    CIlower_mice_MASI50_OU_pred <- mean_mice_MASI50_OU_pred - (2*mean_mice_MASI50_OU_SE)
    CIupper_mice_MASI50_OU_pred <- mean_mice_MASI50_OU_pred + (2*mean_mice_MASI50_OU_SE)
    mice_MASI50_OU_pred_max <- max(list_mice_MASI50_OU_pred) 
    mice_MASI50_OU_pred_min <- min(list_mice_MASI50_OU_pred)
    RB_mice_MASI50_OU_pred <- bias(OU_true, list_mice_MASI50_OU_pred)
    bias_RB_mice_MASI50_OU_pred <- list_mice_MASI50_OU_pred - OU_true
    sd_RB_mice_MASI50_OU_pred <- sd(bias_RB_mice_MASI50_OU_pred)    
    PB_mice_MASI50_OU_pred <- percent_bias(OU_true, list_mice_MASI50_OU_pred) *100
    RMSE_mice_MASI50_OU_pred <- rmse(OU_true, list_mice_MASI50_OU_pred)
    AW_mice_MASI50_OU_pred <- mean(sapply(list_mice_MASI50_OU_95width, sum))
    list_mice_MASI50_OU_coverge <- sapply(list_mice_MASI50_OU_coverge, sum)
    CR_mice_MASI50_OU_pred <- mean(list_mice_MASI50_OU_coverge)
    sd_CR_mice_MASI50_OU_pred <- sd(list_mice_MASI50_OU_coverge)
  }
  
  #Performance of MASI20
  {
    list_mice_MASI20_RT_pred <- sapply(list_mice_MASI20_RT_pred, sum)
    mean_mice_MASI20_RT_pred <- mean(list_mice_MASI20_RT_pred)
    sd_mice_MASI20_RT_pred <- sd(list_mice_MASI20_RT_pred)
    list_mice_MASI20_RT_SE <- sapply(list_mice_MASI20_RT_SE, sum)
    mean_mice_MASI20_RT_SE <- mean(list_mice_MASI20_RT_SE)
    sd_mice_MASI20_RT_SE <- sd(list_mice_MASI20_RT_SE)
    CIlower_mice_MASI20_RT_pred <- mean_mice_MASI20_RT_pred - (2*mean_mice_MASI20_RT_SE)
    CIupper_mice_MASI20_RT_pred <- mean_mice_MASI20_RT_pred + (2*mean_mice_MASI20_RT_SE)
    mice_MASI20_RT_pred_max <- max(list_mice_MASI20_RT_pred) 
    mice_MASI20_RT_pred_min <- min(list_mice_MASI20_RT_pred)
    RB_mice_MASI20_RT_pred <- bias(RT_true, list_mice_MASI20_RT_pred)
    bias_RB_mice_MASI20_RT_pred <- list_mice_MASI20_RT_pred - RT_true
    sd_RB_mice_MASI20_RT_pred <- sd(bias_RB_mice_MASI20_RT_pred)    
    PB_mice_MASI20_RT_pred <- percent_bias(RT_true, list_mice_MASI20_RT_pred) *100
    RMSE_mice_MASI20_RT_pred <- rmse(RT_true, list_mice_MASI20_RT_pred)
    AW_mice_MASI20_RT_pred <- mean(sapply(list_mice_MASI20_RT_95width, sum))
    list_mice_MASI20_RT_coverge <- sapply(list_mice_MASI20_RT_coverge, sum)
    CR_mice_MASI20_RT_pred <- mean(list_mice_MASI20_RT_coverge)
    sd_CR_mice_MASI20_RT_pred <- sd(list_mice_MASI20_RT_coverge)
    
    list_mice_MASI20_UT_pred <- sapply(list_mice_MASI20_UT_pred, sum)
    mean_mice_MASI20_UT_pred <- mean(list_mice_MASI20_UT_pred)
    sd_mice_MASI20_UT_pred <- sd(list_mice_MASI20_UT_pred)
    list_mice_MASI20_UT_SE <- sapply(list_mice_MASI20_UT_SE, sum)
    mean_mice_MASI20_UT_SE <- mean(list_mice_MASI20_UT_SE)
    sd_mice_MASI20_UT_SE <- sd(list_mice_MASI20_UT_SE)
    CIlower_mice_MASI20_UT_pred <- mean_mice_MASI20_UT_pred - (2*mean_mice_MASI20_UT_SE)
    CIupper_mice_MASI20_UT_pred <- mean_mice_MASI20_UT_pred + (2*mean_mice_MASI20_UT_SE)
    mice_MASI20_UT_pred_max <- max(list_mice_MASI20_UT_pred) 
    mice_MASI20_UT_pred_min <- min(list_mice_MASI20_UT_pred)
    RB_mice_MASI20_UT_pred <- bias(UT_true, list_mice_MASI20_UT_pred)
    bias_RB_mice_MASI20_UT_pred <- list_mice_MASI20_UT_pred - UT_true
    sd_RB_mice_MASI20_UT_pred <- sd(bias_RB_mice_MASI20_UT_pred)    
    PB_mice_MASI20_UT_pred <- percent_bias(UT_true, list_mice_MASI20_UT_pred) *100
    RMSE_mice_MASI20_UT_pred <- rmse(UT_true, list_mice_MASI20_UT_pred)
    AW_mice_MASI20_UT_pred <- mean(sapply(list_mice_MASI20_UT_95width, sum))
    list_mice_MASI20_UT_coverge <- sapply(list_mice_MASI20_UT_coverge, sum)
    CR_mice_MASI20_UT_pred <- mean(list_mice_MASI20_UT_coverge)
    sd_CR_mice_MASI20_UT_pred <- sd(list_mice_MASI20_UT_coverge)
    
    list_mice_MASI20_SW_pred <- sapply(list_mice_MASI20_SW_pred, sum)
    mean_mice_MASI20_SW_pred <- mean(list_mice_MASI20_SW_pred)
    sd_mice_MASI20_SW_pred <- sd(list_mice_MASI20_SW_pred)
    list_mice_MASI20_SW_SE <- sapply(list_mice_MASI20_SW_SE, sum)
    mean_mice_MASI20_SW_SE <- mean(list_mice_MASI20_SW_SE)
    sd_mice_MASI20_SW_SE <- sd(list_mice_MASI20_SW_SE)
    CIlower_mice_MASI20_SW_pred <- mean_mice_MASI20_SW_pred - (2*mean_mice_MASI20_SW_SE)
    CIupper_mice_MASI20_SW_pred <- mean_mice_MASI20_SW_pred + (2*mean_mice_MASI20_SW_SE)
    mice_MASI20_SW_pred_max <- max(list_mice_MASI20_SW_pred) 
    mice_MASI20_SW_pred_min <- min(list_mice_MASI20_SW_pred)
    RB_mice_MASI20_SW_pred <- bias(SW_true, list_mice_MASI20_SW_pred)
    bias_RB_mice_MASI20_SW_pred <- list_mice_MASI20_SW_pred - SW_true
    sd_RB_mice_MASI20_SW_pred <- sd(bias_RB_mice_MASI20_SW_pred)    
    PB_mice_MASI20_SW_pred <- percent_bias(SW_true, list_mice_MASI20_SW_pred) *100
    RMSE_mice_MASI20_SW_pred <- rmse(SW_true, list_mice_MASI20_SW_pred)
    AW_mice_MASI20_SW_pred <- mean(sapply(list_mice_MASI20_SW_95width, sum))
    list_mice_MASI20_SW_coverge <- sapply(list_mice_MASI20_SW_coverge, sum)
    CR_mice_MASI20_SW_pred <- mean(list_mice_MASI20_SW_coverge)
    sd_CR_mice_MASI20_SW_pred <- sd(list_mice_MASI20_SW_coverge)
    
    list_mice_MASI20_OU_pred <- sapply(list_mice_MASI20_OU_pred, sum)
    mean_mice_MASI20_OU_pred <- mean(list_mice_MASI20_OU_pred)
    sd_mice_MASI20_OU_pred <- sd(list_mice_MASI20_OU_pred)
    list_mice_MASI20_OU_SE <- sapply(list_mice_MASI20_OU_SE, sum)
    mean_mice_MASI20_OU_SE <- mean(list_mice_MASI20_OU_SE)
    sd_mice_MASI20_OU_SE <- sd(list_mice_MASI20_OU_SE)
    CIlower_mice_MASI20_OU_pred <- mean_mice_MASI20_OU_pred - (2*mean_mice_MASI20_OU_SE)
    CIupper_mice_MASI20_OU_pred <- mean_mice_MASI20_OU_pred + (2*mean_mice_MASI20_OU_SE)
    mice_MASI20_OU_pred_max <- max(list_mice_MASI20_OU_pred) 
    mice_MASI20_OU_pred_min <- min(list_mice_MASI20_OU_pred)
    RB_mice_MASI20_OU_pred <- bias(OU_true, list_mice_MASI20_OU_pred)
    bias_RB_mice_MASI20_OU_pred <- list_mice_MASI20_OU_pred - OU_true
    sd_RB_mice_MASI20_OU_pred <- sd(bias_RB_mice_MASI20_OU_pred)    
    PB_mice_MASI20_OU_pred <- percent_bias(OU_true, list_mice_MASI20_OU_pred) *100
    RMSE_mice_MASI20_OU_pred <- rmse(OU_true, list_mice_MASI20_OU_pred)
    AW_mice_MASI20_OU_pred <- mean(sapply(list_mice_MASI20_OU_95width, sum))
    list_mice_MASI20_OU_coverge <- sapply(list_mice_MASI20_OU_coverge, sum)
    CR_mice_MASI20_OU_pred <- mean(list_mice_MASI20_OU_coverge)
    sd_CR_mice_MASI20_OU_pred <- sd(list_mice_MASI20_OU_coverge)
  }
  
  #Performance of MASI5
  {
    list_mice_MASI5_RT_pred <- sapply(list_mice_MASI5_RT_pred, sum)
    mean_mice_MASI5_RT_pred <- mean(list_mice_MASI5_RT_pred)
    sd_mice_MASI5_RT_pred <- sd(list_mice_MASI5_RT_pred)
    list_mice_MASI5_RT_SE <- sapply(list_mice_MASI5_RT_SE, sum)
    mean_mice_MASI5_RT_SE <- mean(list_mice_MASI5_RT_SE)
    sd_mice_MASI5_RT_SE <- sd(list_mice_MASI5_RT_SE)
    CIlower_mice_MASI5_RT_pred <- mean_mice_MASI5_RT_pred - (2*mean_mice_MASI5_RT_SE)
    CIupper_mice_MASI5_RT_pred <- mean_mice_MASI5_RT_pred + (2*mean_mice_MASI5_RT_SE)
    mice_MASI5_RT_pred_max <- max(list_mice_MASI5_RT_pred) 
    mice_MASI5_RT_pred_min <- min(list_mice_MASI5_RT_pred)
    RB_mice_MASI5_RT_pred <- bias(RT_true, list_mice_MASI5_RT_pred)
    bias_RB_mice_MASI5_RT_pred <- list_mice_MASI5_RT_pred - RT_true
    sd_RB_mice_MASI5_RT_pred <- sd(bias_RB_mice_MASI5_RT_pred)    
    PB_mice_MASI5_RT_pred <- percent_bias(RT_true, list_mice_MASI5_RT_pred) *100
    RMSE_mice_MASI5_RT_pred <- rmse(RT_true, list_mice_MASI5_RT_pred)
    AW_mice_MASI5_RT_pred <- mean(sapply(list_mice_MASI5_RT_95width, sum))
    list_mice_MASI5_RT_coverge <- sapply(list_mice_MASI5_RT_coverge, sum)
    CR_mice_MASI5_RT_pred <- mean(list_mice_MASI5_RT_coverge)
    sd_CR_mice_MASI5_RT_pred <- sd(list_mice_MASI5_RT_coverge)
    
    list_mice_MASI5_UT_pred <- sapply(list_mice_MASI5_UT_pred, sum)
    mean_mice_MASI5_UT_pred <- mean(list_mice_MASI5_UT_pred)
    sd_mice_MASI5_UT_pred <- sd(list_mice_MASI5_UT_pred)
    list_mice_MASI5_UT_SE <- sapply(list_mice_MASI5_UT_SE, sum)
    mean_mice_MASI5_UT_SE <- mean(list_mice_MASI5_UT_SE)
    sd_mice_MASI5_UT_SE <- sd(list_mice_MASI5_UT_SE)
    CIlower_mice_MASI5_UT_pred <- mean_mice_MASI5_UT_pred - (2*mean_mice_MASI5_UT_SE)
    CIupper_mice_MASI5_UT_pred <- mean_mice_MASI5_UT_pred + (2*mean_mice_MASI5_UT_SE)
    mice_MASI5_UT_pred_max <- max(list_mice_MASI5_UT_pred) 
    mice_MASI5_UT_pred_min <- min(list_mice_MASI5_UT_pred)
    RB_mice_MASI5_UT_pred <- bias(UT_true, list_mice_MASI5_UT_pred)
    bias_RB_mice_MASI5_UT_pred <- list_mice_MASI5_UT_pred - UT_true
    sd_RB_mice_MASI5_UT_pred <- sd(bias_RB_mice_MASI5_UT_pred)    
    PB_mice_MASI5_UT_pred <- percent_bias(UT_true, list_mice_MASI5_UT_pred) *100
    RMSE_mice_MASI5_UT_pred <- rmse(UT_true, list_mice_MASI5_UT_pred)
    AW_mice_MASI5_UT_pred <- mean(sapply(list_mice_MASI5_UT_95width, sum))
    list_mice_MASI5_UT_coverge <- sapply(list_mice_MASI5_UT_coverge, sum)
    CR_mice_MASI5_UT_pred <- mean(list_mice_MASI5_UT_coverge)
    sd_CR_mice_MASI5_UT_pred <- sd(list_mice_MASI5_UT_coverge)
    
    list_mice_MASI5_SW_pred <- sapply(list_mice_MASI5_SW_pred, sum)
    mean_mice_MASI5_SW_pred <- mean(list_mice_MASI5_SW_pred)
    sd_mice_MASI5_SW_pred <- sd(list_mice_MASI5_SW_pred)
    list_mice_MASI5_SW_SE <- sapply(list_mice_MASI5_SW_SE, sum)
    mean_mice_MASI5_SW_SE <- mean(list_mice_MASI5_SW_SE)
    sd_mice_MASI5_SW_SE <- sd(list_mice_MASI5_SW_SE)
    CIlower_mice_MASI5_SW_pred <- mean_mice_MASI5_SW_pred - (2*mean_mice_MASI5_SW_SE)
    CIupper_mice_MASI5_SW_pred <- mean_mice_MASI5_SW_pred + (2*mean_mice_MASI5_SW_SE)
    mice_MASI5_SW_pred_max <- max(list_mice_MASI5_SW_pred) 
    mice_MASI5_SW_pred_min <- min(list_mice_MASI5_SW_pred)
    RB_mice_MASI5_SW_pred <- bias(SW_true, list_mice_MASI5_SW_pred)
    bias_RB_mice_MASI5_SW_pred <- list_mice_MASI5_SW_pred - SW_true
    sd_RB_mice_MASI5_SW_pred <- sd(bias_RB_mice_MASI5_SW_pred)    
    PB_mice_MASI5_SW_pred <- percent_bias(SW_true, list_mice_MASI5_SW_pred) *100
    RMSE_mice_MASI5_SW_pred <- rmse(SW_true, list_mice_MASI5_SW_pred)
    AW_mice_MASI5_SW_pred <- mean(sapply(list_mice_MASI5_SW_95width, sum))
    list_mice_MASI5_SW_coverge <- sapply(list_mice_MASI5_SW_coverge, sum)
    CR_mice_MASI5_SW_pred <- mean(list_mice_MASI5_SW_coverge)
    sd_CR_mice_MASI5_SW_pred <- sd(list_mice_MASI5_SW_coverge)
    
    list_mice_MASI5_OU_pred <- sapply(list_mice_MASI5_OU_pred, sum)
    mean_mice_MASI5_OU_pred <- mean(list_mice_MASI5_OU_pred)
    sd_mice_MASI5_OU_pred <- sd(list_mice_MASI5_OU_pred)
    list_mice_MASI5_OU_SE <- sapply(list_mice_MASI5_OU_SE, sum)
    mean_mice_MASI5_OU_SE <- mean(list_mice_MASI5_OU_SE)
    sd_mice_MASI5_OU_SE <- sd(list_mice_MASI5_OU_SE)
    CIlower_mice_MASI5_OU_pred <- mean_mice_MASI5_OU_pred - (2*mean_mice_MASI5_OU_SE)
    CIupper_mice_MASI5_OU_pred <- mean_mice_MASI5_OU_pred + (2*mean_mice_MASI5_OU_SE)
    mice_MASI5_OU_pred_max <- max(list_mice_MASI5_OU_pred) 
    mice_MASI5_OU_pred_min <- min(list_mice_MASI5_OU_pred)
    RB_mice_MASI5_OU_pred <- bias(OU_true, list_mice_MASI5_OU_pred)
    bias_RB_mice_MASI5_OU_pred <- list_mice_MASI5_OU_pred - OU_true
    sd_RB_mice_MASI5_OU_pred <- sd(bias_RB_mice_MASI5_OU_pred)    
    PB_mice_MASI5_OU_pred <- percent_bias(OU_true, list_mice_MASI5_OU_pred) *100
    RMSE_mice_MASI5_OU_pred <- rmse(OU_true, list_mice_MASI5_OU_pred)
    AW_mice_MASI5_OU_pred <- mean(sapply(list_mice_MASI5_OU_95width, sum))
    list_mice_MASI5_OU_coverge <- sapply(list_mice_MASI5_OU_coverge, sum)
    CR_mice_MASI5_OU_pred <- mean(list_mice_MASI5_OU_coverge)
    sd_CR_mice_MASI5_OU_pred <- sd(list_mice_MASI5_OU_coverge)
  }
}

#multinom Performance of SI
{
  #Performance of UASI80
  {
    list_multinom_UASI80_RT_pred <- sapply(list_multinom_UASI80_RT_pred, sum)
    mean_multinom_UASI80_RT_pred <- mean(list_multinom_UASI80_RT_pred)
    sd_multinom_UASI80_RT_pred <- sd(list_multinom_UASI80_RT_pred)
    list_multinom_UASI80_RT_SE <- sapply(list_multinom_UASI80_RT_SE, sum)
    mean_multinom_UASI80_RT_SE <- mean(list_multinom_UASI80_RT_SE)
    sd_multinom_UASI80_RT_SE <- sd(list_multinom_UASI80_RT_SE)
    CIlower_multinom_UASI80_RT_pred <- mean_multinom_UASI80_RT_pred - (2*mean_multinom_UASI80_RT_SE)
    CIupper_multinom_UASI80_RT_pred <- mean_multinom_UASI80_RT_pred + (2*mean_multinom_UASI80_RT_SE)
    multinom_UASI80_RT_pred_max <- max(list_multinom_UASI80_RT_pred) 
    multinom_UASI80_RT_pred_min <- min(list_multinom_UASI80_RT_pred)
    RB_multinom_UASI80_RT_pred <- bias(RT_true, list_multinom_UASI80_RT_pred)
    bias_RB_multinom_UASI80_RT_pred <- list_multinom_UASI80_RT_pred - RT_true
    sd_RB_multinom_UASI80_RT_pred <- sd(bias_RB_multinom_UASI80_RT_pred)    
    PB_multinom_UASI80_RT_pred <- percent_bias(RT_true, list_multinom_UASI80_RT_pred) *100
    RMSE_multinom_UASI80_RT_pred <- rmse(RT_true, list_multinom_UASI80_RT_pred)
    AW_multinom_UASI80_RT_pred <- mean(sapply(list_multinom_UASI80_RT_95width, sum))
    list_multinom_UASI80_RT_coverge <- sapply(list_multinom_UASI80_RT_coverge, sum)
    CR_multinom_UASI80_RT_pred <- mean(list_multinom_UASI80_RT_coverge)
    sd_CR_multinom_UASI80_RT_pred <- sd(list_multinom_UASI80_RT_coverge)
    
    list_multinom_UASI80_UT_pred <- sapply(list_multinom_UASI80_UT_pred, sum)
    mean_multinom_UASI80_UT_pred <- mean(list_multinom_UASI80_UT_pred)
    sd_multinom_UASI80_UT_pred <- sd(list_multinom_UASI80_UT_pred)
    list_multinom_UASI80_UT_SE <- sapply(list_multinom_UASI80_UT_SE, sum)
    mean_multinom_UASI80_UT_SE <- mean(list_multinom_UASI80_UT_SE)
    sd_multinom_UASI80_UT_SE <- sd(list_multinom_UASI80_UT_SE)
    CIlower_multinom_UASI80_UT_pred <- mean_multinom_UASI80_UT_pred - (2*mean_multinom_UASI80_UT_SE)
    CIupper_multinom_UASI80_UT_pred <- mean_multinom_UASI80_UT_pred + (2*mean_multinom_UASI80_UT_SE)
    multinom_UASI80_UT_pred_max <- max(list_multinom_UASI80_UT_pred) 
    multinom_UASI80_UT_pred_min <- min(list_multinom_UASI80_UT_pred)
    RB_multinom_UASI80_UT_pred <- bias(UT_true, list_multinom_UASI80_UT_pred)
    bias_RB_multinom_UASI80_UT_pred <- list_multinom_UASI80_UT_pred - UT_true
    sd_RB_multinom_UASI80_UT_pred <- sd(bias_RB_multinom_UASI80_UT_pred)    
    PB_multinom_UASI80_UT_pred <- percent_bias(UT_true, list_multinom_UASI80_UT_pred) *100
    RMSE_multinom_UASI80_UT_pred <- rmse(UT_true, list_multinom_UASI80_UT_pred)
    AW_multinom_UASI80_UT_pred <- mean(sapply(list_multinom_UASI80_UT_95width, sum))
    list_multinom_UASI80_UT_coverge <- sapply(list_multinom_UASI80_UT_coverge, sum)
    CR_multinom_UASI80_UT_pred <- mean(list_multinom_UASI80_UT_coverge)
    sd_CR_multinom_UASI80_UT_pred <- sd(list_multinom_UASI80_UT_coverge)
    
    list_multinom_UASI80_SW_pred <- sapply(list_multinom_UASI80_SW_pred, sum)
    mean_multinom_UASI80_SW_pred <- mean(list_multinom_UASI80_SW_pred)
    sd_multinom_UASI80_SW_pred <- sd(list_multinom_UASI80_SW_pred)
    list_multinom_UASI80_SW_SE <- sapply(list_multinom_UASI80_SW_SE, sum)
    mean_multinom_UASI80_SW_SE <- mean(list_multinom_UASI80_SW_SE)
    sd_multinom_UASI80_SW_SE <- sd(list_multinom_UASI80_SW_SE)
    CIlower_multinom_UASI80_SW_pred <- mean_multinom_UASI80_SW_pred - (2*mean_multinom_UASI80_SW_SE)
    CIupper_multinom_UASI80_SW_pred <- mean_multinom_UASI80_SW_pred + (2*mean_multinom_UASI80_SW_SE)
    multinom_UASI80_SW_pred_max <- max(list_multinom_UASI80_SW_pred) 
    multinom_UASI80_SW_pred_min <- min(list_multinom_UASI80_SW_pred)
    RB_multinom_UASI80_SW_pred <- bias(SW_true, list_multinom_UASI80_SW_pred)
    bias_RB_multinom_UASI80_SW_pred <- list_multinom_UASI80_SW_pred - SW_true
    sd_RB_multinom_UASI80_SW_pred <- sd(bias_RB_multinom_UASI80_SW_pred)    
    PB_multinom_UASI80_SW_pred <- percent_bias(SW_true, list_multinom_UASI80_SW_pred) *100
    RMSE_multinom_UASI80_SW_pred <- rmse(SW_true, list_multinom_UASI80_SW_pred)
    AW_multinom_UASI80_SW_pred <- mean(sapply(list_multinom_UASI80_SW_95width, sum))
    list_multinom_UASI80_SW_coverge <- sapply(list_multinom_UASI80_SW_coverge, sum)
    CR_multinom_UASI80_SW_pred <- mean(list_multinom_UASI80_SW_coverge)
    sd_CR_multinom_UASI80_SW_pred <- sd(list_multinom_UASI80_SW_coverge)
    
    list_multinom_UASI80_OU_pred <- sapply(list_multinom_UASI80_OU_pred, sum)
    mean_multinom_UASI80_OU_pred <- mean(list_multinom_UASI80_OU_pred)
    sd_multinom_UASI80_OU_pred <- sd(list_multinom_UASI80_OU_pred)
    list_multinom_UASI80_OU_SE <- sapply(list_multinom_UASI80_OU_SE, sum)
    mean_multinom_UASI80_OU_SE <- mean(list_multinom_UASI80_OU_SE)
    sd_multinom_UASI80_OU_SE <- sd(list_multinom_UASI80_OU_SE)
    CIlower_multinom_UASI80_OU_pred <- mean_multinom_UASI80_OU_pred - (2*mean_multinom_UASI80_OU_SE)
    CIupper_multinom_UASI80_OU_pred <- mean_multinom_UASI80_OU_pred + (2*mean_multinom_UASI80_OU_SE)
    multinom_UASI80_OU_pred_max <- max(list_multinom_UASI80_OU_pred) 
    multinom_UASI80_OU_pred_min <- min(list_multinom_UASI80_OU_pred)
    RB_multinom_UASI80_OU_pred <- bias(OU_true, list_multinom_UASI80_OU_pred)
    bias_RB_multinom_UASI80_OU_pred <- list_multinom_UASI80_OU_pred - OU_true
    sd_RB_multinom_UASI80_OU_pred <- sd(bias_RB_multinom_UASI80_OU_pred)    
    PB_multinom_UASI80_OU_pred <- percent_bias(OU_true, list_multinom_UASI80_OU_pred) *100
    RMSE_multinom_UASI80_OU_pred <- rmse(OU_true, list_multinom_UASI80_OU_pred)
    AW_multinom_UASI80_OU_pred <- mean(sapply(list_multinom_UASI80_OU_95width, sum))
    list_multinom_UASI80_OU_coverge <- sapply(list_multinom_UASI80_OU_coverge, sum)
    CR_multinom_UASI80_OU_pred <- mean(list_multinom_UASI80_OU_coverge)
    sd_CR_multinom_UASI80_OU_pred <- sd(list_multinom_UASI80_OU_coverge)
  }
  
  #Performance of UASI50
  {
    list_multinom_UASI50_RT_pred <- sapply(list_multinom_UASI50_RT_pred, sum)
    mean_multinom_UASI50_RT_pred <- mean(list_multinom_UASI50_RT_pred)
    sd_multinom_UASI50_RT_pred <- sd(list_multinom_UASI50_RT_pred)
    list_multinom_UASI50_RT_SE <- sapply(list_multinom_UASI50_RT_SE, sum)
    mean_multinom_UASI50_RT_SE <- mean(list_multinom_UASI50_RT_SE)
    sd_multinom_UASI50_RT_SE <- sd(list_multinom_UASI50_RT_SE)
    CIlower_multinom_UASI50_RT_pred <- mean_multinom_UASI50_RT_pred - (2*mean_multinom_UASI50_RT_SE)
    CIupper_multinom_UASI50_RT_pred <- mean_multinom_UASI50_RT_pred + (2*mean_multinom_UASI50_RT_SE)
    multinom_UASI50_RT_pred_max <- max(list_multinom_UASI50_RT_pred) 
    multinom_UASI50_RT_pred_min <- min(list_multinom_UASI50_RT_pred)
    RB_multinom_UASI50_RT_pred <- bias(RT_true, list_multinom_UASI50_RT_pred)
    bias_RB_multinom_UASI50_RT_pred <- list_multinom_UASI50_RT_pred - RT_true
    sd_RB_multinom_UASI50_RT_pred <- sd(bias_RB_multinom_UASI50_RT_pred)    
    PB_multinom_UASI50_RT_pred <- percent_bias(RT_true, list_multinom_UASI50_RT_pred) *100
    RMSE_multinom_UASI50_RT_pred <- rmse(RT_true, list_multinom_UASI50_RT_pred)
    AW_multinom_UASI50_RT_pred <- mean(sapply(list_multinom_UASI50_RT_95width, sum))
    list_multinom_UASI50_RT_coverge <- sapply(list_multinom_UASI50_RT_coverge, sum)
    CR_multinom_UASI50_RT_pred <- mean(list_multinom_UASI50_RT_coverge)
    sd_CR_multinom_UASI50_RT_pred <- sd(list_multinom_UASI50_RT_coverge)
    
    list_multinom_UASI50_UT_pred <- sapply(list_multinom_UASI50_UT_pred, sum)
    mean_multinom_UASI50_UT_pred <- mean(list_multinom_UASI50_UT_pred)
    sd_multinom_UASI50_UT_pred <- sd(list_multinom_UASI50_UT_pred)
    list_multinom_UASI50_UT_SE <- sapply(list_multinom_UASI50_UT_SE, sum)
    mean_multinom_UASI50_UT_SE <- mean(list_multinom_UASI50_UT_SE)
    sd_multinom_UASI50_UT_SE <- sd(list_multinom_UASI50_UT_SE)
    CIlower_multinom_UASI50_UT_pred <- mean_multinom_UASI50_UT_pred - (2*mean_multinom_UASI50_UT_SE)
    CIupper_multinom_UASI50_UT_pred <- mean_multinom_UASI50_UT_pred + (2*mean_multinom_UASI50_UT_SE)
    multinom_UASI50_UT_pred_max <- max(list_multinom_UASI50_UT_pred) 
    multinom_UASI50_UT_pred_min <- min(list_multinom_UASI50_UT_pred)
    RB_multinom_UASI50_UT_pred <- bias(UT_true, list_multinom_UASI50_UT_pred)
    bias_RB_multinom_UASI50_UT_pred <- list_multinom_UASI50_UT_pred - UT_true
    sd_RB_multinom_UASI50_UT_pred <- sd(bias_RB_multinom_UASI50_UT_pred)    
    PB_multinom_UASI50_UT_pred <- percent_bias(UT_true, list_multinom_UASI50_UT_pred) *100
    RMSE_multinom_UASI50_UT_pred <- rmse(UT_true, list_multinom_UASI50_UT_pred)
    AW_multinom_UASI50_UT_pred <- mean(sapply(list_multinom_UASI50_UT_95width, sum))
    list_multinom_UASI50_UT_coverge <- sapply(list_multinom_UASI50_UT_coverge, sum)
    CR_multinom_UASI50_UT_pred <- mean(list_multinom_UASI50_UT_coverge)
    sd_CR_multinom_UASI50_UT_pred <- sd(list_multinom_UASI50_UT_coverge)
    
    list_multinom_UASI50_SW_pred <- sapply(list_multinom_UASI50_SW_pred, sum)
    mean_multinom_UASI50_SW_pred <- mean(list_multinom_UASI50_SW_pred)
    sd_multinom_UASI50_SW_pred <- sd(list_multinom_UASI50_SW_pred)
    list_multinom_UASI50_SW_SE <- sapply(list_multinom_UASI50_SW_SE, sum)
    mean_multinom_UASI50_SW_SE <- mean(list_multinom_UASI50_SW_SE)
    sd_multinom_UASI50_SW_SE <- sd(list_multinom_UASI50_SW_SE)
    CIlower_multinom_UASI50_SW_pred <- mean_multinom_UASI50_SW_pred - (2*mean_multinom_UASI50_SW_SE)
    CIupper_multinom_UASI50_SW_pred <- mean_multinom_UASI50_SW_pred + (2*mean_multinom_UASI50_SW_SE)
    multinom_UASI50_SW_pred_max <- max(list_multinom_UASI50_SW_pred) 
    multinom_UASI50_SW_pred_min <- min(list_multinom_UASI50_SW_pred)
    RB_multinom_UASI50_SW_pred <- bias(SW_true, list_multinom_UASI50_SW_pred)
    bias_RB_multinom_UASI50_SW_pred <- list_multinom_UASI50_SW_pred - SW_true
    sd_RB_multinom_UASI50_SW_pred <- sd(bias_RB_multinom_UASI50_SW_pred)    
    PB_multinom_UASI50_SW_pred <- percent_bias(SW_true, list_multinom_UASI50_SW_pred) *100
    RMSE_multinom_UASI50_SW_pred <- rmse(SW_true, list_multinom_UASI50_SW_pred)
    AW_multinom_UASI50_SW_pred <- mean(sapply(list_multinom_UASI50_SW_95width, sum))
    list_multinom_UASI50_SW_coverge <- sapply(list_multinom_UASI50_SW_coverge, sum)
    CR_multinom_UASI50_SW_pred <- mean(list_multinom_UASI50_SW_coverge)
    sd_CR_multinom_UASI50_SW_pred <- sd(list_multinom_UASI50_SW_coverge)
    
    list_multinom_UASI50_OU_pred <- sapply(list_multinom_UASI50_OU_pred, sum)
    mean_multinom_UASI50_OU_pred <- mean(list_multinom_UASI50_OU_pred)
    sd_multinom_UASI50_OU_pred <- sd(list_multinom_UASI50_OU_pred)
    list_multinom_UASI50_OU_SE <- sapply(list_multinom_UASI50_OU_SE, sum)
    mean_multinom_UASI50_OU_SE <- mean(list_multinom_UASI50_OU_SE)
    sd_multinom_UASI50_OU_SE <- sd(list_multinom_UASI50_OU_SE)
    CIlower_multinom_UASI50_OU_pred <- mean_multinom_UASI50_OU_pred - (2*mean_multinom_UASI50_OU_SE)
    CIupper_multinom_UASI50_OU_pred <- mean_multinom_UASI50_OU_pred + (2*mean_multinom_UASI50_OU_SE)
    multinom_UASI50_OU_pred_max <- max(list_multinom_UASI50_OU_pred) 
    multinom_UASI50_OU_pred_min <- min(list_multinom_UASI50_OU_pred)
    RB_multinom_UASI50_OU_pred <- bias(OU_true, list_multinom_UASI50_OU_pred)
    bias_RB_multinom_UASI50_OU_pred <- list_multinom_UASI50_OU_pred - OU_true
    sd_RB_multinom_UASI50_OU_pred <- sd(bias_RB_multinom_UASI50_OU_pred)    
    PB_multinom_UASI50_OU_pred <- percent_bias(OU_true, list_multinom_UASI50_OU_pred) *100
    RMSE_multinom_UASI50_OU_pred <- rmse(OU_true, list_multinom_UASI50_OU_pred)
    AW_multinom_UASI50_OU_pred <- mean(sapply(list_multinom_UASI50_OU_95width, sum))
    list_multinom_UASI50_OU_coverge <- sapply(list_multinom_UASI50_OU_coverge, sum)
    CR_multinom_UASI50_OU_pred <- mean(list_multinom_UASI50_OU_coverge)
    sd_CR_multinom_UASI50_OU_pred <- sd(list_multinom_UASI50_OU_coverge)
  }
  
  #Performance of UASI20
  {
    list_multinom_UASI20_RT_pred <- sapply(list_multinom_UASI20_RT_pred, sum)
    mean_multinom_UASI20_RT_pred <- mean(list_multinom_UASI20_RT_pred)
    sd_multinom_UASI20_RT_pred <- sd(list_multinom_UASI20_RT_pred)
    list_multinom_UASI20_RT_SE <- sapply(list_multinom_UASI20_RT_SE, sum)
    mean_multinom_UASI20_RT_SE <- mean(list_multinom_UASI20_RT_SE)
    sd_multinom_UASI20_RT_SE <- sd(list_multinom_UASI20_RT_SE)
    CIlower_multinom_UASI20_RT_pred <- mean_multinom_UASI20_RT_pred - (2*mean_multinom_UASI20_RT_SE)
    CIupper_multinom_UASI20_RT_pred <- mean_multinom_UASI20_RT_pred + (2*mean_multinom_UASI20_RT_SE)
    multinom_UASI20_RT_pred_max <- max(list_multinom_UASI20_RT_pred) 
    multinom_UASI20_RT_pred_min <- min(list_multinom_UASI20_RT_pred)
    RB_multinom_UASI20_RT_pred <- bias(RT_true, list_multinom_UASI20_RT_pred)
    bias_RB_multinom_UASI20_RT_pred <- list_multinom_UASI20_RT_pred - RT_true
    sd_RB_multinom_UASI20_RT_pred <- sd(bias_RB_multinom_UASI20_RT_pred)    
    PB_multinom_UASI20_RT_pred <- percent_bias(RT_true, list_multinom_UASI20_RT_pred) *100
    RMSE_multinom_UASI20_RT_pred <- rmse(RT_true, list_multinom_UASI20_RT_pred)
    AW_multinom_UASI20_RT_pred <- mean(sapply(list_multinom_UASI20_RT_95width, sum))
    list_multinom_UASI20_RT_coverge <- sapply(list_multinom_UASI20_RT_coverge, sum)
    CR_multinom_UASI20_RT_pred <- mean(list_multinom_UASI20_RT_coverge)
    sd_CR_multinom_UASI20_RT_pred <- sd(list_multinom_UASI20_RT_coverge)
    
    list_multinom_UASI20_UT_pred <- sapply(list_multinom_UASI20_UT_pred, sum)
    mean_multinom_UASI20_UT_pred <- mean(list_multinom_UASI20_UT_pred)
    sd_multinom_UASI20_UT_pred <- sd(list_multinom_UASI20_UT_pred)
    list_multinom_UASI20_UT_SE <- sapply(list_multinom_UASI20_UT_SE, sum)
    mean_multinom_UASI20_UT_SE <- mean(list_multinom_UASI20_UT_SE)
    sd_multinom_UASI20_UT_SE <- sd(list_multinom_UASI20_UT_SE)
    CIlower_multinom_UASI20_UT_pred <- mean_multinom_UASI20_UT_pred - (2*mean_multinom_UASI20_UT_SE)
    CIupper_multinom_UASI20_UT_pred <- mean_multinom_UASI20_UT_pred + (2*mean_multinom_UASI20_UT_SE)
    multinom_UASI20_UT_pred_max <- max(list_multinom_UASI20_UT_pred) 
    multinom_UASI20_UT_pred_min <- min(list_multinom_UASI20_UT_pred)
    RB_multinom_UASI20_UT_pred <- bias(UT_true, list_multinom_UASI20_UT_pred)
    bias_RB_multinom_UASI20_UT_pred <- list_multinom_UASI20_UT_pred - UT_true
    sd_RB_multinom_UASI20_UT_pred <- sd(bias_RB_multinom_UASI20_UT_pred)    
    PB_multinom_UASI20_UT_pred <- percent_bias(UT_true, list_multinom_UASI20_UT_pred) *100
    RMSE_multinom_UASI20_UT_pred <- rmse(UT_true, list_multinom_UASI20_UT_pred)
    AW_multinom_UASI20_UT_pred <- mean(sapply(list_multinom_UASI20_UT_95width, sum))
    list_multinom_UASI20_UT_coverge <- sapply(list_multinom_UASI20_UT_coverge, sum)
    CR_multinom_UASI20_UT_pred <- mean(list_multinom_UASI20_UT_coverge)
    sd_CR_multinom_UASI20_UT_pred <- sd(list_multinom_UASI20_UT_coverge)
    
    list_multinom_UASI20_SW_pred <- sapply(list_multinom_UASI20_SW_pred, sum)
    mean_multinom_UASI20_SW_pred <- mean(list_multinom_UASI20_SW_pred)
    sd_multinom_UASI20_SW_pred <- sd(list_multinom_UASI20_SW_pred)
    list_multinom_UASI20_SW_SE <- sapply(list_multinom_UASI20_SW_SE, sum)
    mean_multinom_UASI20_SW_SE <- mean(list_multinom_UASI20_SW_SE)
    sd_multinom_UASI20_SW_SE <- sd(list_multinom_UASI20_SW_SE)
    CIlower_multinom_UASI20_SW_pred <- mean_multinom_UASI20_SW_pred - (2*mean_multinom_UASI20_SW_SE)
    CIupper_multinom_UASI20_SW_pred <- mean_multinom_UASI20_SW_pred + (2*mean_multinom_UASI20_SW_SE)
    multinom_UASI20_SW_pred_max <- max(list_multinom_UASI20_SW_pred) 
    multinom_UASI20_SW_pred_min <- min(list_multinom_UASI20_SW_pred)
    RB_multinom_UASI20_SW_pred <- bias(SW_true, list_multinom_UASI20_SW_pred)
    bias_RB_multinom_UASI20_SW_pred <- list_multinom_UASI20_SW_pred - SW_true
    sd_RB_multinom_UASI20_SW_pred <- sd(bias_RB_multinom_UASI20_SW_pred)    
    PB_multinom_UASI20_SW_pred <- percent_bias(SW_true, list_multinom_UASI20_SW_pred) *100
    RMSE_multinom_UASI20_SW_pred <- rmse(SW_true, list_multinom_UASI20_SW_pred)
    AW_multinom_UASI20_SW_pred <- mean(sapply(list_multinom_UASI20_SW_95width, sum))
    list_multinom_UASI20_SW_coverge <- sapply(list_multinom_UASI20_SW_coverge, sum)
    CR_multinom_UASI20_SW_pred <- mean(list_multinom_UASI20_SW_coverge)
    sd_CR_multinom_UASI20_SW_pred <- sd(list_multinom_UASI20_SW_coverge)
    
    list_multinom_UASI20_OU_pred <- sapply(list_multinom_UASI20_OU_pred, sum)
    mean_multinom_UASI20_OU_pred <- mean(list_multinom_UASI20_OU_pred)
    sd_multinom_UASI20_OU_pred <- sd(list_multinom_UASI20_OU_pred)
    list_multinom_UASI20_OU_SE <- sapply(list_multinom_UASI20_OU_SE, sum)
    mean_multinom_UASI20_OU_SE <- mean(list_multinom_UASI20_OU_SE)
    sd_multinom_UASI20_OU_SE <- sd(list_multinom_UASI20_OU_SE)
    CIlower_multinom_UASI20_OU_pred <- mean_multinom_UASI20_OU_pred - (2*mean_multinom_UASI20_OU_SE)
    CIupper_multinom_UASI20_OU_pred <- mean_multinom_UASI20_OU_pred + (2*mean_multinom_UASI20_OU_SE)
    multinom_UASI20_OU_pred_max <- max(list_multinom_UASI20_OU_pred) 
    multinom_UASI20_OU_pred_min <- min(list_multinom_UASI20_OU_pred)
    RB_multinom_UASI20_OU_pred <- bias(OU_true, list_multinom_UASI20_OU_pred)
    bias_RB_multinom_UASI20_OU_pred <- list_multinom_UASI20_OU_pred - OU_true
    sd_RB_multinom_UASI20_OU_pred <- sd(bias_RB_multinom_UASI20_OU_pred)    
    PB_multinom_UASI20_OU_pred <- percent_bias(OU_true, list_multinom_UASI20_OU_pred) *100
    RMSE_multinom_UASI20_OU_pred <- rmse(OU_true, list_multinom_UASI20_OU_pred)
    AW_multinom_UASI20_OU_pred <- mean(sapply(list_multinom_UASI20_OU_95width, sum))
    list_multinom_UASI20_OU_coverge <- sapply(list_multinom_UASI20_OU_coverge, sum)
    CR_multinom_UASI20_OU_pred <- mean(list_multinom_UASI20_OU_coverge)
    sd_CR_multinom_UASI20_OU_pred <- sd(list_multinom_UASI20_OU_coverge)
  }
  
  #Performance of UASI5
  {
    list_multinom_UASI5_RT_pred <- sapply(list_multinom_UASI5_RT_pred, sum)
    mean_multinom_UASI5_RT_pred <- mean(list_multinom_UASI5_RT_pred)
    sd_multinom_UASI5_RT_pred <- sd(list_multinom_UASI5_RT_pred)
    list_multinom_UASI5_RT_SE <- sapply(list_multinom_UASI5_RT_SE, sum)
    mean_multinom_UASI5_RT_SE <- mean(list_multinom_UASI5_RT_SE)
    sd_multinom_UASI5_RT_SE <- sd(list_multinom_UASI5_RT_SE)
    CIlower_multinom_UASI5_RT_pred <- mean_multinom_UASI5_RT_pred - (2*mean_multinom_UASI5_RT_SE)
    CIupper_multinom_UASI5_RT_pred <- mean_multinom_UASI5_RT_pred + (2*mean_multinom_UASI5_RT_SE)
    multinom_UASI5_RT_pred_max <- max(list_multinom_UASI5_RT_pred) 
    multinom_UASI5_RT_pred_min <- min(list_multinom_UASI5_RT_pred)
    RB_multinom_UASI5_RT_pred <- bias(RT_true, list_multinom_UASI5_RT_pred)
    bias_RB_multinom_UASI5_RT_pred <- list_multinom_UASI5_RT_pred - RT_true
    sd_RB_multinom_UASI5_RT_pred <- sd(bias_RB_multinom_UASI5_RT_pred)    
    PB_multinom_UASI5_RT_pred <- percent_bias(RT_true, list_multinom_UASI5_RT_pred) *100
    RMSE_multinom_UASI5_RT_pred <- rmse(RT_true, list_multinom_UASI5_RT_pred)
    AW_multinom_UASI5_RT_pred <- mean(sapply(list_multinom_UASI5_RT_95width, sum))
    list_multinom_UASI5_RT_coverge <- sapply(list_multinom_UASI5_RT_coverge, sum)
    CR_multinom_UASI5_RT_pred <- mean(list_multinom_UASI5_RT_coverge)
    sd_CR_multinom_UASI5_RT_pred <- sd(list_multinom_UASI5_RT_coverge)
    
    list_multinom_UASI5_UT_pred <- sapply(list_multinom_UASI5_UT_pred, sum)
    mean_multinom_UASI5_UT_pred <- mean(list_multinom_UASI5_UT_pred)
    sd_multinom_UASI5_UT_pred <- sd(list_multinom_UASI5_UT_pred)
    list_multinom_UASI5_UT_SE <- sapply(list_multinom_UASI5_UT_SE, sum)
    mean_multinom_UASI5_UT_SE <- mean(list_multinom_UASI5_UT_SE)
    sd_multinom_UASI5_UT_SE <- sd(list_multinom_UASI5_UT_SE)
    CIlower_multinom_UASI5_UT_pred <- mean_multinom_UASI5_UT_pred - (2*mean_multinom_UASI5_UT_SE)
    CIupper_multinom_UASI5_UT_pred <- mean_multinom_UASI5_UT_pred + (2*mean_multinom_UASI5_UT_SE)
    multinom_UASI5_UT_pred_max <- max(list_multinom_UASI5_UT_pred) 
    multinom_UASI5_UT_pred_min <- min(list_multinom_UASI5_UT_pred)
    RB_multinom_UASI5_UT_pred <- bias(UT_true, list_multinom_UASI5_UT_pred)
    bias_RB_multinom_UASI5_UT_pred <- list_multinom_UASI5_UT_pred - UT_true
    sd_RB_multinom_UASI5_UT_pred <- sd(bias_RB_multinom_UASI5_UT_pred)    
    PB_multinom_UASI5_UT_pred <- percent_bias(UT_true, list_multinom_UASI5_UT_pred) *100
    RMSE_multinom_UASI5_UT_pred <- rmse(UT_true, list_multinom_UASI5_UT_pred)
    AW_multinom_UASI5_UT_pred <- mean(sapply(list_multinom_UASI5_UT_95width, sum))
    list_multinom_UASI5_UT_coverge <- sapply(list_multinom_UASI5_UT_coverge, sum)
    CR_multinom_UASI5_UT_pred <- mean(list_multinom_UASI5_UT_coverge)
    sd_CR_multinom_UASI5_UT_pred <- sd(list_multinom_UASI5_UT_coverge)
    
    list_multinom_UASI5_SW_pred <- sapply(list_multinom_UASI5_SW_pred, sum)
    mean_multinom_UASI5_SW_pred <- mean(list_multinom_UASI5_SW_pred)
    sd_multinom_UASI5_SW_pred <- sd(list_multinom_UASI5_SW_pred)
    list_multinom_UASI5_SW_SE <- sapply(list_multinom_UASI5_SW_SE, sum)
    mean_multinom_UASI5_SW_SE <- mean(list_multinom_UASI5_SW_SE)
    sd_multinom_UASI5_SW_SE <- sd(list_multinom_UASI5_SW_SE)
    CIlower_multinom_UASI5_SW_pred <- mean_multinom_UASI5_SW_pred - (2*mean_multinom_UASI5_SW_SE)
    CIupper_multinom_UASI5_SW_pred <- mean_multinom_UASI5_SW_pred + (2*mean_multinom_UASI5_SW_SE)
    multinom_UASI5_SW_pred_max <- max(list_multinom_UASI5_SW_pred) 
    multinom_UASI5_SW_pred_min <- min(list_multinom_UASI5_SW_pred)
    RB_multinom_UASI5_SW_pred <- bias(SW_true, list_multinom_UASI5_SW_pred)
    bias_RB_multinom_UASI5_SW_pred <- list_multinom_UASI5_SW_pred - SW_true
    sd_RB_multinom_UASI5_SW_pred <- sd(bias_RB_multinom_UASI5_SW_pred)    
    PB_multinom_UASI5_SW_pred <- percent_bias(SW_true, list_multinom_UASI5_SW_pred) *100
    RMSE_multinom_UASI5_SW_pred <- rmse(SW_true, list_multinom_UASI5_SW_pred)
    AW_multinom_UASI5_SW_pred <- mean(sapply(list_multinom_UASI5_SW_95width, sum))
    list_multinom_UASI5_SW_coverge <- sapply(list_multinom_UASI5_SW_coverge, sum)
    CR_multinom_UASI5_SW_pred <- mean(list_multinom_UASI5_SW_coverge)
    sd_CR_multinom_UASI5_SW_pred <- sd(list_multinom_UASI5_SW_coverge)
    
    list_multinom_UASI5_OU_pred <- sapply(list_multinom_UASI5_OU_pred, sum)
    mean_multinom_UASI5_OU_pred <- mean(list_multinom_UASI5_OU_pred)
    sd_multinom_UASI5_OU_pred <- sd(list_multinom_UASI5_OU_pred)
    list_multinom_UASI5_OU_SE <- sapply(list_multinom_UASI5_OU_SE, sum)
    mean_multinom_UASI5_OU_SE <- mean(list_multinom_UASI5_OU_SE)
    sd_multinom_UASI5_OU_SE <- sd(list_multinom_UASI5_OU_SE)
    CIlower_multinom_UASI5_OU_pred <- mean_multinom_UASI5_OU_pred - (2*mean_multinom_UASI5_OU_SE)
    CIupper_multinom_UASI5_OU_pred <- mean_multinom_UASI5_OU_pred + (2*mean_multinom_UASI5_OU_SE)
    multinom_UASI5_OU_pred_max <- max(list_multinom_UASI5_OU_pred) 
    multinom_UASI5_OU_pred_min <- min(list_multinom_UASI5_OU_pred)
    RB_multinom_UASI5_OU_pred <- bias(OU_true, list_multinom_UASI5_OU_pred)
    bias_RB_multinom_UASI5_OU_pred <- list_multinom_UASI5_OU_pred - OU_true
    sd_RB_multinom_UASI5_OU_pred <- sd(bias_RB_multinom_UASI5_OU_pred)    
    PB_multinom_UASI5_OU_pred <- percent_bias(OU_true, list_multinom_UASI5_OU_pred) *100
    RMSE_multinom_UASI5_OU_pred <- rmse(OU_true, list_multinom_UASI5_OU_pred)
    AW_multinom_UASI5_OU_pred <- mean(sapply(list_multinom_UASI5_OU_95width, sum))
    list_multinom_UASI5_OU_coverge <- sapply(list_multinom_UASI5_OU_coverge, sum)
    CR_multinom_UASI5_OU_pred <- mean(list_multinom_UASI5_OU_coverge)
    sd_CR_multinom_UASI5_OU_pred <- sd(list_multinom_UASI5_OU_coverge)
  }
  
  #Performance of MASI80
  {
    list_multinom_MASI80_RT_pred <- sapply(list_multinom_MASI80_RT_pred, sum)
    mean_multinom_MASI80_RT_pred <- mean(list_multinom_MASI80_RT_pred)
    sd_multinom_MASI80_RT_pred <- sd(list_multinom_MASI80_RT_pred)
    list_multinom_MASI80_RT_SE <- sapply(list_multinom_MASI80_RT_SE, sum)
    mean_multinom_MASI80_RT_SE <- mean(list_multinom_MASI80_RT_SE)
    sd_multinom_MASI80_RT_SE <- sd(list_multinom_MASI80_RT_SE)
    CIlower_multinom_MASI80_RT_pred <- mean_multinom_MASI80_RT_pred - (2*mean_multinom_MASI80_RT_SE)
    CIupper_multinom_MASI80_RT_pred <- mean_multinom_MASI80_RT_pred + (2*mean_multinom_MASI80_RT_SE)
    multinom_MASI80_RT_pred_max <- max(list_multinom_MASI80_RT_pred) 
    multinom_MASI80_RT_pred_min <- min(list_multinom_MASI80_RT_pred)
    RB_multinom_MASI80_RT_pred <- bias(RT_true, list_multinom_MASI80_RT_pred)
    bias_RB_multinom_MASI80_RT_pred <- list_multinom_MASI80_RT_pred - RT_true
    sd_RB_multinom_MASI80_RT_pred <- sd(bias_RB_multinom_MASI80_RT_pred)    
    PB_multinom_MASI80_RT_pred <- percent_bias(RT_true, list_multinom_MASI80_RT_pred) *100
    RMSE_multinom_MASI80_RT_pred <- rmse(RT_true, list_multinom_MASI80_RT_pred)
    AW_multinom_MASI80_RT_pred <- mean(sapply(list_multinom_MASI80_RT_95width, sum))
    list_multinom_MASI80_RT_coverge <- sapply(list_multinom_MASI80_RT_coverge, sum)
    CR_multinom_MASI80_RT_pred <- mean(list_multinom_MASI80_RT_coverge)
    sd_CR_multinom_MASI80_RT_pred <- sd(list_multinom_MASI80_RT_coverge)
    
    list_multinom_MASI80_UT_pred <- sapply(list_multinom_MASI80_UT_pred, sum)
    mean_multinom_MASI80_UT_pred <- mean(list_multinom_MASI80_UT_pred)
    sd_multinom_MASI80_UT_pred <- sd(list_multinom_MASI80_UT_pred)
    list_multinom_MASI80_UT_SE <- sapply(list_multinom_MASI80_UT_SE, sum)
    mean_multinom_MASI80_UT_SE <- mean(list_multinom_MASI80_UT_SE)
    sd_multinom_MASI80_UT_SE <- sd(list_multinom_MASI80_UT_SE)
    CIlower_multinom_MASI80_UT_pred <- mean_multinom_MASI80_UT_pred - (2*mean_multinom_MASI80_UT_SE)
    CIupper_multinom_MASI80_UT_pred <- mean_multinom_MASI80_UT_pred + (2*mean_multinom_MASI80_UT_SE)
    multinom_MASI80_UT_pred_max <- max(list_multinom_MASI80_UT_pred) 
    multinom_MASI80_UT_pred_min <- min(list_multinom_MASI80_UT_pred)
    RB_multinom_MASI80_UT_pred <- bias(UT_true, list_multinom_MASI80_UT_pred)
    bias_RB_multinom_MASI80_UT_pred <- list_multinom_MASI80_UT_pred - UT_true
    sd_RB_multinom_MASI80_UT_pred <- sd(bias_RB_multinom_MASI80_UT_pred)    
    PB_multinom_MASI80_UT_pred <- percent_bias(UT_true, list_multinom_MASI80_UT_pred) *100
    RMSE_multinom_MASI80_UT_pred <- rmse(UT_true, list_multinom_MASI80_UT_pred)
    AW_multinom_MASI80_UT_pred <- mean(sapply(list_multinom_MASI80_UT_95width, sum))
    list_multinom_MASI80_UT_coverge <- sapply(list_multinom_MASI80_UT_coverge, sum)
    CR_multinom_MASI80_UT_pred <- mean(list_multinom_MASI80_UT_coverge)
    sd_CR_multinom_MASI80_UT_pred <- sd(list_multinom_MASI80_UT_coverge)
    
    list_multinom_MASI80_SW_pred <- sapply(list_multinom_MASI80_SW_pred, sum)
    mean_multinom_MASI80_SW_pred <- mean(list_multinom_MASI80_SW_pred)
    sd_multinom_MASI80_SW_pred <- sd(list_multinom_MASI80_SW_pred)
    list_multinom_MASI80_SW_SE <- sapply(list_multinom_MASI80_SW_SE, sum)
    mean_multinom_MASI80_SW_SE <- mean(list_multinom_MASI80_SW_SE)
    sd_multinom_MASI80_SW_SE <- sd(list_multinom_MASI80_SW_SE)
    CIlower_multinom_MASI80_SW_pred <- mean_multinom_MASI80_SW_pred - (2*mean_multinom_MASI80_SW_SE)
    CIupper_multinom_MASI80_SW_pred <- mean_multinom_MASI80_SW_pred + (2*mean_multinom_MASI80_SW_SE)
    multinom_MASI80_SW_pred_max <- max(list_multinom_MASI80_SW_pred) 
    multinom_MASI80_SW_pred_min <- min(list_multinom_MASI80_SW_pred)
    RB_multinom_MASI80_SW_pred <- bias(SW_true, list_multinom_MASI80_SW_pred)
    bias_RB_multinom_MASI80_SW_pred <- list_multinom_MASI80_SW_pred - SW_true
    sd_RB_multinom_MASI80_SW_pred <- sd(bias_RB_multinom_MASI80_SW_pred)    
    PB_multinom_MASI80_SW_pred <- percent_bias(SW_true, list_multinom_MASI80_SW_pred) *100
    RMSE_multinom_MASI80_SW_pred <- rmse(SW_true, list_multinom_MASI80_SW_pred)
    AW_multinom_MASI80_SW_pred <- mean(sapply(list_multinom_MASI80_SW_95width, sum))
    list_multinom_MASI80_SW_coverge <- sapply(list_multinom_MASI80_SW_coverge, sum)
    CR_multinom_MASI80_SW_pred <- mean(list_multinom_MASI80_SW_coverge)
    sd_CR_multinom_MASI80_SW_pred <- sd(list_multinom_MASI80_SW_coverge)
    
    list_multinom_MASI80_OU_pred <- sapply(list_multinom_MASI80_OU_pred, sum)
    mean_multinom_MASI80_OU_pred <- mean(list_multinom_MASI80_OU_pred)
    sd_multinom_MASI80_OU_pred <- sd(list_multinom_MASI80_OU_pred)
    list_multinom_MASI80_OU_SE <- sapply(list_multinom_MASI80_OU_SE, sum)
    mean_multinom_MASI80_OU_SE <- mean(list_multinom_MASI80_OU_SE)
    sd_multinom_MASI80_OU_SE <- sd(list_multinom_MASI80_OU_SE)
    CIlower_multinom_MASI80_OU_pred <- mean_multinom_MASI80_OU_pred - (2*mean_multinom_MASI80_OU_SE)
    CIupper_multinom_MASI80_OU_pred <- mean_multinom_MASI80_OU_pred + (2*mean_multinom_MASI80_OU_SE)
    multinom_MASI80_OU_pred_max <- max(list_multinom_MASI80_OU_pred) 
    multinom_MASI80_OU_pred_min <- min(list_multinom_MASI80_OU_pred)
    RB_multinom_MASI80_OU_pred <- bias(OU_true, list_multinom_MASI80_OU_pred)
    bias_RB_multinom_MASI80_OU_pred <- list_multinom_MASI80_OU_pred - OU_true
    sd_RB_multinom_MASI80_OU_pred <- sd(bias_RB_multinom_MASI80_OU_pred)    
    PB_multinom_MASI80_OU_pred <- percent_bias(OU_true, list_multinom_MASI80_OU_pred) *100
    RMSE_multinom_MASI80_OU_pred <- rmse(OU_true, list_multinom_MASI80_OU_pred)
    AW_multinom_MASI80_OU_pred <- mean(sapply(list_multinom_MASI80_OU_95width, sum))
    list_multinom_MASI80_OU_coverge <- sapply(list_multinom_MASI80_OU_coverge, sum)
    CR_multinom_MASI80_OU_pred <- mean(list_multinom_MASI80_OU_coverge)
    sd_CR_multinom_MASI80_OU_pred <- sd(list_multinom_MASI80_OU_coverge)
  }
  
  #Performance of MASI50
  {
    list_multinom_MASI50_RT_pred <- sapply(list_multinom_MASI50_RT_pred, sum)
    mean_multinom_MASI50_RT_pred <- mean(list_multinom_MASI50_RT_pred)
    sd_multinom_MASI50_RT_pred <- sd(list_multinom_MASI50_RT_pred)
    list_multinom_MASI50_RT_SE <- sapply(list_multinom_MASI50_RT_SE, sum)
    mean_multinom_MASI50_RT_SE <- mean(list_multinom_MASI50_RT_SE)
    sd_multinom_MASI50_RT_SE <- sd(list_multinom_MASI50_RT_SE)
    CIlower_multinom_MASI50_RT_pred <- mean_multinom_MASI50_RT_pred - (2*mean_multinom_MASI50_RT_SE)
    CIupper_multinom_MASI50_RT_pred <- mean_multinom_MASI50_RT_pred + (2*mean_multinom_MASI50_RT_SE)
    multinom_MASI50_RT_pred_max <- max(list_multinom_MASI50_RT_pred) 
    multinom_MASI50_RT_pred_min <- min(list_multinom_MASI50_RT_pred)
    RB_multinom_MASI50_RT_pred <- bias(RT_true, list_multinom_MASI50_RT_pred)
    bias_RB_multinom_MASI50_RT_pred <- list_multinom_MASI50_RT_pred - RT_true
    sd_RB_multinom_MASI50_RT_pred <- sd(bias_RB_multinom_MASI50_RT_pred)    
    PB_multinom_MASI50_RT_pred <- percent_bias(RT_true, list_multinom_MASI50_RT_pred) *100
    RMSE_multinom_MASI50_RT_pred <- rmse(RT_true, list_multinom_MASI50_RT_pred)
    AW_multinom_MASI50_RT_pred <- mean(sapply(list_multinom_MASI50_RT_95width, sum))
    list_multinom_MASI50_RT_coverge <- sapply(list_multinom_MASI50_RT_coverge, sum)
    CR_multinom_MASI50_RT_pred <- mean(list_multinom_MASI50_RT_coverge)
    sd_CR_multinom_MASI50_RT_pred <- sd(list_multinom_MASI50_RT_coverge)
    
    list_multinom_MASI50_UT_pred <- sapply(list_multinom_MASI50_UT_pred, sum)
    mean_multinom_MASI50_UT_pred <- mean(list_multinom_MASI50_UT_pred)
    sd_multinom_MASI50_UT_pred <- sd(list_multinom_MASI50_UT_pred)
    list_multinom_MASI50_UT_SE <- sapply(list_multinom_MASI50_UT_SE, sum)
    mean_multinom_MASI50_UT_SE <- mean(list_multinom_MASI50_UT_SE)
    sd_multinom_MASI50_UT_SE <- sd(list_multinom_MASI50_UT_SE)
    CIlower_multinom_MASI50_UT_pred <- mean_multinom_MASI50_UT_pred - (2*mean_multinom_MASI50_UT_SE)
    CIupper_multinom_MASI50_UT_pred <- mean_multinom_MASI50_UT_pred + (2*mean_multinom_MASI50_UT_SE)
    multinom_MASI50_UT_pred_max <- max(list_multinom_MASI50_UT_pred) 
    multinom_MASI50_UT_pred_min <- min(list_multinom_MASI50_UT_pred)
    RB_multinom_MASI50_UT_pred <- bias(UT_true, list_multinom_MASI50_UT_pred)
    bias_RB_multinom_MASI50_UT_pred <- list_multinom_MASI50_UT_pred - UT_true
    sd_RB_multinom_MASI50_UT_pred <- sd(bias_RB_multinom_MASI50_UT_pred)    
    PB_multinom_MASI50_UT_pred <- percent_bias(UT_true, list_multinom_MASI50_UT_pred) *100
    RMSE_multinom_MASI50_UT_pred <- rmse(UT_true, list_multinom_MASI50_UT_pred)
    AW_multinom_MASI50_UT_pred <- mean(sapply(list_multinom_MASI50_UT_95width, sum))
    list_multinom_MASI50_UT_coverge <- sapply(list_multinom_MASI50_UT_coverge, sum)
    CR_multinom_MASI50_UT_pred <- mean(list_multinom_MASI50_UT_coverge)
    sd_CR_multinom_MASI50_UT_pred <- sd(list_multinom_MASI50_UT_coverge)
    
    list_multinom_MASI50_SW_pred <- sapply(list_multinom_MASI50_SW_pred, sum)
    mean_multinom_MASI50_SW_pred <- mean(list_multinom_MASI50_SW_pred)
    sd_multinom_MASI50_SW_pred <- sd(list_multinom_MASI50_SW_pred)
    list_multinom_MASI50_SW_SE <- sapply(list_multinom_MASI50_SW_SE, sum)
    mean_multinom_MASI50_SW_SE <- mean(list_multinom_MASI50_SW_SE)
    sd_multinom_MASI50_SW_SE <- sd(list_multinom_MASI50_SW_SE)
    CIlower_multinom_MASI50_SW_pred <- mean_multinom_MASI50_SW_pred - (2*mean_multinom_MASI50_SW_SE)
    CIupper_multinom_MASI50_SW_pred <- mean_multinom_MASI50_SW_pred + (2*mean_multinom_MASI50_SW_SE)
    multinom_MASI50_SW_pred_max <- max(list_multinom_MASI50_SW_pred) 
    multinom_MASI50_SW_pred_min <- min(list_multinom_MASI50_SW_pred)
    RB_multinom_MASI50_SW_pred <- bias(SW_true, list_multinom_MASI50_SW_pred)
    bias_RB_multinom_MASI50_SW_pred <- list_multinom_MASI50_SW_pred - SW_true
    sd_RB_multinom_MASI50_SW_pred <- sd(bias_RB_multinom_MASI50_SW_pred)    
    PB_multinom_MASI50_SW_pred <- percent_bias(SW_true, list_multinom_MASI50_SW_pred) *100
    RMSE_multinom_MASI50_SW_pred <- rmse(SW_true, list_multinom_MASI50_SW_pred)
    AW_multinom_MASI50_SW_pred <- mean(sapply(list_multinom_MASI50_SW_95width, sum))
    list_multinom_MASI50_SW_coverge <- sapply(list_multinom_MASI50_SW_coverge, sum)
    CR_multinom_MASI50_SW_pred <- mean(list_multinom_MASI50_SW_coverge)
    sd_CR_multinom_MASI50_SW_pred <- sd(list_multinom_MASI50_SW_coverge)
    
    list_multinom_MASI50_OU_pred <- sapply(list_multinom_MASI50_OU_pred, sum)
    mean_multinom_MASI50_OU_pred <- mean(list_multinom_MASI50_OU_pred)
    sd_multinom_MASI50_OU_pred <- sd(list_multinom_MASI50_OU_pred)
    list_multinom_MASI50_OU_SE <- sapply(list_multinom_MASI50_OU_SE, sum)
    mean_multinom_MASI50_OU_SE <- mean(list_multinom_MASI50_OU_SE)
    sd_multinom_MASI50_OU_SE <- sd(list_multinom_MASI50_OU_SE)
    CIlower_multinom_MASI50_OU_pred <- mean_multinom_MASI50_OU_pred - (2*mean_multinom_MASI50_OU_SE)
    CIupper_multinom_MASI50_OU_pred <- mean_multinom_MASI50_OU_pred + (2*mean_multinom_MASI50_OU_SE)
    multinom_MASI50_OU_pred_max <- max(list_multinom_MASI50_OU_pred) 
    multinom_MASI50_OU_pred_min <- min(list_multinom_MASI50_OU_pred)
    RB_multinom_MASI50_OU_pred <- bias(OU_true, list_multinom_MASI50_OU_pred)
    bias_RB_multinom_MASI50_OU_pred <- list_multinom_MASI50_OU_pred - OU_true
    sd_RB_multinom_MASI50_OU_pred <- sd(bias_RB_multinom_MASI50_OU_pred)    
    PB_multinom_MASI50_OU_pred <- percent_bias(OU_true, list_multinom_MASI50_OU_pred) *100
    RMSE_multinom_MASI50_OU_pred <- rmse(OU_true, list_multinom_MASI50_OU_pred)
    AW_multinom_MASI50_OU_pred <- mean(sapply(list_multinom_MASI50_OU_95width, sum))
    list_multinom_MASI50_OU_coverge <- sapply(list_multinom_MASI50_OU_coverge, sum)
    CR_multinom_MASI50_OU_pred <- mean(list_multinom_MASI50_OU_coverge)
    sd_CR_multinom_MASI50_OU_pred <- sd(list_multinom_MASI50_OU_coverge)
  }
  
  #Performance of MASI20
  {
    list_multinom_MASI20_RT_pred <- sapply(list_multinom_MASI20_RT_pred, sum)
    mean_multinom_MASI20_RT_pred <- mean(list_multinom_MASI20_RT_pred)
    sd_multinom_MASI20_RT_pred <- sd(list_multinom_MASI20_RT_pred)
    list_multinom_MASI20_RT_SE <- sapply(list_multinom_MASI20_RT_SE, sum)
    mean_multinom_MASI20_RT_SE <- mean(list_multinom_MASI20_RT_SE)
    sd_multinom_MASI20_RT_SE <- sd(list_multinom_MASI20_RT_SE)
    CIlower_multinom_MASI20_RT_pred <- mean_multinom_MASI20_RT_pred - (2*mean_multinom_MASI20_RT_SE)
    CIupper_multinom_MASI20_RT_pred <- mean_multinom_MASI20_RT_pred + (2*mean_multinom_MASI20_RT_SE)
    multinom_MASI20_RT_pred_max <- max(list_multinom_MASI20_RT_pred) 
    multinom_MASI20_RT_pred_min <- min(list_multinom_MASI20_RT_pred)
    RB_multinom_MASI20_RT_pred <- bias(RT_true, list_multinom_MASI20_RT_pred)
    bias_RB_multinom_MASI20_RT_pred <- list_multinom_MASI20_RT_pred - RT_true
    sd_RB_multinom_MASI20_RT_pred <- sd(bias_RB_multinom_MASI20_RT_pred)    
    PB_multinom_MASI20_RT_pred <- percent_bias(RT_true, list_multinom_MASI20_RT_pred) *100
    RMSE_multinom_MASI20_RT_pred <- rmse(RT_true, list_multinom_MASI20_RT_pred)
    AW_multinom_MASI20_RT_pred <- mean(sapply(list_multinom_MASI20_RT_95width, sum))
    list_multinom_MASI20_RT_coverge <- sapply(list_multinom_MASI20_RT_coverge, sum)
    CR_multinom_MASI20_RT_pred <- mean(list_multinom_MASI20_RT_coverge)
    sd_CR_multinom_MASI20_RT_pred <- sd(list_multinom_MASI20_RT_coverge)
    
    list_multinom_MASI20_UT_pred <- sapply(list_multinom_MASI20_UT_pred, sum)
    mean_multinom_MASI20_UT_pred <- mean(list_multinom_MASI20_UT_pred)
    sd_multinom_MASI20_UT_pred <- sd(list_multinom_MASI20_UT_pred)
    list_multinom_MASI20_UT_SE <- sapply(list_multinom_MASI20_UT_SE, sum)
    mean_multinom_MASI20_UT_SE <- mean(list_multinom_MASI20_UT_SE)
    sd_multinom_MASI20_UT_SE <- sd(list_multinom_MASI20_UT_SE)
    CIlower_multinom_MASI20_UT_pred <- mean_multinom_MASI20_UT_pred - (2*mean_multinom_MASI20_UT_SE)
    CIupper_multinom_MASI20_UT_pred <- mean_multinom_MASI20_UT_pred + (2*mean_multinom_MASI20_UT_SE)
    multinom_MASI20_UT_pred_max <- max(list_multinom_MASI20_UT_pred) 
    multinom_MASI20_UT_pred_min <- min(list_multinom_MASI20_UT_pred)
    RB_multinom_MASI20_UT_pred <- bias(UT_true, list_multinom_MASI20_UT_pred)
    bias_RB_multinom_MASI20_UT_pred <- list_multinom_MASI20_UT_pred - UT_true
    sd_RB_multinom_MASI20_UT_pred <- sd(bias_RB_multinom_MASI20_UT_pred)    
    PB_multinom_MASI20_UT_pred <- percent_bias(UT_true, list_multinom_MASI20_UT_pred) *100
    RMSE_multinom_MASI20_UT_pred <- rmse(UT_true, list_multinom_MASI20_UT_pred)
    AW_multinom_MASI20_UT_pred <- mean(sapply(list_multinom_MASI20_UT_95width, sum))
    list_multinom_MASI20_UT_coverge <- sapply(list_multinom_MASI20_UT_coverge, sum)
    CR_multinom_MASI20_UT_pred <- mean(list_multinom_MASI20_UT_coverge)
    sd_CR_multinom_MASI20_UT_pred <- sd(list_multinom_MASI20_UT_coverge)
    
    list_multinom_MASI20_SW_pred <- sapply(list_multinom_MASI20_SW_pred, sum)
    mean_multinom_MASI20_SW_pred <- mean(list_multinom_MASI20_SW_pred)
    sd_multinom_MASI20_SW_pred <- sd(list_multinom_MASI20_SW_pred)
    list_multinom_MASI20_SW_SE <- sapply(list_multinom_MASI20_SW_SE, sum)
    mean_multinom_MASI20_SW_SE <- mean(list_multinom_MASI20_SW_SE)
    sd_multinom_MASI20_SW_SE <- sd(list_multinom_MASI20_SW_SE)
    CIlower_multinom_MASI20_SW_pred <- mean_multinom_MASI20_SW_pred - (2*mean_multinom_MASI20_SW_SE)
    CIupper_multinom_MASI20_SW_pred <- mean_multinom_MASI20_SW_pred + (2*mean_multinom_MASI20_SW_SE)
    multinom_MASI20_SW_pred_max <- max(list_multinom_MASI20_SW_pred) 
    multinom_MASI20_SW_pred_min <- min(list_multinom_MASI20_SW_pred)
    RB_multinom_MASI20_SW_pred <- bias(SW_true, list_multinom_MASI20_SW_pred)
    bias_RB_multinom_MASI20_SW_pred <- list_multinom_MASI20_SW_pred - SW_true
    sd_RB_multinom_MASI20_SW_pred <- sd(bias_RB_multinom_MASI20_SW_pred)    
    PB_multinom_MASI20_SW_pred <- percent_bias(SW_true, list_multinom_MASI20_SW_pred) *100
    RMSE_multinom_MASI20_SW_pred <- rmse(SW_true, list_multinom_MASI20_SW_pred)
    AW_multinom_MASI20_SW_pred <- mean(sapply(list_multinom_MASI20_SW_95width, sum))
    list_multinom_MASI20_SW_coverge <- sapply(list_multinom_MASI20_SW_coverge, sum)
    CR_multinom_MASI20_SW_pred <- mean(list_multinom_MASI20_SW_coverge)
    sd_CR_multinom_MASI20_SW_pred <- sd(list_multinom_MASI20_SW_coverge)
    
    list_multinom_MASI20_OU_pred <- sapply(list_multinom_MASI20_OU_pred, sum)
    mean_multinom_MASI20_OU_pred <- mean(list_multinom_MASI20_OU_pred)
    sd_multinom_MASI20_OU_pred <- sd(list_multinom_MASI20_OU_pred)
    list_multinom_MASI20_OU_SE <- sapply(list_multinom_MASI20_OU_SE, sum)
    mean_multinom_MASI20_OU_SE <- mean(list_multinom_MASI20_OU_SE)
    sd_multinom_MASI20_OU_SE <- sd(list_multinom_MASI20_OU_SE)
    CIlower_multinom_MASI20_OU_pred <- mean_multinom_MASI20_OU_pred - (2*mean_multinom_MASI20_OU_SE)
    CIupper_multinom_MASI20_OU_pred <- mean_multinom_MASI20_OU_pred + (2*mean_multinom_MASI20_OU_SE)
    multinom_MASI20_OU_pred_max <- max(list_multinom_MASI20_OU_pred) 
    multinom_MASI20_OU_pred_min <- min(list_multinom_MASI20_OU_pred)
    RB_multinom_MASI20_OU_pred <- bias(OU_true, list_multinom_MASI20_OU_pred)
    bias_RB_multinom_MASI20_OU_pred <- list_multinom_MASI20_OU_pred - OU_true
    sd_RB_multinom_MASI20_OU_pred <- sd(bias_RB_multinom_MASI20_OU_pred)    
    PB_multinom_MASI20_OU_pred <- percent_bias(OU_true, list_multinom_MASI20_OU_pred) *100
    RMSE_multinom_MASI20_OU_pred <- rmse(OU_true, list_multinom_MASI20_OU_pred)
    AW_multinom_MASI20_OU_pred <- mean(sapply(list_multinom_MASI20_OU_95width, sum))
    list_multinom_MASI20_OU_coverge <- sapply(list_multinom_MASI20_OU_coverge, sum)
    CR_multinom_MASI20_OU_pred <- mean(list_multinom_MASI20_OU_coverge)
    sd_CR_multinom_MASI20_OU_pred <- sd(list_multinom_MASI20_OU_coverge)
  }
  
  #Performance of MASI5
  {
    list_multinom_MASI5_RT_pred <- sapply(list_multinom_MASI5_RT_pred, sum)
    mean_multinom_MASI5_RT_pred <- mean(list_multinom_MASI5_RT_pred)
    sd_multinom_MASI5_RT_pred <- sd(list_multinom_MASI5_RT_pred)
    list_multinom_MASI5_RT_SE <- sapply(list_multinom_MASI5_RT_SE, sum)
    mean_multinom_MASI5_RT_SE <- mean(list_multinom_MASI5_RT_SE)
    sd_multinom_MASI5_RT_SE <- sd(list_multinom_MASI5_RT_SE)
    CIlower_multinom_MASI5_RT_pred <- mean_multinom_MASI5_RT_pred - (2*mean_multinom_MASI5_RT_SE)
    CIupper_multinom_MASI5_RT_pred <- mean_multinom_MASI5_RT_pred + (2*mean_multinom_MASI5_RT_SE)
    multinom_MASI5_RT_pred_max <- max(list_multinom_MASI5_RT_pred) 
    multinom_MASI5_RT_pred_min <- min(list_multinom_MASI5_RT_pred)
    RB_multinom_MASI5_RT_pred <- bias(RT_true, list_multinom_MASI5_RT_pred)
    bias_RB_multinom_MASI5_RT_pred <- list_multinom_MASI5_RT_pred - RT_true
    sd_RB_multinom_MASI5_RT_pred <- sd(bias_RB_multinom_MASI5_RT_pred)    
    PB_multinom_MASI5_RT_pred <- percent_bias(RT_true, list_multinom_MASI5_RT_pred) *100
    RMSE_multinom_MASI5_RT_pred <- rmse(RT_true, list_multinom_MASI5_RT_pred)
    AW_multinom_MASI5_RT_pred <- mean(sapply(list_multinom_MASI5_RT_95width, sum))
    list_multinom_MASI5_RT_coverge <- sapply(list_multinom_MASI5_RT_coverge, sum)
    CR_multinom_MASI5_RT_pred <- mean(list_multinom_MASI5_RT_coverge)
    sd_CR_multinom_MASI5_RT_pred <- sd(list_multinom_MASI5_RT_coverge)
    
    list_multinom_MASI5_UT_pred <- sapply(list_multinom_MASI5_UT_pred, sum)
    mean_multinom_MASI5_UT_pred <- mean(list_multinom_MASI5_UT_pred)
    sd_multinom_MASI5_UT_pred <- sd(list_multinom_MASI5_UT_pred)
    list_multinom_MASI5_UT_SE <- sapply(list_multinom_MASI5_UT_SE, sum)
    mean_multinom_MASI5_UT_SE <- mean(list_multinom_MASI5_UT_SE)
    sd_multinom_MASI5_UT_SE <- sd(list_multinom_MASI5_UT_SE)
    CIlower_multinom_MASI5_UT_pred <- mean_multinom_MASI5_UT_pred - (2*mean_multinom_MASI5_UT_SE)
    CIupper_multinom_MASI5_UT_pred <- mean_multinom_MASI5_UT_pred + (2*mean_multinom_MASI5_UT_SE)
    multinom_MASI5_UT_pred_max <- max(list_multinom_MASI5_UT_pred) 
    multinom_MASI5_UT_pred_min <- min(list_multinom_MASI5_UT_pred)
    RB_multinom_MASI5_UT_pred <- bias(UT_true, list_multinom_MASI5_UT_pred)
    bias_RB_multinom_MASI5_UT_pred <- list_multinom_MASI5_UT_pred - UT_true
    sd_RB_multinom_MASI5_UT_pred <- sd(bias_RB_multinom_MASI5_UT_pred)    
    PB_multinom_MASI5_UT_pred <- percent_bias(UT_true, list_multinom_MASI5_UT_pred) *100
    RMSE_multinom_MASI5_UT_pred <- rmse(UT_true, list_multinom_MASI5_UT_pred)
    AW_multinom_MASI5_UT_pred <- mean(sapply(list_multinom_MASI5_UT_95width, sum))
    list_multinom_MASI5_UT_coverge <- sapply(list_multinom_MASI5_UT_coverge, sum)
    CR_multinom_MASI5_UT_pred <- mean(list_multinom_MASI5_UT_coverge)
    sd_CR_multinom_MASI5_UT_pred <- sd(list_multinom_MASI5_UT_coverge)
    
    list_multinom_MASI5_SW_pred <- sapply(list_multinom_MASI5_SW_pred, sum)
    mean_multinom_MASI5_SW_pred <- mean(list_multinom_MASI5_SW_pred)
    sd_multinom_MASI5_SW_pred <- sd(list_multinom_MASI5_SW_pred)
    list_multinom_MASI5_SW_SE <- sapply(list_multinom_MASI5_SW_SE, sum)
    mean_multinom_MASI5_SW_SE <- mean(list_multinom_MASI5_SW_SE)
    sd_multinom_MASI5_SW_SE <- sd(list_multinom_MASI5_SW_SE)
    CIlower_multinom_MASI5_SW_pred <- mean_multinom_MASI5_SW_pred - (2*mean_multinom_MASI5_SW_SE)
    CIupper_multinom_MASI5_SW_pred <- mean_multinom_MASI5_SW_pred + (2*mean_multinom_MASI5_SW_SE)
    multinom_MASI5_SW_pred_max <- max(list_multinom_MASI5_SW_pred) 
    multinom_MASI5_SW_pred_min <- min(list_multinom_MASI5_SW_pred)
    RB_multinom_MASI5_SW_pred <- bias(SW_true, list_multinom_MASI5_SW_pred)
    bias_RB_multinom_MASI5_SW_pred <- list_multinom_MASI5_SW_pred - SW_true
    sd_RB_multinom_MASI5_SW_pred <- sd(bias_RB_multinom_MASI5_SW_pred)    
    PB_multinom_MASI5_SW_pred <- percent_bias(SW_true, list_multinom_MASI5_SW_pred) *100
    RMSE_multinom_MASI5_SW_pred <- rmse(SW_true, list_multinom_MASI5_SW_pred)
    AW_multinom_MASI5_SW_pred <- mean(sapply(list_multinom_MASI5_SW_95width, sum))
    list_multinom_MASI5_SW_coverge <- sapply(list_multinom_MASI5_SW_coverge, sum)
    CR_multinom_MASI5_SW_pred <- mean(list_multinom_MASI5_SW_coverge)
    sd_CR_multinom_MASI5_SW_pred <- sd(list_multinom_MASI5_SW_coverge)
    
    list_multinom_MASI5_OU_pred <- sapply(list_multinom_MASI5_OU_pred, sum)
    mean_multinom_MASI5_OU_pred <- mean(list_multinom_MASI5_OU_pred)
    sd_multinom_MASI5_OU_pred <- sd(list_multinom_MASI5_OU_pred)
    list_multinom_MASI5_OU_SE <- sapply(list_multinom_MASI5_OU_SE, sum)
    mean_multinom_MASI5_OU_SE <- mean(list_multinom_MASI5_OU_SE)
    sd_multinom_MASI5_OU_SE <- sd(list_multinom_MASI5_OU_SE)
    CIlower_multinom_MASI5_OU_pred <- mean_multinom_MASI5_OU_pred - (2*mean_multinom_MASI5_OU_SE)
    CIupper_multinom_MASI5_OU_pred <- mean_multinom_MASI5_OU_pred + (2*mean_multinom_MASI5_OU_SE)
    multinom_MASI5_OU_pred_max <- max(list_multinom_MASI5_OU_pred) 
    multinom_MASI5_OU_pred_min <- min(list_multinom_MASI5_OU_pred)
    RB_multinom_MASI5_OU_pred <- bias(OU_true, list_multinom_MASI5_OU_pred)
    bias_RB_multinom_MASI5_OU_pred <- list_multinom_MASI5_OU_pred - OU_true
    sd_RB_multinom_MASI5_OU_pred <- sd(bias_RB_multinom_MASI5_OU_pred)    
    PB_multinom_MASI5_OU_pred <- percent_bias(OU_true, list_multinom_MASI5_OU_pred) *100
    RMSE_multinom_MASI5_OU_pred <- rmse(OU_true, list_multinom_MASI5_OU_pred)
    AW_multinom_MASI5_OU_pred <- mean(sapply(list_multinom_MASI5_OU_95width, sum))
    list_multinom_MASI5_OU_coverge <- sapply(list_multinom_MASI5_OU_coverge, sum)
    CR_multinom_MASI5_OU_pred <- mean(list_multinom_MASI5_OU_coverge)
    sd_CR_multinom_MASI5_OU_pred <- sd(list_multinom_MASI5_OU_coverge)
  }
}

#nnet Performance of SI
{
  #Performance of UASI80
  {
    list_nnet_UASI80_RT_pred <- sapply(list_nnet_UASI80_RT_pred, sum)
    mean_nnet_UASI80_RT_pred <- mean(list_nnet_UASI80_RT_pred)
    sd_nnet_UASI80_RT_pred <- sd(list_nnet_UASI80_RT_pred)
    list_nnet_UASI80_RT_SE <- sapply(list_nnet_UASI80_RT_SE, sum)
    mean_nnet_UASI80_RT_SE <- mean(list_nnet_UASI80_RT_SE)
    sd_nnet_UASI80_RT_SE <- sd(list_nnet_UASI80_RT_SE)
    CIlower_nnet_UASI80_RT_pred <- mean_nnet_UASI80_RT_pred - (2*mean_nnet_UASI80_RT_SE)
    CIupper_nnet_UASI80_RT_pred <- mean_nnet_UASI80_RT_pred + (2*mean_nnet_UASI80_RT_SE)
    nnet_UASI80_RT_pred_max <- max(list_nnet_UASI80_RT_pred) 
    nnet_UASI80_RT_pred_min <- min(list_nnet_UASI80_RT_pred)
    RB_nnet_UASI80_RT_pred <- bias(RT_true, list_nnet_UASI80_RT_pred)
    bias_RB_nnet_UASI80_RT_pred <- list_nnet_UASI80_RT_pred - RT_true
    sd_RB_nnet_UASI80_RT_pred <- sd(bias_RB_nnet_UASI80_RT_pred)    
    PB_nnet_UASI80_RT_pred <- percent_bias(RT_true, list_nnet_UASI80_RT_pred) *100
    RMSE_nnet_UASI80_RT_pred <- rmse(RT_true, list_nnet_UASI80_RT_pred)
    AW_nnet_UASI80_RT_pred <- mean(sapply(list_nnet_UASI80_RT_95width, sum))
    list_nnet_UASI80_RT_coverge <- sapply(list_nnet_UASI80_RT_coverge, sum)
    CR_nnet_UASI80_RT_pred <- mean(list_nnet_UASI80_RT_coverge)
    sd_CR_nnet_UASI80_RT_pred <- sd(list_nnet_UASI80_RT_coverge)
    
    list_nnet_UASI80_UT_pred <- sapply(list_nnet_UASI80_UT_pred, sum)
    mean_nnet_UASI80_UT_pred <- mean(list_nnet_UASI80_UT_pred)
    sd_nnet_UASI80_UT_pred <- sd(list_nnet_UASI80_UT_pred)
    list_nnet_UASI80_UT_SE <- sapply(list_nnet_UASI80_UT_SE, sum)
    mean_nnet_UASI80_UT_SE <- mean(list_nnet_UASI80_UT_SE)
    sd_nnet_UASI80_UT_SE <- sd(list_nnet_UASI80_UT_SE)
    CIlower_nnet_UASI80_UT_pred <- mean_nnet_UASI80_UT_pred - (2*mean_nnet_UASI80_UT_SE)
    CIupper_nnet_UASI80_UT_pred <- mean_nnet_UASI80_UT_pred + (2*mean_nnet_UASI80_UT_SE)
    nnet_UASI80_UT_pred_max <- max(list_nnet_UASI80_UT_pred) 
    nnet_UASI80_UT_pred_min <- min(list_nnet_UASI80_UT_pred)
    RB_nnet_UASI80_UT_pred <- bias(UT_true, list_nnet_UASI80_UT_pred)
    bias_RB_nnet_UASI80_UT_pred <- list_nnet_UASI80_UT_pred - UT_true
    sd_RB_nnet_UASI80_UT_pred <- sd(bias_RB_nnet_UASI80_UT_pred)    
    PB_nnet_UASI80_UT_pred <- percent_bias(UT_true, list_nnet_UASI80_UT_pred) *100
    RMSE_nnet_UASI80_UT_pred <- rmse(UT_true, list_nnet_UASI80_UT_pred)
    AW_nnet_UASI80_UT_pred <- mean(sapply(list_nnet_UASI80_UT_95width, sum))
    list_nnet_UASI80_UT_coverge <- sapply(list_nnet_UASI80_UT_coverge, sum)
    CR_nnet_UASI80_UT_pred <- mean(list_nnet_UASI80_UT_coverge)
    sd_CR_nnet_UASI80_UT_pred <- sd(list_nnet_UASI80_UT_coverge)
    
    list_nnet_UASI80_SW_pred <- sapply(list_nnet_UASI80_SW_pred, sum)
    mean_nnet_UASI80_SW_pred <- mean(list_nnet_UASI80_SW_pred)
    sd_nnet_UASI80_SW_pred <- sd(list_nnet_UASI80_SW_pred)
    list_nnet_UASI80_SW_SE <- sapply(list_nnet_UASI80_SW_SE, sum)
    mean_nnet_UASI80_SW_SE <- mean(list_nnet_UASI80_SW_SE)
    sd_nnet_UASI80_SW_SE <- sd(list_nnet_UASI80_SW_SE)
    CIlower_nnet_UASI80_SW_pred <- mean_nnet_UASI80_SW_pred - (2*mean_nnet_UASI80_SW_SE)
    CIupper_nnet_UASI80_SW_pred <- mean_nnet_UASI80_SW_pred + (2*mean_nnet_UASI80_SW_SE)
    nnet_UASI80_SW_pred_max <- max(list_nnet_UASI80_SW_pred) 
    nnet_UASI80_SW_pred_min <- min(list_nnet_UASI80_SW_pred)
    RB_nnet_UASI80_SW_pred <- bias(SW_true, list_nnet_UASI80_SW_pred)
    bias_RB_nnet_UASI80_SW_pred <- list_nnet_UASI80_SW_pred - SW_true
    sd_RB_nnet_UASI80_SW_pred <- sd(bias_RB_nnet_UASI80_SW_pred)    
    PB_nnet_UASI80_SW_pred <- percent_bias(SW_true, list_nnet_UASI80_SW_pred) *100
    RMSE_nnet_UASI80_SW_pred <- rmse(SW_true, list_nnet_UASI80_SW_pred)
    AW_nnet_UASI80_SW_pred <- mean(sapply(list_nnet_UASI80_SW_95width, sum))
    list_nnet_UASI80_SW_coverge <- sapply(list_nnet_UASI80_SW_coverge, sum)
    CR_nnet_UASI80_SW_pred <- mean(list_nnet_UASI80_SW_coverge)
    sd_CR_nnet_UASI80_SW_pred <- sd(list_nnet_UASI80_SW_coverge)
    
    list_nnet_UASI80_OU_pred <- sapply(list_nnet_UASI80_OU_pred, sum)
    mean_nnet_UASI80_OU_pred <- mean(list_nnet_UASI80_OU_pred)
    sd_nnet_UASI80_OU_pred <- sd(list_nnet_UASI80_OU_pred)
    list_nnet_UASI80_OU_SE <- sapply(list_nnet_UASI80_OU_SE, sum)
    mean_nnet_UASI80_OU_SE <- mean(list_nnet_UASI80_OU_SE)
    sd_nnet_UASI80_OU_SE <- sd(list_nnet_UASI80_OU_SE)
    CIlower_nnet_UASI80_OU_pred <- mean_nnet_UASI80_OU_pred - (2*mean_nnet_UASI80_OU_SE)
    CIupper_nnet_UASI80_OU_pred <- mean_nnet_UASI80_OU_pred + (2*mean_nnet_UASI80_OU_SE)
    nnet_UASI80_OU_pred_max <- max(list_nnet_UASI80_OU_pred) 
    nnet_UASI80_OU_pred_min <- min(list_nnet_UASI80_OU_pred)
    RB_nnet_UASI80_OU_pred <- bias(OU_true, list_nnet_UASI80_OU_pred)
    bias_RB_nnet_UASI80_OU_pred <- list_nnet_UASI80_OU_pred - OU_true
    sd_RB_nnet_UASI80_OU_pred <- sd(bias_RB_nnet_UASI80_OU_pred)    
    PB_nnet_UASI80_OU_pred <- percent_bias(OU_true, list_nnet_UASI80_OU_pred) *100
    RMSE_nnet_UASI80_OU_pred <- rmse(OU_true, list_nnet_UASI80_OU_pred)
    AW_nnet_UASI80_OU_pred <- mean(sapply(list_nnet_UASI80_OU_95width, sum))
    list_nnet_UASI80_OU_coverge <- sapply(list_nnet_UASI80_OU_coverge, sum)
    CR_nnet_UASI80_OU_pred <- mean(list_nnet_UASI80_OU_coverge)
    sd_CR_nnet_UASI80_OU_pred <- sd(list_nnet_UASI80_OU_coverge)
  }
  
  #Performance of UASI50
  {
    list_nnet_UASI50_RT_pred <- sapply(list_nnet_UASI50_RT_pred, sum)
    mean_nnet_UASI50_RT_pred <- mean(list_nnet_UASI50_RT_pred)
    sd_nnet_UASI50_RT_pred <- sd(list_nnet_UASI50_RT_pred)
    list_nnet_UASI50_RT_SE <- sapply(list_nnet_UASI50_RT_SE, sum)
    mean_nnet_UASI50_RT_SE <- mean(list_nnet_UASI50_RT_SE)
    sd_nnet_UASI50_RT_SE <- sd(list_nnet_UASI50_RT_SE)
    CIlower_nnet_UASI50_RT_pred <- mean_nnet_UASI50_RT_pred - (2*mean_nnet_UASI50_RT_SE)
    CIupper_nnet_UASI50_RT_pred <- mean_nnet_UASI50_RT_pred + (2*mean_nnet_UASI50_RT_SE)
    nnet_UASI50_RT_pred_max <- max(list_nnet_UASI50_RT_pred) 
    nnet_UASI50_RT_pred_min <- min(list_nnet_UASI50_RT_pred)
    RB_nnet_UASI50_RT_pred <- bias(RT_true, list_nnet_UASI50_RT_pred)
    bias_RB_nnet_UASI50_RT_pred <- list_nnet_UASI50_RT_pred - RT_true
    sd_RB_nnet_UASI50_RT_pred <- sd(bias_RB_nnet_UASI50_RT_pred)    
    PB_nnet_UASI50_RT_pred <- percent_bias(RT_true, list_nnet_UASI50_RT_pred) *100
    RMSE_nnet_UASI50_RT_pred <- rmse(RT_true, list_nnet_UASI50_RT_pred)
    AW_nnet_UASI50_RT_pred <- mean(sapply(list_nnet_UASI50_RT_95width, sum))
    list_nnet_UASI50_RT_coverge <- sapply(list_nnet_UASI50_RT_coverge, sum)
    CR_nnet_UASI50_RT_pred <- mean(list_nnet_UASI50_RT_coverge)
    sd_CR_nnet_UASI50_RT_pred <- sd(list_nnet_UASI50_RT_coverge)
    
    list_nnet_UASI50_UT_pred <- sapply(list_nnet_UASI50_UT_pred, sum)
    mean_nnet_UASI50_UT_pred <- mean(list_nnet_UASI50_UT_pred)
    sd_nnet_UASI50_UT_pred <- sd(list_nnet_UASI50_UT_pred)
    list_nnet_UASI50_UT_SE <- sapply(list_nnet_UASI50_UT_SE, sum)
    mean_nnet_UASI50_UT_SE <- mean(list_nnet_UASI50_UT_SE)
    sd_nnet_UASI50_UT_SE <- sd(list_nnet_UASI50_UT_SE)
    CIlower_nnet_UASI50_UT_pred <- mean_nnet_UASI50_UT_pred - (2*mean_nnet_UASI50_UT_SE)
    CIupper_nnet_UASI50_UT_pred <- mean_nnet_UASI50_UT_pred + (2*mean_nnet_UASI50_UT_SE)
    nnet_UASI50_UT_pred_max <- max(list_nnet_UASI50_UT_pred) 
    nnet_UASI50_UT_pred_min <- min(list_nnet_UASI50_UT_pred)
    RB_nnet_UASI50_UT_pred <- bias(UT_true, list_nnet_UASI50_UT_pred)
    bias_RB_nnet_UASI50_UT_pred <- list_nnet_UASI50_UT_pred - UT_true
    sd_RB_nnet_UASI50_UT_pred <- sd(bias_RB_nnet_UASI50_UT_pred)    
    PB_nnet_UASI50_UT_pred <- percent_bias(UT_true, list_nnet_UASI50_UT_pred) *100
    RMSE_nnet_UASI50_UT_pred <- rmse(UT_true, list_nnet_UASI50_UT_pred)
    AW_nnet_UASI50_UT_pred <- mean(sapply(list_nnet_UASI50_UT_95width, sum))
    list_nnet_UASI50_UT_coverge <- sapply(list_nnet_UASI50_UT_coverge, sum)
    CR_nnet_UASI50_UT_pred <- mean(list_nnet_UASI50_UT_coverge)
    sd_CR_nnet_UASI50_UT_pred <- sd(list_nnet_UASI50_UT_coverge)
    
    list_nnet_UASI50_SW_pred <- sapply(list_nnet_UASI50_SW_pred, sum)
    mean_nnet_UASI50_SW_pred <- mean(list_nnet_UASI50_SW_pred)
    sd_nnet_UASI50_SW_pred <- sd(list_nnet_UASI50_SW_pred)
    list_nnet_UASI50_SW_SE <- sapply(list_nnet_UASI50_SW_SE, sum)
    mean_nnet_UASI50_SW_SE <- mean(list_nnet_UASI50_SW_SE)
    sd_nnet_UASI50_SW_SE <- sd(list_nnet_UASI50_SW_SE)
    CIlower_nnet_UASI50_SW_pred <- mean_nnet_UASI50_SW_pred - (2*mean_nnet_UASI50_SW_SE)
    CIupper_nnet_UASI50_SW_pred <- mean_nnet_UASI50_SW_pred + (2*mean_nnet_UASI50_SW_SE)
    nnet_UASI50_SW_pred_max <- max(list_nnet_UASI50_SW_pred) 
    nnet_UASI50_SW_pred_min <- min(list_nnet_UASI50_SW_pred)
    RB_nnet_UASI50_SW_pred <- bias(SW_true, list_nnet_UASI50_SW_pred)
    bias_RB_nnet_UASI50_SW_pred <- list_nnet_UASI50_SW_pred - SW_true
    sd_RB_nnet_UASI50_SW_pred <- sd(bias_RB_nnet_UASI50_SW_pred)    
    PB_nnet_UASI50_SW_pred <- percent_bias(SW_true, list_nnet_UASI50_SW_pred) *100
    RMSE_nnet_UASI50_SW_pred <- rmse(SW_true, list_nnet_UASI50_SW_pred)
    AW_nnet_UASI50_SW_pred <- mean(sapply(list_nnet_UASI50_SW_95width, sum))
    list_nnet_UASI50_SW_coverge <- sapply(list_nnet_UASI50_SW_coverge, sum)
    CR_nnet_UASI50_SW_pred <- mean(list_nnet_UASI50_SW_coverge)
    sd_CR_nnet_UASI50_SW_pred <- sd(list_nnet_UASI50_SW_coverge)
    
    list_nnet_UASI50_OU_pred <- sapply(list_nnet_UASI50_OU_pred, sum)
    mean_nnet_UASI50_OU_pred <- mean(list_nnet_UASI50_OU_pred)
    sd_nnet_UASI50_OU_pred <- sd(list_nnet_UASI50_OU_pred)
    list_nnet_UASI50_OU_SE <- sapply(list_nnet_UASI50_OU_SE, sum)
    mean_nnet_UASI50_OU_SE <- mean(list_nnet_UASI50_OU_SE)
    sd_nnet_UASI50_OU_SE <- sd(list_nnet_UASI50_OU_SE)
    CIlower_nnet_UASI50_OU_pred <- mean_nnet_UASI50_OU_pred - (2*mean_nnet_UASI50_OU_SE)
    CIupper_nnet_UASI50_OU_pred <- mean_nnet_UASI50_OU_pred + (2*mean_nnet_UASI50_OU_SE)
    nnet_UASI50_OU_pred_max <- max(list_nnet_UASI50_OU_pred) 
    nnet_UASI50_OU_pred_min <- min(list_nnet_UASI50_OU_pred)
    RB_nnet_UASI50_OU_pred <- bias(OU_true, list_nnet_UASI50_OU_pred)
    bias_RB_nnet_UASI50_OU_pred <- list_nnet_UASI50_OU_pred - OU_true
    sd_RB_nnet_UASI50_OU_pred <- sd(bias_RB_nnet_UASI50_OU_pred)    
    PB_nnet_UASI50_OU_pred <- percent_bias(OU_true, list_nnet_UASI50_OU_pred) *100
    RMSE_nnet_UASI50_OU_pred <- rmse(OU_true, list_nnet_UASI50_OU_pred)
    AW_nnet_UASI50_OU_pred <- mean(sapply(list_nnet_UASI50_OU_95width, sum))
    list_nnet_UASI50_OU_coverge <- sapply(list_nnet_UASI50_OU_coverge, sum)
    CR_nnet_UASI50_OU_pred <- mean(list_nnet_UASI50_OU_coverge)
    sd_CR_nnet_UASI50_OU_pred <- sd(list_nnet_UASI50_OU_coverge)
  }
  
  #Performance of UASI20
  {
    list_nnet_UASI20_RT_pred <- sapply(list_nnet_UASI20_RT_pred, sum)
    mean_nnet_UASI20_RT_pred <- mean(list_nnet_UASI20_RT_pred)
    sd_nnet_UASI20_RT_pred <- sd(list_nnet_UASI20_RT_pred)
    list_nnet_UASI20_RT_SE <- sapply(list_nnet_UASI20_RT_SE, sum)
    mean_nnet_UASI20_RT_SE <- mean(list_nnet_UASI20_RT_SE)
    sd_nnet_UASI20_RT_SE <- sd(list_nnet_UASI20_RT_SE)
    CIlower_nnet_UASI20_RT_pred <- mean_nnet_UASI20_RT_pred - (2*mean_nnet_UASI20_RT_SE)
    CIupper_nnet_UASI20_RT_pred <- mean_nnet_UASI20_RT_pred + (2*mean_nnet_UASI20_RT_SE)
    nnet_UASI20_RT_pred_max <- max(list_nnet_UASI20_RT_pred) 
    nnet_UASI20_RT_pred_min <- min(list_nnet_UASI20_RT_pred)
    RB_nnet_UASI20_RT_pred <- bias(RT_true, list_nnet_UASI20_RT_pred)
    bias_RB_nnet_UASI20_RT_pred <- list_nnet_UASI20_RT_pred - RT_true
    sd_RB_nnet_UASI20_RT_pred <- sd(bias_RB_nnet_UASI20_RT_pred)    
    PB_nnet_UASI20_RT_pred <- percent_bias(RT_true, list_nnet_UASI20_RT_pred) *100
    RMSE_nnet_UASI20_RT_pred <- rmse(RT_true, list_nnet_UASI20_RT_pred)
    AW_nnet_UASI20_RT_pred <- mean(sapply(list_nnet_UASI20_RT_95width, sum))
    list_nnet_UASI20_RT_coverge <- sapply(list_nnet_UASI20_RT_coverge, sum)
    CR_nnet_UASI20_RT_pred <- mean(list_nnet_UASI20_RT_coverge)
    sd_CR_nnet_UASI20_RT_pred <- sd(list_nnet_UASI20_RT_coverge)
    
    list_nnet_UASI20_UT_pred <- sapply(list_nnet_UASI20_UT_pred, sum)
    mean_nnet_UASI20_UT_pred <- mean(list_nnet_UASI20_UT_pred)
    sd_nnet_UASI20_UT_pred <- sd(list_nnet_UASI20_UT_pred)
    list_nnet_UASI20_UT_SE <- sapply(list_nnet_UASI20_UT_SE, sum)
    mean_nnet_UASI20_UT_SE <- mean(list_nnet_UASI20_UT_SE)
    sd_nnet_UASI20_UT_SE <- sd(list_nnet_UASI20_UT_SE)
    CIlower_nnet_UASI20_UT_pred <- mean_nnet_UASI20_UT_pred - (2*mean_nnet_UASI20_UT_SE)
    CIupper_nnet_UASI20_UT_pred <- mean_nnet_UASI20_UT_pred + (2*mean_nnet_UASI20_UT_SE)
    nnet_UASI20_UT_pred_max <- max(list_nnet_UASI20_UT_pred) 
    nnet_UASI20_UT_pred_min <- min(list_nnet_UASI20_UT_pred)
    RB_nnet_UASI20_UT_pred <- bias(UT_true, list_nnet_UASI20_UT_pred)
    bias_RB_nnet_UASI20_UT_pred <- list_nnet_UASI20_UT_pred - UT_true
    sd_RB_nnet_UASI20_UT_pred <- sd(bias_RB_nnet_UASI20_UT_pred)    
    PB_nnet_UASI20_UT_pred <- percent_bias(UT_true, list_nnet_UASI20_UT_pred) *100
    RMSE_nnet_UASI20_UT_pred <- rmse(UT_true, list_nnet_UASI20_UT_pred)
    AW_nnet_UASI20_UT_pred <- mean(sapply(list_nnet_UASI20_UT_95width, sum))
    list_nnet_UASI20_UT_coverge <- sapply(list_nnet_UASI20_UT_coverge, sum)
    CR_nnet_UASI20_UT_pred <- mean(list_nnet_UASI20_UT_coverge)
    sd_CR_nnet_UASI20_UT_pred <- sd(list_nnet_UASI20_UT_coverge)
    
    list_nnet_UASI20_SW_pred <- sapply(list_nnet_UASI20_SW_pred, sum)
    mean_nnet_UASI20_SW_pred <- mean(list_nnet_UASI20_SW_pred)
    sd_nnet_UASI20_SW_pred <- sd(list_nnet_UASI20_SW_pred)
    list_nnet_UASI20_SW_SE <- sapply(list_nnet_UASI20_SW_SE, sum)
    mean_nnet_UASI20_SW_SE <- mean(list_nnet_UASI20_SW_SE)
    sd_nnet_UASI20_SW_SE <- sd(list_nnet_UASI20_SW_SE)
    CIlower_nnet_UASI20_SW_pred <- mean_nnet_UASI20_SW_pred - (2*mean_nnet_UASI20_SW_SE)
    CIupper_nnet_UASI20_SW_pred <- mean_nnet_UASI20_SW_pred + (2*mean_nnet_UASI20_SW_SE)
    nnet_UASI20_SW_pred_max <- max(list_nnet_UASI20_SW_pred) 
    nnet_UASI20_SW_pred_min <- min(list_nnet_UASI20_SW_pred)
    RB_nnet_UASI20_SW_pred <- bias(SW_true, list_nnet_UASI20_SW_pred)
    bias_RB_nnet_UASI20_SW_pred <- list_nnet_UASI20_SW_pred - SW_true
    sd_RB_nnet_UASI20_SW_pred <- sd(bias_RB_nnet_UASI20_SW_pred)    
    PB_nnet_UASI20_SW_pred <- percent_bias(SW_true, list_nnet_UASI20_SW_pred) *100
    RMSE_nnet_UASI20_SW_pred <- rmse(SW_true, list_nnet_UASI20_SW_pred)
    AW_nnet_UASI20_SW_pred <- mean(sapply(list_nnet_UASI20_SW_95width, sum))
    list_nnet_UASI20_SW_coverge <- sapply(list_nnet_UASI20_SW_coverge, sum)
    CR_nnet_UASI20_SW_pred <- mean(list_nnet_UASI20_SW_coverge)
    sd_CR_nnet_UASI20_SW_pred <- sd(list_nnet_UASI20_SW_coverge)
    
    list_nnet_UASI20_OU_pred <- sapply(list_nnet_UASI20_OU_pred, sum)
    mean_nnet_UASI20_OU_pred <- mean(list_nnet_UASI20_OU_pred)
    sd_nnet_UASI20_OU_pred <- sd(list_nnet_UASI20_OU_pred)
    list_nnet_UASI20_OU_SE <- sapply(list_nnet_UASI20_OU_SE, sum)
    mean_nnet_UASI20_OU_SE <- mean(list_nnet_UASI20_OU_SE)
    sd_nnet_UASI20_OU_SE <- sd(list_nnet_UASI20_OU_SE)
    CIlower_nnet_UASI20_OU_pred <- mean_nnet_UASI20_OU_pred - (2*mean_nnet_UASI20_OU_SE)
    CIupper_nnet_UASI20_OU_pred <- mean_nnet_UASI20_OU_pred + (2*mean_nnet_UASI20_OU_SE)
    nnet_UASI20_OU_pred_max <- max(list_nnet_UASI20_OU_pred) 
    nnet_UASI20_OU_pred_min <- min(list_nnet_UASI20_OU_pred)
    RB_nnet_UASI20_OU_pred <- bias(OU_true, list_nnet_UASI20_OU_pred)
    bias_RB_nnet_UASI20_OU_pred <- list_nnet_UASI20_OU_pred - OU_true
    sd_RB_nnet_UASI20_OU_pred <- sd(bias_RB_nnet_UASI20_OU_pred)    
    PB_nnet_UASI20_OU_pred <- percent_bias(OU_true, list_nnet_UASI20_OU_pred) *100
    RMSE_nnet_UASI20_OU_pred <- rmse(OU_true, list_nnet_UASI20_OU_pred)
    AW_nnet_UASI20_OU_pred <- mean(sapply(list_nnet_UASI20_OU_95width, sum))
    list_nnet_UASI20_OU_coverge <- sapply(list_nnet_UASI20_OU_coverge, sum)
    CR_nnet_UASI20_OU_pred <- mean(list_nnet_UASI20_OU_coverge)
    sd_CR_nnet_UASI20_OU_pred <- sd(list_nnet_UASI20_OU_coverge)
  }
  
  #Performance of UASI5
  {
    list_nnet_UASI5_RT_pred <- sapply(list_nnet_UASI5_RT_pred, sum)
    mean_nnet_UASI5_RT_pred <- mean(list_nnet_UASI5_RT_pred)
    sd_nnet_UASI5_RT_pred <- sd(list_nnet_UASI5_RT_pred)
    list_nnet_UASI5_RT_SE <- sapply(list_nnet_UASI5_RT_SE, sum)
    mean_nnet_UASI5_RT_SE <- mean(list_nnet_UASI5_RT_SE)
    sd_nnet_UASI5_RT_SE <- sd(list_nnet_UASI5_RT_SE)
    CIlower_nnet_UASI5_RT_pred <- mean_nnet_UASI5_RT_pred - (2*mean_nnet_UASI5_RT_SE)
    CIupper_nnet_UASI5_RT_pred <- mean_nnet_UASI5_RT_pred + (2*mean_nnet_UASI5_RT_SE)
    nnet_UASI5_RT_pred_max <- max(list_nnet_UASI5_RT_pred) 
    nnet_UASI5_RT_pred_min <- min(list_nnet_UASI5_RT_pred)
    RB_nnet_UASI5_RT_pred <- bias(RT_true, list_nnet_UASI5_RT_pred)
    bias_RB_nnet_UASI5_RT_pred <- list_nnet_UASI5_RT_pred - RT_true
    sd_RB_nnet_UASI5_RT_pred <- sd(bias_RB_nnet_UASI5_RT_pred)    
    PB_nnet_UASI5_RT_pred <- percent_bias(RT_true, list_nnet_UASI5_RT_pred) *100
    RMSE_nnet_UASI5_RT_pred <- rmse(RT_true, list_nnet_UASI5_RT_pred)
    AW_nnet_UASI5_RT_pred <- mean(sapply(list_nnet_UASI5_RT_95width, sum))
    list_nnet_UASI5_RT_coverge <- sapply(list_nnet_UASI5_RT_coverge, sum)
    CR_nnet_UASI5_RT_pred <- mean(list_nnet_UASI5_RT_coverge)
    sd_CR_nnet_UASI5_RT_pred <- sd(list_nnet_UASI5_RT_coverge)
    
    list_nnet_UASI5_UT_pred <- sapply(list_nnet_UASI5_UT_pred, sum)
    mean_nnet_UASI5_UT_pred <- mean(list_nnet_UASI5_UT_pred)
    sd_nnet_UASI5_UT_pred <- sd(list_nnet_UASI5_UT_pred)
    list_nnet_UASI5_UT_SE <- sapply(list_nnet_UASI5_UT_SE, sum)
    mean_nnet_UASI5_UT_SE <- mean(list_nnet_UASI5_UT_SE)
    sd_nnet_UASI5_UT_SE <- sd(list_nnet_UASI5_UT_SE)
    CIlower_nnet_UASI5_UT_pred <- mean_nnet_UASI5_UT_pred - (2*mean_nnet_UASI5_UT_SE)
    CIupper_nnet_UASI5_UT_pred <- mean_nnet_UASI5_UT_pred + (2*mean_nnet_UASI5_UT_SE)
    nnet_UASI5_UT_pred_max <- max(list_nnet_UASI5_UT_pred) 
    nnet_UASI5_UT_pred_min <- min(list_nnet_UASI5_UT_pred)
    RB_nnet_UASI5_UT_pred <- bias(UT_true, list_nnet_UASI5_UT_pred)
    bias_RB_nnet_UASI5_UT_pred <- list_nnet_UASI5_UT_pred - UT_true
    sd_RB_nnet_UASI5_UT_pred <- sd(bias_RB_nnet_UASI5_UT_pred)    
    PB_nnet_UASI5_UT_pred <- percent_bias(UT_true, list_nnet_UASI5_UT_pred) *100
    RMSE_nnet_UASI5_UT_pred <- rmse(UT_true, list_nnet_UASI5_UT_pred)
    AW_nnet_UASI5_UT_pred <- mean(sapply(list_nnet_UASI5_UT_95width, sum))
    list_nnet_UASI5_UT_coverge <- sapply(list_nnet_UASI5_UT_coverge, sum)
    CR_nnet_UASI5_UT_pred <- mean(list_nnet_UASI5_UT_coverge)
    sd_CR_nnet_UASI5_UT_pred <- sd(list_nnet_UASI5_UT_coverge)
    
    list_nnet_UASI5_SW_pred <- sapply(list_nnet_UASI5_SW_pred, sum)
    mean_nnet_UASI5_SW_pred <- mean(list_nnet_UASI5_SW_pred)
    sd_nnet_UASI5_SW_pred <- sd(list_nnet_UASI5_SW_pred)
    list_nnet_UASI5_SW_SE <- sapply(list_nnet_UASI5_SW_SE, sum)
    mean_nnet_UASI5_SW_SE <- mean(list_nnet_UASI5_SW_SE)
    sd_nnet_UASI5_SW_SE <- sd(list_nnet_UASI5_SW_SE)
    CIlower_nnet_UASI5_SW_pred <- mean_nnet_UASI5_SW_pred - (2*mean_nnet_UASI5_SW_SE)
    CIupper_nnet_UASI5_SW_pred <- mean_nnet_UASI5_SW_pred + (2*mean_nnet_UASI5_SW_SE)
    nnet_UASI5_SW_pred_max <- max(list_nnet_UASI5_SW_pred) 
    nnet_UASI5_SW_pred_min <- min(list_nnet_UASI5_SW_pred)
    RB_nnet_UASI5_SW_pred <- bias(SW_true, list_nnet_UASI5_SW_pred)
    bias_RB_nnet_UASI5_SW_pred <- list_nnet_UASI5_SW_pred - SW_true
    sd_RB_nnet_UASI5_SW_pred <- sd(bias_RB_nnet_UASI5_SW_pred)    
    PB_nnet_UASI5_SW_pred <- percent_bias(SW_true, list_nnet_UASI5_SW_pred) *100
    RMSE_nnet_UASI5_SW_pred <- rmse(SW_true, list_nnet_UASI5_SW_pred)
    AW_nnet_UASI5_SW_pred <- mean(sapply(list_nnet_UASI5_SW_95width, sum))
    list_nnet_UASI5_SW_coverge <- sapply(list_nnet_UASI5_SW_coverge, sum)
    CR_nnet_UASI5_SW_pred <- mean(list_nnet_UASI5_SW_coverge)
    sd_CR_nnet_UASI5_SW_pred <- sd(list_nnet_UASI5_SW_coverge)
    
    list_nnet_UASI5_OU_pred <- sapply(list_nnet_UASI5_OU_pred, sum)
    mean_nnet_UASI5_OU_pred <- mean(list_nnet_UASI5_OU_pred)
    sd_nnet_UASI5_OU_pred <- sd(list_nnet_UASI5_OU_pred)
    list_nnet_UASI5_OU_SE <- sapply(list_nnet_UASI5_OU_SE, sum)
    mean_nnet_UASI5_OU_SE <- mean(list_nnet_UASI5_OU_SE)
    sd_nnet_UASI5_OU_SE <- sd(list_nnet_UASI5_OU_SE)
    CIlower_nnet_UASI5_OU_pred <- mean_nnet_UASI5_OU_pred - (2*mean_nnet_UASI5_OU_SE)
    CIupper_nnet_UASI5_OU_pred <- mean_nnet_UASI5_OU_pred + (2*mean_nnet_UASI5_OU_SE)
    nnet_UASI5_OU_pred_max <- max(list_nnet_UASI5_OU_pred) 
    nnet_UASI5_OU_pred_min <- min(list_nnet_UASI5_OU_pred)
    RB_nnet_UASI5_OU_pred <- bias(OU_true, list_nnet_UASI5_OU_pred)
    bias_RB_nnet_UASI5_OU_pred <- list_nnet_UASI5_OU_pred - OU_true
    sd_RB_nnet_UASI5_OU_pred <- sd(bias_RB_nnet_UASI5_OU_pred)    
    PB_nnet_UASI5_OU_pred <- percent_bias(OU_true, list_nnet_UASI5_OU_pred) *100
    RMSE_nnet_UASI5_OU_pred <- rmse(OU_true, list_nnet_UASI5_OU_pred)
    AW_nnet_UASI5_OU_pred <- mean(sapply(list_nnet_UASI5_OU_95width, sum))
    list_nnet_UASI5_OU_coverge <- sapply(list_nnet_UASI5_OU_coverge, sum)
    CR_nnet_UASI5_OU_pred <- mean(list_nnet_UASI5_OU_coverge)
    sd_CR_nnet_UASI5_OU_pred <- sd(list_nnet_UASI5_OU_coverge)
  }
  
  #Performance of MASI80
  {
    list_nnet_MASI80_RT_pred <- sapply(list_nnet_MASI80_RT_pred, sum)
    mean_nnet_MASI80_RT_pred <- mean(list_nnet_MASI80_RT_pred)
    sd_nnet_MASI80_RT_pred <- sd(list_nnet_MASI80_RT_pred)
    list_nnet_MASI80_RT_SE <- sapply(list_nnet_MASI80_RT_SE, sum)
    mean_nnet_MASI80_RT_SE <- mean(list_nnet_MASI80_RT_SE)
    sd_nnet_MASI80_RT_SE <- sd(list_nnet_MASI80_RT_SE)
    CIlower_nnet_MASI80_RT_pred <- mean_nnet_MASI80_RT_pred - (2*mean_nnet_MASI80_RT_SE)
    CIupper_nnet_MASI80_RT_pred <- mean_nnet_MASI80_RT_pred + (2*mean_nnet_MASI80_RT_SE)
    nnet_MASI80_RT_pred_max <- max(list_nnet_MASI80_RT_pred) 
    nnet_MASI80_RT_pred_min <- min(list_nnet_MASI80_RT_pred)
    RB_nnet_MASI80_RT_pred <- bias(RT_true, list_nnet_MASI80_RT_pred)
    bias_RB_nnet_MASI80_RT_pred <- list_nnet_MASI80_RT_pred - RT_true
    sd_RB_nnet_MASI80_RT_pred <- sd(bias_RB_nnet_MASI80_RT_pred)    
    PB_nnet_MASI80_RT_pred <- percent_bias(RT_true, list_nnet_MASI80_RT_pred) *100
    RMSE_nnet_MASI80_RT_pred <- rmse(RT_true, list_nnet_MASI80_RT_pred)
    AW_nnet_MASI80_RT_pred <- mean(sapply(list_nnet_MASI80_RT_95width, sum))
    list_nnet_MASI80_RT_coverge <- sapply(list_nnet_MASI80_RT_coverge, sum)
    CR_nnet_MASI80_RT_pred <- mean(list_nnet_MASI80_RT_coverge)
    sd_CR_nnet_MASI80_RT_pred <- sd(list_nnet_MASI80_RT_coverge)
    
    list_nnet_MASI80_UT_pred <- sapply(list_nnet_MASI80_UT_pred, sum)
    mean_nnet_MASI80_UT_pred <- mean(list_nnet_MASI80_UT_pred)
    sd_nnet_MASI80_UT_pred <- sd(list_nnet_MASI80_UT_pred)
    list_nnet_MASI80_UT_SE <- sapply(list_nnet_MASI80_UT_SE, sum)
    mean_nnet_MASI80_UT_SE <- mean(list_nnet_MASI80_UT_SE)
    sd_nnet_MASI80_UT_SE <- sd(list_nnet_MASI80_UT_SE)
    CIlower_nnet_MASI80_UT_pred <- mean_nnet_MASI80_UT_pred - (2*mean_nnet_MASI80_UT_SE)
    CIupper_nnet_MASI80_UT_pred <- mean_nnet_MASI80_UT_pred + (2*mean_nnet_MASI80_UT_SE)
    nnet_MASI80_UT_pred_max <- max(list_nnet_MASI80_UT_pred) 
    nnet_MASI80_UT_pred_min <- min(list_nnet_MASI80_UT_pred)
    RB_nnet_MASI80_UT_pred <- bias(UT_true, list_nnet_MASI80_UT_pred)
    bias_RB_nnet_MASI80_UT_pred <- list_nnet_MASI80_UT_pred - UT_true
    sd_RB_nnet_MASI80_UT_pred <- sd(bias_RB_nnet_MASI80_UT_pred)    
    PB_nnet_MASI80_UT_pred <- percent_bias(UT_true, list_nnet_MASI80_UT_pred) *100
    RMSE_nnet_MASI80_UT_pred <- rmse(UT_true, list_nnet_MASI80_UT_pred)
    AW_nnet_MASI80_UT_pred <- mean(sapply(list_nnet_MASI80_UT_95width, sum))
    list_nnet_MASI80_UT_coverge <- sapply(list_nnet_MASI80_UT_coverge, sum)
    CR_nnet_MASI80_UT_pred <- mean(list_nnet_MASI80_UT_coverge)
    sd_CR_nnet_MASI80_UT_pred <- sd(list_nnet_MASI80_UT_coverge)
    
    list_nnet_MASI80_SW_pred <- sapply(list_nnet_MASI80_SW_pred, sum)
    mean_nnet_MASI80_SW_pred <- mean(list_nnet_MASI80_SW_pred)
    sd_nnet_MASI80_SW_pred <- sd(list_nnet_MASI80_SW_pred)
    list_nnet_MASI80_SW_SE <- sapply(list_nnet_MASI80_SW_SE, sum)
    mean_nnet_MASI80_SW_SE <- mean(list_nnet_MASI80_SW_SE)
    sd_nnet_MASI80_SW_SE <- sd(list_nnet_MASI80_SW_SE)
    CIlower_nnet_MASI80_SW_pred <- mean_nnet_MASI80_SW_pred - (2*mean_nnet_MASI80_SW_SE)
    CIupper_nnet_MASI80_SW_pred <- mean_nnet_MASI80_SW_pred + (2*mean_nnet_MASI80_SW_SE)
    nnet_MASI80_SW_pred_max <- max(list_nnet_MASI80_SW_pred) 
    nnet_MASI80_SW_pred_min <- min(list_nnet_MASI80_SW_pred)
    RB_nnet_MASI80_SW_pred <- bias(SW_true, list_nnet_MASI80_SW_pred)
    bias_RB_nnet_MASI80_SW_pred <- list_nnet_MASI80_SW_pred - SW_true
    sd_RB_nnet_MASI80_SW_pred <- sd(bias_RB_nnet_MASI80_SW_pred)    
    PB_nnet_MASI80_SW_pred <- percent_bias(SW_true, list_nnet_MASI80_SW_pred) *100
    RMSE_nnet_MASI80_SW_pred <- rmse(SW_true, list_nnet_MASI80_SW_pred)
    AW_nnet_MASI80_SW_pred <- mean(sapply(list_nnet_MASI80_SW_95width, sum))
    list_nnet_MASI80_SW_coverge <- sapply(list_nnet_MASI80_SW_coverge, sum)
    CR_nnet_MASI80_SW_pred <- mean(list_nnet_MASI80_SW_coverge)
    sd_CR_nnet_MASI80_SW_pred <- sd(list_nnet_MASI80_SW_coverge)
    
    list_nnet_MASI80_OU_pred <- sapply(list_nnet_MASI80_OU_pred, sum)
    mean_nnet_MASI80_OU_pred <- mean(list_nnet_MASI80_OU_pred)
    sd_nnet_MASI80_OU_pred <- sd(list_nnet_MASI80_OU_pred)
    list_nnet_MASI80_OU_SE <- sapply(list_nnet_MASI80_OU_SE, sum)
    mean_nnet_MASI80_OU_SE <- mean(list_nnet_MASI80_OU_SE)
    sd_nnet_MASI80_OU_SE <- sd(list_nnet_MASI80_OU_SE)
    CIlower_nnet_MASI80_OU_pred <- mean_nnet_MASI80_OU_pred - (2*mean_nnet_MASI80_OU_SE)
    CIupper_nnet_MASI80_OU_pred <- mean_nnet_MASI80_OU_pred + (2*mean_nnet_MASI80_OU_SE)
    nnet_MASI80_OU_pred_max <- max(list_nnet_MASI80_OU_pred) 
    nnet_MASI80_OU_pred_min <- min(list_nnet_MASI80_OU_pred)
    RB_nnet_MASI80_OU_pred <- bias(OU_true, list_nnet_MASI80_OU_pred)
    bias_RB_nnet_MASI80_OU_pred <- list_nnet_MASI80_OU_pred - OU_true
    sd_RB_nnet_MASI80_OU_pred <- sd(bias_RB_nnet_MASI80_OU_pred)    
    PB_nnet_MASI80_OU_pred <- percent_bias(OU_true, list_nnet_MASI80_OU_pred) *100
    RMSE_nnet_MASI80_OU_pred <- rmse(OU_true, list_nnet_MASI80_OU_pred)
    AW_nnet_MASI80_OU_pred <- mean(sapply(list_nnet_MASI80_OU_95width, sum))
    list_nnet_MASI80_OU_coverge <- sapply(list_nnet_MASI80_OU_coverge, sum)
    CR_nnet_MASI80_OU_pred <- mean(list_nnet_MASI80_OU_coverge)
    sd_CR_nnet_MASI80_OU_pred <- sd(list_nnet_MASI80_OU_coverge)
  }
  
  #Performance of MASI50
  {
    list_nnet_MASI50_RT_pred <- sapply(list_nnet_MASI50_RT_pred, sum)
    mean_nnet_MASI50_RT_pred <- mean(list_nnet_MASI50_RT_pred)
    sd_nnet_MASI50_RT_pred <- sd(list_nnet_MASI50_RT_pred)
    list_nnet_MASI50_RT_SE <- sapply(list_nnet_MASI50_RT_SE, sum)
    mean_nnet_MASI50_RT_SE <- mean(list_nnet_MASI50_RT_SE)
    sd_nnet_MASI50_RT_SE <- sd(list_nnet_MASI50_RT_SE)
    CIlower_nnet_MASI50_RT_pred <- mean_nnet_MASI50_RT_pred - (2*mean_nnet_MASI50_RT_SE)
    CIupper_nnet_MASI50_RT_pred <- mean_nnet_MASI50_RT_pred + (2*mean_nnet_MASI50_RT_SE)
    nnet_MASI50_RT_pred_max <- max(list_nnet_MASI50_RT_pred) 
    nnet_MASI50_RT_pred_min <- min(list_nnet_MASI50_RT_pred)
    RB_nnet_MASI50_RT_pred <- bias(RT_true, list_nnet_MASI50_RT_pred)
    bias_RB_nnet_MASI50_RT_pred <- list_nnet_MASI50_RT_pred - RT_true
    sd_RB_nnet_MASI50_RT_pred <- sd(bias_RB_nnet_MASI50_RT_pred)    
    PB_nnet_MASI50_RT_pred <- percent_bias(RT_true, list_nnet_MASI50_RT_pred) *100
    RMSE_nnet_MASI50_RT_pred <- rmse(RT_true, list_nnet_MASI50_RT_pred)
    AW_nnet_MASI50_RT_pred <- mean(sapply(list_nnet_MASI50_RT_95width, sum))
    list_nnet_MASI50_RT_coverge <- sapply(list_nnet_MASI50_RT_coverge, sum)
    CR_nnet_MASI50_RT_pred <- mean(list_nnet_MASI50_RT_coverge)
    sd_CR_nnet_MASI50_RT_pred <- sd(list_nnet_MASI50_RT_coverge)
    
    list_nnet_MASI50_UT_pred <- sapply(list_nnet_MASI50_UT_pred, sum)
    mean_nnet_MASI50_UT_pred <- mean(list_nnet_MASI50_UT_pred)
    sd_nnet_MASI50_UT_pred <- sd(list_nnet_MASI50_UT_pred)
    list_nnet_MASI50_UT_SE <- sapply(list_nnet_MASI50_UT_SE, sum)
    mean_nnet_MASI50_UT_SE <- mean(list_nnet_MASI50_UT_SE)
    sd_nnet_MASI50_UT_SE <- sd(list_nnet_MASI50_UT_SE)
    CIlower_nnet_MASI50_UT_pred <- mean_nnet_MASI50_UT_pred - (2*mean_nnet_MASI50_UT_SE)
    CIupper_nnet_MASI50_UT_pred <- mean_nnet_MASI50_UT_pred + (2*mean_nnet_MASI50_UT_SE)
    nnet_MASI50_UT_pred_max <- max(list_nnet_MASI50_UT_pred) 
    nnet_MASI50_UT_pred_min <- min(list_nnet_MASI50_UT_pred)
    RB_nnet_MASI50_UT_pred <- bias(UT_true, list_nnet_MASI50_UT_pred)
    bias_RB_nnet_MASI50_UT_pred <- list_nnet_MASI50_UT_pred - UT_true
    sd_RB_nnet_MASI50_UT_pred <- sd(bias_RB_nnet_MASI50_UT_pred)    
    PB_nnet_MASI50_UT_pred <- percent_bias(UT_true, list_nnet_MASI50_UT_pred) *100
    RMSE_nnet_MASI50_UT_pred <- rmse(UT_true, list_nnet_MASI50_UT_pred)
    AW_nnet_MASI50_UT_pred <- mean(sapply(list_nnet_MASI50_UT_95width, sum))
    list_nnet_MASI50_UT_coverge <- sapply(list_nnet_MASI50_UT_coverge, sum)
    CR_nnet_MASI50_UT_pred <- mean(list_nnet_MASI50_UT_coverge)
    sd_CR_nnet_MASI50_UT_pred <- sd(list_nnet_MASI50_UT_coverge)
    
    list_nnet_MASI50_SW_pred <- sapply(list_nnet_MASI50_SW_pred, sum)
    mean_nnet_MASI50_SW_pred <- mean(list_nnet_MASI50_SW_pred)
    sd_nnet_MASI50_SW_pred <- sd(list_nnet_MASI50_SW_pred)
    list_nnet_MASI50_SW_SE <- sapply(list_nnet_MASI50_SW_SE, sum)
    mean_nnet_MASI50_SW_SE <- mean(list_nnet_MASI50_SW_SE)
    sd_nnet_MASI50_SW_SE <- sd(list_nnet_MASI50_SW_SE)
    CIlower_nnet_MASI50_SW_pred <- mean_nnet_MASI50_SW_pred - (2*mean_nnet_MASI50_SW_SE)
    CIupper_nnet_MASI50_SW_pred <- mean_nnet_MASI50_SW_pred + (2*mean_nnet_MASI50_SW_SE)
    nnet_MASI50_SW_pred_max <- max(list_nnet_MASI50_SW_pred) 
    nnet_MASI50_SW_pred_min <- min(list_nnet_MASI50_SW_pred)
    RB_nnet_MASI50_SW_pred <- bias(SW_true, list_nnet_MASI50_SW_pred)
    bias_RB_nnet_MASI50_SW_pred <- list_nnet_MASI50_SW_pred - SW_true
    sd_RB_nnet_MASI50_SW_pred <- sd(bias_RB_nnet_MASI50_SW_pred)    
    PB_nnet_MASI50_SW_pred <- percent_bias(SW_true, list_nnet_MASI50_SW_pred) *100
    RMSE_nnet_MASI50_SW_pred <- rmse(SW_true, list_nnet_MASI50_SW_pred)
    AW_nnet_MASI50_SW_pred <- mean(sapply(list_nnet_MASI50_SW_95width, sum))
    list_nnet_MASI50_SW_coverge <- sapply(list_nnet_MASI50_SW_coverge, sum)
    CR_nnet_MASI50_SW_pred <- mean(list_nnet_MASI50_SW_coverge)
    sd_CR_nnet_MASI50_SW_pred <- sd(list_nnet_MASI50_SW_coverge)
    
    list_nnet_MASI50_OU_pred <- sapply(list_nnet_MASI50_OU_pred, sum)
    mean_nnet_MASI50_OU_pred <- mean(list_nnet_MASI50_OU_pred)
    sd_nnet_MASI50_OU_pred <- sd(list_nnet_MASI50_OU_pred)
    list_nnet_MASI50_OU_SE <- sapply(list_nnet_MASI50_OU_SE, sum)
    mean_nnet_MASI50_OU_SE <- mean(list_nnet_MASI50_OU_SE)
    sd_nnet_MASI50_OU_SE <- sd(list_nnet_MASI50_OU_SE)
    CIlower_nnet_MASI50_OU_pred <- mean_nnet_MASI50_OU_pred - (2*mean_nnet_MASI50_OU_SE)
    CIupper_nnet_MASI50_OU_pred <- mean_nnet_MASI50_OU_pred + (2*mean_nnet_MASI50_OU_SE)
    nnet_MASI50_OU_pred_max <- max(list_nnet_MASI50_OU_pred) 
    nnet_MASI50_OU_pred_min <- min(list_nnet_MASI50_OU_pred)
    RB_nnet_MASI50_OU_pred <- bias(OU_true, list_nnet_MASI50_OU_pred)
    bias_RB_nnet_MASI50_OU_pred <- list_nnet_MASI50_OU_pred - OU_true
    sd_RB_nnet_MASI50_OU_pred <- sd(bias_RB_nnet_MASI50_OU_pred)    
    PB_nnet_MASI50_OU_pred <- percent_bias(OU_true, list_nnet_MASI50_OU_pred) *100
    RMSE_nnet_MASI50_OU_pred <- rmse(OU_true, list_nnet_MASI50_OU_pred)
    AW_nnet_MASI50_OU_pred <- mean(sapply(list_nnet_MASI50_OU_95width, sum))
    list_nnet_MASI50_OU_coverge <- sapply(list_nnet_MASI50_OU_coverge, sum)
    CR_nnet_MASI50_OU_pred <- mean(list_nnet_MASI50_OU_coverge)
    sd_CR_nnet_MASI50_OU_pred <- sd(list_nnet_MASI50_OU_coverge)
  }
  
  #Performance of MASI20
  {
    list_nnet_MASI20_RT_pred <- sapply(list_nnet_MASI20_RT_pred, sum)
    mean_nnet_MASI20_RT_pred <- mean(list_nnet_MASI20_RT_pred)
    sd_nnet_MASI20_RT_pred <- sd(list_nnet_MASI20_RT_pred)
    list_nnet_MASI20_RT_SE <- sapply(list_nnet_MASI20_RT_SE, sum)
    mean_nnet_MASI20_RT_SE <- mean(list_nnet_MASI20_RT_SE)
    sd_nnet_MASI20_RT_SE <- sd(list_nnet_MASI20_RT_SE)
    CIlower_nnet_MASI20_RT_pred <- mean_nnet_MASI20_RT_pred - (2*mean_nnet_MASI20_RT_SE)
    CIupper_nnet_MASI20_RT_pred <- mean_nnet_MASI20_RT_pred + (2*mean_nnet_MASI20_RT_SE)
    nnet_MASI20_RT_pred_max <- max(list_nnet_MASI20_RT_pred) 
    nnet_MASI20_RT_pred_min <- min(list_nnet_MASI20_RT_pred)
    RB_nnet_MASI20_RT_pred <- bias(RT_true, list_nnet_MASI20_RT_pred)
    bias_RB_nnet_MASI20_RT_pred <- list_nnet_MASI20_RT_pred - RT_true
    sd_RB_nnet_MASI20_RT_pred <- sd(bias_RB_nnet_MASI20_RT_pred)    
    PB_nnet_MASI20_RT_pred <- percent_bias(RT_true, list_nnet_MASI20_RT_pred) *100
    RMSE_nnet_MASI20_RT_pred <- rmse(RT_true, list_nnet_MASI20_RT_pred)
    AW_nnet_MASI20_RT_pred <- mean(sapply(list_nnet_MASI20_RT_95width, sum))
    list_nnet_MASI20_RT_coverge <- sapply(list_nnet_MASI20_RT_coverge, sum)
    CR_nnet_MASI20_RT_pred <- mean(list_nnet_MASI20_RT_coverge)
    sd_CR_nnet_MASI20_RT_pred <- sd(list_nnet_MASI20_RT_coverge)
    
    list_nnet_MASI20_UT_pred <- sapply(list_nnet_MASI20_UT_pred, sum)
    mean_nnet_MASI20_UT_pred <- mean(list_nnet_MASI20_UT_pred)
    sd_nnet_MASI20_UT_pred <- sd(list_nnet_MASI20_UT_pred)
    list_nnet_MASI20_UT_SE <- sapply(list_nnet_MASI20_UT_SE, sum)
    mean_nnet_MASI20_UT_SE <- mean(list_nnet_MASI20_UT_SE)
    sd_nnet_MASI20_UT_SE <- sd(list_nnet_MASI20_UT_SE)
    CIlower_nnet_MASI20_UT_pred <- mean_nnet_MASI20_UT_pred - (2*mean_nnet_MASI20_UT_SE)
    CIupper_nnet_MASI20_UT_pred <- mean_nnet_MASI20_UT_pred + (2*mean_nnet_MASI20_UT_SE)
    nnet_MASI20_UT_pred_max <- max(list_nnet_MASI20_UT_pred) 
    nnet_MASI20_UT_pred_min <- min(list_nnet_MASI20_UT_pred)
    RB_nnet_MASI20_UT_pred <- bias(UT_true, list_nnet_MASI20_UT_pred)
    bias_RB_nnet_MASI20_UT_pred <- list_nnet_MASI20_UT_pred - UT_true
    sd_RB_nnet_MASI20_UT_pred <- sd(bias_RB_nnet_MASI20_UT_pred)    
    PB_nnet_MASI20_UT_pred <- percent_bias(UT_true, list_nnet_MASI20_UT_pred) *100
    RMSE_nnet_MASI20_UT_pred <- rmse(UT_true, list_nnet_MASI20_UT_pred)
    AW_nnet_MASI20_UT_pred <- mean(sapply(list_nnet_MASI20_UT_95width, sum))
    list_nnet_MASI20_UT_coverge <- sapply(list_nnet_MASI20_UT_coverge, sum)
    CR_nnet_MASI20_UT_pred <- mean(list_nnet_MASI20_UT_coverge)
    sd_CR_nnet_MASI20_UT_pred <- sd(list_nnet_MASI20_UT_coverge)
    
    list_nnet_MASI20_SW_pred <- sapply(list_nnet_MASI20_SW_pred, sum)
    mean_nnet_MASI20_SW_pred <- mean(list_nnet_MASI20_SW_pred)
    sd_nnet_MASI20_SW_pred <- sd(list_nnet_MASI20_SW_pred)
    list_nnet_MASI20_SW_SE <- sapply(list_nnet_MASI20_SW_SE, sum)
    mean_nnet_MASI20_SW_SE <- mean(list_nnet_MASI20_SW_SE)
    sd_nnet_MASI20_SW_SE <- sd(list_nnet_MASI20_SW_SE)
    CIlower_nnet_MASI20_SW_pred <- mean_nnet_MASI20_SW_pred - (2*mean_nnet_MASI20_SW_SE)
    CIupper_nnet_MASI20_SW_pred <- mean_nnet_MASI20_SW_pred + (2*mean_nnet_MASI20_SW_SE)
    nnet_MASI20_SW_pred_max <- max(list_nnet_MASI20_SW_pred) 
    nnet_MASI20_SW_pred_min <- min(list_nnet_MASI20_SW_pred)
    RB_nnet_MASI20_SW_pred <- bias(SW_true, list_nnet_MASI20_SW_pred)
    bias_RB_nnet_MASI20_SW_pred <- list_nnet_MASI20_SW_pred - SW_true
    sd_RB_nnet_MASI20_SW_pred <- sd(bias_RB_nnet_MASI20_SW_pred)    
    PB_nnet_MASI20_SW_pred <- percent_bias(SW_true, list_nnet_MASI20_SW_pred) *100
    RMSE_nnet_MASI20_SW_pred <- rmse(SW_true, list_nnet_MASI20_SW_pred)
    AW_nnet_MASI20_SW_pred <- mean(sapply(list_nnet_MASI20_SW_95width, sum))
    list_nnet_MASI20_SW_coverge <- sapply(list_nnet_MASI20_SW_coverge, sum)
    CR_nnet_MASI20_SW_pred <- mean(list_nnet_MASI20_SW_coverge)
    sd_CR_nnet_MASI20_SW_pred <- sd(list_nnet_MASI20_SW_coverge)
    
    list_nnet_MASI20_OU_pred <- sapply(list_nnet_MASI20_OU_pred, sum)
    mean_nnet_MASI20_OU_pred <- mean(list_nnet_MASI20_OU_pred)
    sd_nnet_MASI20_OU_pred <- sd(list_nnet_MASI20_OU_pred)
    list_nnet_MASI20_OU_SE <- sapply(list_nnet_MASI20_OU_SE, sum)
    mean_nnet_MASI20_OU_SE <- mean(list_nnet_MASI20_OU_SE)
    sd_nnet_MASI20_OU_SE <- sd(list_nnet_MASI20_OU_SE)
    CIlower_nnet_MASI20_OU_pred <- mean_nnet_MASI20_OU_pred - (2*mean_nnet_MASI20_OU_SE)
    CIupper_nnet_MASI20_OU_pred <- mean_nnet_MASI20_OU_pred + (2*mean_nnet_MASI20_OU_SE)
    nnet_MASI20_OU_pred_max <- max(list_nnet_MASI20_OU_pred) 
    nnet_MASI20_OU_pred_min <- min(list_nnet_MASI20_OU_pred)
    RB_nnet_MASI20_OU_pred <- bias(OU_true, list_nnet_MASI20_OU_pred)
    bias_RB_nnet_MASI20_OU_pred <- list_nnet_MASI20_OU_pred - OU_true
    sd_RB_nnet_MASI20_OU_pred <- sd(bias_RB_nnet_MASI20_OU_pred)    
    PB_nnet_MASI20_OU_pred <- percent_bias(OU_true, list_nnet_MASI20_OU_pred) *100
    RMSE_nnet_MASI20_OU_pred <- rmse(OU_true, list_nnet_MASI20_OU_pred)
    AW_nnet_MASI20_OU_pred <- mean(sapply(list_nnet_MASI20_OU_95width, sum))
    list_nnet_MASI20_OU_coverge <- sapply(list_nnet_MASI20_OU_coverge, sum)
    CR_nnet_MASI20_OU_pred <- mean(list_nnet_MASI20_OU_coverge)
    sd_CR_nnet_MASI20_OU_pred <- sd(list_nnet_MASI20_OU_coverge)
  }
  
  #Performance of MASI5
  {
    list_nnet_MASI5_RT_pred <- sapply(list_nnet_MASI5_RT_pred, sum)
    mean_nnet_MASI5_RT_pred <- mean(list_nnet_MASI5_RT_pred)
    sd_nnet_MASI5_RT_pred <- sd(list_nnet_MASI5_RT_pred)
    list_nnet_MASI5_RT_SE <- sapply(list_nnet_MASI5_RT_SE, sum)
    mean_nnet_MASI5_RT_SE <- mean(list_nnet_MASI5_RT_SE)
    sd_nnet_MASI5_RT_SE <- sd(list_nnet_MASI5_RT_SE)
    CIlower_nnet_MASI5_RT_pred <- mean_nnet_MASI5_RT_pred - (2*mean_nnet_MASI5_RT_SE)
    CIupper_nnet_MASI5_RT_pred <- mean_nnet_MASI5_RT_pred + (2*mean_nnet_MASI5_RT_SE)
    nnet_MASI5_RT_pred_max <- max(list_nnet_MASI5_RT_pred) 
    nnet_MASI5_RT_pred_min <- min(list_nnet_MASI5_RT_pred)
    RB_nnet_MASI5_RT_pred <- bias(RT_true, list_nnet_MASI5_RT_pred)
    bias_RB_nnet_MASI5_RT_pred <- list_nnet_MASI5_RT_pred - RT_true
    sd_RB_nnet_MASI5_RT_pred <- sd(bias_RB_nnet_MASI5_RT_pred)    
    PB_nnet_MASI5_RT_pred <- percent_bias(RT_true, list_nnet_MASI5_RT_pred) *100
    RMSE_nnet_MASI5_RT_pred <- rmse(RT_true, list_nnet_MASI5_RT_pred)
    AW_nnet_MASI5_RT_pred <- mean(sapply(list_nnet_MASI5_RT_95width, sum))
    list_nnet_MASI5_RT_coverge <- sapply(list_nnet_MASI5_RT_coverge, sum)
    CR_nnet_MASI5_RT_pred <- mean(list_nnet_MASI5_RT_coverge)
    sd_CR_nnet_MASI5_RT_pred <- sd(list_nnet_MASI5_RT_coverge)
    
    list_nnet_MASI5_UT_pred <- sapply(list_nnet_MASI5_UT_pred, sum)
    mean_nnet_MASI5_UT_pred <- mean(list_nnet_MASI5_UT_pred)
    sd_nnet_MASI5_UT_pred <- sd(list_nnet_MASI5_UT_pred)
    list_nnet_MASI5_UT_SE <- sapply(list_nnet_MASI5_UT_SE, sum)
    mean_nnet_MASI5_UT_SE <- mean(list_nnet_MASI5_UT_SE)
    sd_nnet_MASI5_UT_SE <- sd(list_nnet_MASI5_UT_SE)
    CIlower_nnet_MASI5_UT_pred <- mean_nnet_MASI5_UT_pred - (2*mean_nnet_MASI5_UT_SE)
    CIupper_nnet_MASI5_UT_pred <- mean_nnet_MASI5_UT_pred + (2*mean_nnet_MASI5_UT_SE)
    nnet_MASI5_UT_pred_max <- max(list_nnet_MASI5_UT_pred) 
    nnet_MASI5_UT_pred_min <- min(list_nnet_MASI5_UT_pred)
    RB_nnet_MASI5_UT_pred <- bias(UT_true, list_nnet_MASI5_UT_pred)
    bias_RB_nnet_MASI5_UT_pred <- list_nnet_MASI5_UT_pred - UT_true
    sd_RB_nnet_MASI5_UT_pred <- sd(bias_RB_nnet_MASI5_UT_pred)    
    PB_nnet_MASI5_UT_pred <- percent_bias(UT_true, list_nnet_MASI5_UT_pred) *100
    RMSE_nnet_MASI5_UT_pred <- rmse(UT_true, list_nnet_MASI5_UT_pred)
    AW_nnet_MASI5_UT_pred <- mean(sapply(list_nnet_MASI5_UT_95width, sum))
    list_nnet_MASI5_UT_coverge <- sapply(list_nnet_MASI5_UT_coverge, sum)
    CR_nnet_MASI5_UT_pred <- mean(list_nnet_MASI5_UT_coverge)
    sd_CR_nnet_MASI5_UT_pred <- sd(list_nnet_MASI5_UT_coverge)
    
    list_nnet_MASI5_SW_pred <- sapply(list_nnet_MASI5_SW_pred, sum)
    mean_nnet_MASI5_SW_pred <- mean(list_nnet_MASI5_SW_pred)
    sd_nnet_MASI5_SW_pred <- sd(list_nnet_MASI5_SW_pred)
    list_nnet_MASI5_SW_SE <- sapply(list_nnet_MASI5_SW_SE, sum)
    mean_nnet_MASI5_SW_SE <- mean(list_nnet_MASI5_SW_SE)
    sd_nnet_MASI5_SW_SE <- sd(list_nnet_MASI5_SW_SE)
    CIlower_nnet_MASI5_SW_pred <- mean_nnet_MASI5_SW_pred - (2*mean_nnet_MASI5_SW_SE)
    CIupper_nnet_MASI5_SW_pred <- mean_nnet_MASI5_SW_pred + (2*mean_nnet_MASI5_SW_SE)
    nnet_MASI5_SW_pred_max <- max(list_nnet_MASI5_SW_pred) 
    nnet_MASI5_SW_pred_min <- min(list_nnet_MASI5_SW_pred)
    RB_nnet_MASI5_SW_pred <- bias(SW_true, list_nnet_MASI5_SW_pred)
    bias_RB_nnet_MASI5_SW_pred <- list_nnet_MASI5_SW_pred - SW_true
    sd_RB_nnet_MASI5_SW_pred <- sd(bias_RB_nnet_MASI5_SW_pred)    
    PB_nnet_MASI5_SW_pred <- percent_bias(SW_true, list_nnet_MASI5_SW_pred) *100
    RMSE_nnet_MASI5_SW_pred <- rmse(SW_true, list_nnet_MASI5_SW_pred)
    AW_nnet_MASI5_SW_pred <- mean(sapply(list_nnet_MASI5_SW_95width, sum))
    list_nnet_MASI5_SW_coverge <- sapply(list_nnet_MASI5_SW_coverge, sum)
    CR_nnet_MASI5_SW_pred <- mean(list_nnet_MASI5_SW_coverge)
    sd_CR_nnet_MASI5_SW_pred <- sd(list_nnet_MASI5_SW_coverge)
    
    list_nnet_MASI5_OU_pred <- sapply(list_nnet_MASI5_OU_pred, sum)
    mean_nnet_MASI5_OU_pred <- mean(list_nnet_MASI5_OU_pred)
    sd_nnet_MASI5_OU_pred <- sd(list_nnet_MASI5_OU_pred)
    list_nnet_MASI5_OU_SE <- sapply(list_nnet_MASI5_OU_SE, sum)
    mean_nnet_MASI5_OU_SE <- mean(list_nnet_MASI5_OU_SE)
    sd_nnet_MASI5_OU_SE <- sd(list_nnet_MASI5_OU_SE)
    CIlower_nnet_MASI5_OU_pred <- mean_nnet_MASI5_OU_pred - (2*mean_nnet_MASI5_OU_SE)
    CIupper_nnet_MASI5_OU_pred <- mean_nnet_MASI5_OU_pred + (2*mean_nnet_MASI5_OU_SE)
    nnet_MASI5_OU_pred_max <- max(list_nnet_MASI5_OU_pred) 
    nnet_MASI5_OU_pred_min <- min(list_nnet_MASI5_OU_pred)
    RB_nnet_MASI5_OU_pred <- bias(OU_true, list_nnet_MASI5_OU_pred)
    bias_RB_nnet_MASI5_OU_pred <- list_nnet_MASI5_OU_pred - OU_true
    sd_RB_nnet_MASI5_OU_pred <- sd(bias_RB_nnet_MASI5_OU_pred)    
    PB_nnet_MASI5_OU_pred <- percent_bias(OU_true, list_nnet_MASI5_OU_pred) *100
    RMSE_nnet_MASI5_OU_pred <- rmse(OU_true, list_nnet_MASI5_OU_pred)
    AW_nnet_MASI5_OU_pred <- mean(sapply(list_nnet_MASI5_OU_95width, sum))
    list_nnet_MASI5_OU_coverge <- sapply(list_nnet_MASI5_OU_coverge, sum)
    CR_nnet_MASI5_OU_pred <- mean(list_nnet_MASI5_OU_coverge)
    sd_CR_nnet_MASI5_OU_pred <- sd(list_nnet_MASI5_OU_coverge)
  }
}

#mice Performance of MI
{
  #Performance of UAMI80
  {
    list_mice_UAMI80_RT_pred <- sapply(list_mice_UAMI80_RT_pred, sum)
    mean_mice_UAMI80_RT_pred <- mean(list_mice_UAMI80_RT_pred)
    sd_mice_UAMI80_RT_pred <- sd(list_mice_UAMI80_RT_pred)
    list_mice_UAMI80_RT_SE <- sapply(list_mice_UAMI80_RT_SE, sum)
    mean_mice_UAMI80_RT_SE <- mean(list_mice_UAMI80_RT_SE)
    sd_mice_UAMI80_RT_SE <- sd(list_mice_UAMI80_RT_SE)
    CIlower_mice_UAMI80_RT_pred <- mean_mice_UAMI80_RT_pred - (2*mean_mice_UAMI80_RT_SE)
    CIupper_mice_UAMI80_RT_pred <- mean_mice_UAMI80_RT_pred + (2*mean_mice_UAMI80_RT_SE)
    mice_UAMI80_RT_pred_max <- max(list_mice_UAMI80_RT_pred) 
    mice_UAMI80_RT_pred_min <- min(list_mice_UAMI80_RT_pred)
    RB_mice_UAMI80_RT_pred <- bias(RT_true, list_mice_UAMI80_RT_pred)
    bias_RB_mice_UAMI80_RT_pred <- list_mice_UAMI80_RT_pred - RT_true
    sd_RB_mice_UAMI80_RT_pred <- sd(bias_RB_mice_UAMI80_RT_pred)    
    PB_mice_UAMI80_RT_pred <- percent_bias(RT_true, list_mice_UAMI80_RT_pred) *100
    RMSE_mice_UAMI80_RT_pred <- rmse(RT_true, list_mice_UAMI80_RT_pred)
    AW_mice_UAMI80_RT_pred <- mean(sapply(list_mice_UAMI80_RT_95width, sum))
    list_mice_UAMI80_RT_coverge <- sapply(list_mice_UAMI80_RT_coverge, sum)
    CR_mice_UAMI80_RT_pred <- mean(list_mice_UAMI80_RT_coverge)
    sd_CR_mice_UAMI80_RT_pred <- sd(list_mice_UAMI80_RT_coverge)
    
    list_mice_UAMI80_UT_pred <- sapply(list_mice_UAMI80_UT_pred, sum)
    mean_mice_UAMI80_UT_pred <- mean(list_mice_UAMI80_UT_pred)
    sd_mice_UAMI80_UT_pred <- sd(list_mice_UAMI80_UT_pred)
    list_mice_UAMI80_UT_SE <- sapply(list_mice_UAMI80_UT_SE, sum)
    mean_mice_UAMI80_UT_SE <- mean(list_mice_UAMI80_UT_SE)
    sd_mice_UAMI80_UT_SE <- sd(list_mice_UAMI80_UT_SE)
    CIlower_mice_UAMI80_UT_pred <- mean_mice_UAMI80_UT_pred - (2*mean_mice_UAMI80_UT_SE)
    CIupper_mice_UAMI80_UT_pred <- mean_mice_UAMI80_UT_pred + (2*mean_mice_UAMI80_UT_SE)
    mice_UAMI80_UT_pred_max <- max(list_mice_UAMI80_UT_pred) 
    mice_UAMI80_UT_pred_min <- min(list_mice_UAMI80_UT_pred)
    RB_mice_UAMI80_UT_pred <- bias(UT_true, list_mice_UAMI80_UT_pred)
    bias_RB_mice_UAMI80_UT_pred <- list_mice_UAMI80_UT_pred - UT_true
    sd_RB_mice_UAMI80_UT_pred <- sd(bias_RB_mice_UAMI80_UT_pred)    
    PB_mice_UAMI80_UT_pred <- percent_bias(UT_true, list_mice_UAMI80_UT_pred) *100
    RMSE_mice_UAMI80_UT_pred <- rmse(UT_true, list_mice_UAMI80_UT_pred)
    AW_mice_UAMI80_UT_pred <- mean(sapply(list_mice_UAMI80_UT_95width, sum))
    list_mice_UAMI80_UT_coverge <- sapply(list_mice_UAMI80_UT_coverge, sum)
    CR_mice_UAMI80_UT_pred <- mean(list_mice_UAMI80_UT_coverge)
    sd_CR_mice_UAMI80_UT_pred <- sd(list_mice_UAMI80_UT_coverge)
    
    list_mice_UAMI80_SW_pred <- sapply(list_mice_UAMI80_SW_pred, sum)
    mean_mice_UAMI80_SW_pred <- mean(list_mice_UAMI80_SW_pred)
    sd_mice_UAMI80_SW_pred <- sd(list_mice_UAMI80_SW_pred)
    list_mice_UAMI80_SW_SE <- sapply(list_mice_UAMI80_SW_SE, sum)
    mean_mice_UAMI80_SW_SE <- mean(list_mice_UAMI80_SW_SE)
    sd_mice_UAMI80_SW_SE <- sd(list_mice_UAMI80_SW_SE)
    CIlower_mice_UAMI80_SW_pred <- mean_mice_UAMI80_SW_pred - (2*mean_mice_UAMI80_SW_SE)
    CIupper_mice_UAMI80_SW_pred <- mean_mice_UAMI80_SW_pred + (2*mean_mice_UAMI80_SW_SE)
    mice_UAMI80_SW_pred_max <- max(list_mice_UAMI80_SW_pred) 
    mice_UAMI80_SW_pred_min <- min(list_mice_UAMI80_SW_pred)
    RB_mice_UAMI80_SW_pred <- bias(SW_true, list_mice_UAMI80_SW_pred)
    bias_RB_mice_UAMI80_SW_pred <- list_mice_UAMI80_SW_pred - SW_true
    sd_RB_mice_UAMI80_SW_pred <- sd(bias_RB_mice_UAMI80_SW_pred)    
    PB_mice_UAMI80_SW_pred <- percent_bias(SW_true, list_mice_UAMI80_SW_pred) *100
    RMSE_mice_UAMI80_SW_pred <- rmse(SW_true, list_mice_UAMI80_SW_pred)
    AW_mice_UAMI80_SW_pred <- mean(sapply(list_mice_UAMI80_SW_95width, sum))
    list_mice_UAMI80_SW_coverge <- sapply(list_mice_UAMI80_SW_coverge, sum)
    CR_mice_UAMI80_SW_pred <- mean(list_mice_UAMI80_SW_coverge)
    sd_CR_mice_UAMI80_SW_pred <- sd(list_mice_UAMI80_SW_coverge)
    
    list_mice_UAMI80_OU_pred <- sapply(list_mice_UAMI80_OU_pred, sum)
    mean_mice_UAMI80_OU_pred <- mean(list_mice_UAMI80_OU_pred)
    sd_mice_UAMI80_OU_pred <- sd(list_mice_UAMI80_OU_pred)
    list_mice_UAMI80_OU_SE <- sapply(list_mice_UAMI80_OU_SE, sum)
    mean_mice_UAMI80_OU_SE <- mean(list_mice_UAMI80_OU_SE)
    sd_mice_UAMI80_OU_SE <- sd(list_mice_UAMI80_OU_SE)
    CIlower_mice_UAMI80_OU_pred <- mean_mice_UAMI80_OU_pred - (2*mean_mice_UAMI80_OU_SE)
    CIupper_mice_UAMI80_OU_pred <- mean_mice_UAMI80_OU_pred + (2*mean_mice_UAMI80_OU_SE)
    mice_UAMI80_OU_pred_max <- max(list_mice_UAMI80_OU_pred) 
    mice_UAMI80_OU_pred_min <- min(list_mice_UAMI80_OU_pred)
    RB_mice_UAMI80_OU_pred <- bias(OU_true, list_mice_UAMI80_OU_pred)
    bias_RB_mice_UAMI80_OU_pred <- list_mice_UAMI80_OU_pred - OU_true
    sd_RB_mice_UAMI80_OU_pred <- sd(bias_RB_mice_UAMI80_OU_pred)    
    PB_mice_UAMI80_OU_pred <- percent_bias(OU_true, list_mice_UAMI80_OU_pred) *100
    RMSE_mice_UAMI80_OU_pred <- rmse(OU_true, list_mice_UAMI80_OU_pred)
    AW_mice_UAMI80_OU_pred <- mean(sapply(list_mice_UAMI80_OU_95width, sum))
    list_mice_UAMI80_OU_coverge <- sapply(list_mice_UAMI80_OU_coverge, sum)
    CR_mice_UAMI80_OU_pred <- mean(list_mice_UAMI80_OU_coverge)
    sd_CR_mice_UAMI80_OU_pred <- sd(list_mice_UAMI80_OU_coverge)
  }
  
  #Performance of UAMI50
  {
    list_mice_UAMI50_RT_pred <- sapply(list_mice_UAMI50_RT_pred, sum)
    mean_mice_UAMI50_RT_pred <- mean(list_mice_UAMI50_RT_pred)
    sd_mice_UAMI50_RT_pred <- sd(list_mice_UAMI50_RT_pred)
    list_mice_UAMI50_RT_SE <- sapply(list_mice_UAMI50_RT_SE, sum)
    mean_mice_UAMI50_RT_SE <- mean(list_mice_UAMI50_RT_SE)
    sd_mice_UAMI50_RT_SE <- sd(list_mice_UAMI50_RT_SE)
    CIlower_mice_UAMI50_RT_pred <- mean_mice_UAMI50_RT_pred - (2*mean_mice_UAMI50_RT_SE)
    CIupper_mice_UAMI50_RT_pred <- mean_mice_UAMI50_RT_pred + (2*mean_mice_UAMI50_RT_SE)
    mice_UAMI50_RT_pred_max <- max(list_mice_UAMI50_RT_pred) 
    mice_UAMI50_RT_pred_min <- min(list_mice_UAMI50_RT_pred)
    RB_mice_UAMI50_RT_pred <- bias(RT_true, list_mice_UAMI50_RT_pred)
    bias_RB_mice_UAMI50_RT_pred <- list_mice_UAMI50_RT_pred - RT_true
    sd_RB_mice_UAMI50_RT_pred <- sd(bias_RB_mice_UAMI50_RT_pred)    
    PB_mice_UAMI50_RT_pred <- percent_bias(RT_true, list_mice_UAMI50_RT_pred) *100
    RMSE_mice_UAMI50_RT_pred <- rmse(RT_true, list_mice_UAMI50_RT_pred)
    AW_mice_UAMI50_RT_pred <- mean(sapply(list_mice_UAMI50_RT_95width, sum))
    list_mice_UAMI50_RT_coverge <- sapply(list_mice_UAMI50_RT_coverge, sum)
    CR_mice_UAMI50_RT_pred <- mean(list_mice_UAMI50_RT_coverge)
    sd_CR_mice_UAMI50_RT_pred <- sd(list_mice_UAMI50_RT_coverge)
    
    list_mice_UAMI50_UT_pred <- sapply(list_mice_UAMI50_UT_pred, sum)
    mean_mice_UAMI50_UT_pred <- mean(list_mice_UAMI50_UT_pred)
    sd_mice_UAMI50_UT_pred <- sd(list_mice_UAMI50_UT_pred)
    list_mice_UAMI50_UT_SE <- sapply(list_mice_UAMI50_UT_SE, sum)
    mean_mice_UAMI50_UT_SE <- mean(list_mice_UAMI50_UT_SE)
    sd_mice_UAMI50_UT_SE <- sd(list_mice_UAMI50_UT_SE)
    CIlower_mice_UAMI50_UT_pred <- mean_mice_UAMI50_UT_pred - (2*mean_mice_UAMI50_UT_SE)
    CIupper_mice_UAMI50_UT_pred <- mean_mice_UAMI50_UT_pred + (2*mean_mice_UAMI50_UT_SE)
    mice_UAMI50_UT_pred_max <- max(list_mice_UAMI50_UT_pred) 
    mice_UAMI50_UT_pred_min <- min(list_mice_UAMI50_UT_pred)
    RB_mice_UAMI50_UT_pred <- bias(UT_true, list_mice_UAMI50_UT_pred)
    bias_RB_mice_UAMI50_UT_pred <- list_mice_UAMI50_UT_pred - UT_true
    sd_RB_mice_UAMI50_UT_pred <- sd(bias_RB_mice_UAMI50_UT_pred)    
    PB_mice_UAMI50_UT_pred <- percent_bias(UT_true, list_mice_UAMI50_UT_pred) *100
    RMSE_mice_UAMI50_UT_pred <- rmse(UT_true, list_mice_UAMI50_UT_pred)
    AW_mice_UAMI50_UT_pred <- mean(sapply(list_mice_UAMI50_UT_95width, sum))
    list_mice_UAMI50_UT_coverge <- sapply(list_mice_UAMI50_UT_coverge, sum)
    CR_mice_UAMI50_UT_pred <- mean(list_mice_UAMI50_UT_coverge)
    sd_CR_mice_UAMI50_UT_pred <- sd(list_mice_UAMI50_UT_coverge)
    
    list_mice_UAMI50_SW_pred <- sapply(list_mice_UAMI50_SW_pred, sum)
    mean_mice_UAMI50_SW_pred <- mean(list_mice_UAMI50_SW_pred)
    sd_mice_UAMI50_SW_pred <- sd(list_mice_UAMI50_SW_pred)
    list_mice_UAMI50_SW_SE <- sapply(list_mice_UAMI50_SW_SE, sum)
    mean_mice_UAMI50_SW_SE <- mean(list_mice_UAMI50_SW_SE)
    sd_mice_UAMI50_SW_SE <- sd(list_mice_UAMI50_SW_SE)
    CIlower_mice_UAMI50_SW_pred <- mean_mice_UAMI50_SW_pred - (2*mean_mice_UAMI50_SW_SE)
    CIupper_mice_UAMI50_SW_pred <- mean_mice_UAMI50_SW_pred + (2*mean_mice_UAMI50_SW_SE)
    mice_UAMI50_SW_pred_max <- max(list_mice_UAMI50_SW_pred) 
    mice_UAMI50_SW_pred_min <- min(list_mice_UAMI50_SW_pred)
    RB_mice_UAMI50_SW_pred <- bias(SW_true, list_mice_UAMI50_SW_pred)
    bias_RB_mice_UAMI50_SW_pred <- list_mice_UAMI50_SW_pred - SW_true
    sd_RB_mice_UAMI50_SW_pred <- sd(bias_RB_mice_UAMI50_SW_pred)    
    PB_mice_UAMI50_SW_pred <- percent_bias(SW_true, list_mice_UAMI50_SW_pred) *100
    RMSE_mice_UAMI50_SW_pred <- rmse(SW_true, list_mice_UAMI50_SW_pred)
    AW_mice_UAMI50_SW_pred <- mean(sapply(list_mice_UAMI50_SW_95width, sum))
    list_mice_UAMI50_SW_coverge <- sapply(list_mice_UAMI50_SW_coverge, sum)
    CR_mice_UAMI50_SW_pred <- mean(list_mice_UAMI50_SW_coverge)
    sd_CR_mice_UAMI50_SW_pred <- sd(list_mice_UAMI50_SW_coverge)
    
    list_mice_UAMI50_OU_pred <- sapply(list_mice_UAMI50_OU_pred, sum)
    mean_mice_UAMI50_OU_pred <- mean(list_mice_UAMI50_OU_pred)
    sd_mice_UAMI50_OU_pred <- sd(list_mice_UAMI50_OU_pred)
    list_mice_UAMI50_OU_SE <- sapply(list_mice_UAMI50_OU_SE, sum)
    mean_mice_UAMI50_OU_SE <- mean(list_mice_UAMI50_OU_SE)
    sd_mice_UAMI50_OU_SE <- sd(list_mice_UAMI50_OU_SE)
    CIlower_mice_UAMI50_OU_pred <- mean_mice_UAMI50_OU_pred - (2*mean_mice_UAMI50_OU_SE)
    CIupper_mice_UAMI50_OU_pred <- mean_mice_UAMI50_OU_pred + (2*mean_mice_UAMI50_OU_SE)
    mice_UAMI50_OU_pred_max <- max(list_mice_UAMI50_OU_pred) 
    mice_UAMI50_OU_pred_min <- min(list_mice_UAMI50_OU_pred)
    RB_mice_UAMI50_OU_pred <- bias(OU_true, list_mice_UAMI50_OU_pred)
    bias_RB_mice_UAMI50_OU_pred <- list_mice_UAMI50_OU_pred - OU_true
    sd_RB_mice_UAMI50_OU_pred <- sd(bias_RB_mice_UAMI50_OU_pred)    
    PB_mice_UAMI50_OU_pred <- percent_bias(OU_true, list_mice_UAMI50_OU_pred) *100
    RMSE_mice_UAMI50_OU_pred <- rmse(OU_true, list_mice_UAMI50_OU_pred)
    AW_mice_UAMI50_OU_pred <- mean(sapply(list_mice_UAMI50_OU_95width, sum))
    list_mice_UAMI50_OU_coverge <- sapply(list_mice_UAMI50_OU_coverge, sum)
    CR_mice_UAMI50_OU_pred <- mean(list_mice_UAMI50_OU_coverge)
    sd_CR_mice_UAMI50_OU_pred <- sd(list_mice_UAMI50_OU_coverge)
  }
  
  #Performance of UAMI20
  {
    list_mice_UAMI20_RT_pred <- sapply(list_mice_UAMI20_RT_pred, sum)
    mean_mice_UAMI20_RT_pred <- mean(list_mice_UAMI20_RT_pred)
    sd_mice_UAMI20_RT_pred <- sd(list_mice_UAMI20_RT_pred)
    list_mice_UAMI20_RT_SE <- sapply(list_mice_UAMI20_RT_SE, sum)
    mean_mice_UAMI20_RT_SE <- mean(list_mice_UAMI20_RT_SE)
    sd_mice_UAMI20_RT_SE <- sd(list_mice_UAMI20_RT_SE)
    CIlower_mice_UAMI20_RT_pred <- mean_mice_UAMI20_RT_pred - (2*mean_mice_UAMI20_RT_SE)
    CIupper_mice_UAMI20_RT_pred <- mean_mice_UAMI20_RT_pred + (2*mean_mice_UAMI20_RT_SE)
    mice_UAMI20_RT_pred_max <- max(list_mice_UAMI20_RT_pred) 
    mice_UAMI20_RT_pred_min <- min(list_mice_UAMI20_RT_pred)
    RB_mice_UAMI20_RT_pred <- bias(RT_true, list_mice_UAMI20_RT_pred)
    bias_RB_mice_UAMI20_RT_pred <- list_mice_UAMI20_RT_pred - RT_true
    sd_RB_mice_UAMI20_RT_pred <- sd(bias_RB_mice_UAMI20_RT_pred)    
    PB_mice_UAMI20_RT_pred <- percent_bias(RT_true, list_mice_UAMI20_RT_pred) *100
    RMSE_mice_UAMI20_RT_pred <- rmse(RT_true, list_mice_UAMI20_RT_pred)
    AW_mice_UAMI20_RT_pred <- mean(sapply(list_mice_UAMI20_RT_95width, sum))
    list_mice_UAMI20_RT_coverge <- sapply(list_mice_UAMI20_RT_coverge, sum)
    CR_mice_UAMI20_RT_pred <- mean(list_mice_UAMI20_RT_coverge)
    sd_CR_mice_UAMI20_RT_pred <- sd(list_mice_UAMI20_RT_coverge)
    
    list_mice_UAMI20_UT_pred <- sapply(list_mice_UAMI20_UT_pred, sum)
    mean_mice_UAMI20_UT_pred <- mean(list_mice_UAMI20_UT_pred)
    sd_mice_UAMI20_UT_pred <- sd(list_mice_UAMI20_UT_pred)
    list_mice_UAMI20_UT_SE <- sapply(list_mice_UAMI20_UT_SE, sum)
    mean_mice_UAMI20_UT_SE <- mean(list_mice_UAMI20_UT_SE)
    sd_mice_UAMI20_UT_SE <- sd(list_mice_UAMI20_UT_SE)
    CIlower_mice_UAMI20_UT_pred <- mean_mice_UAMI20_UT_pred - (2*mean_mice_UAMI20_UT_SE)
    CIupper_mice_UAMI20_UT_pred <- mean_mice_UAMI20_UT_pred + (2*mean_mice_UAMI20_UT_SE)
    mice_UAMI20_UT_pred_max <- max(list_mice_UAMI20_UT_pred) 
    mice_UAMI20_UT_pred_min <- min(list_mice_UAMI20_UT_pred)
    RB_mice_UAMI20_UT_pred <- bias(UT_true, list_mice_UAMI20_UT_pred)
    bias_RB_mice_UAMI20_UT_pred <- list_mice_UAMI20_UT_pred - UT_true
    sd_RB_mice_UAMI20_UT_pred <- sd(bias_RB_mice_UAMI20_UT_pred)    
    PB_mice_UAMI20_UT_pred <- percent_bias(UT_true, list_mice_UAMI20_UT_pred) *100
    RMSE_mice_UAMI20_UT_pred <- rmse(UT_true, list_mice_UAMI20_UT_pred)
    AW_mice_UAMI20_UT_pred <- mean(sapply(list_mice_UAMI20_UT_95width, sum))
    list_mice_UAMI20_UT_coverge <- sapply(list_mice_UAMI20_UT_coverge, sum)
    CR_mice_UAMI20_UT_pred <- mean(list_mice_UAMI20_UT_coverge)
    sd_CR_mice_UAMI20_UT_pred <- sd(list_mice_UAMI20_UT_coverge)
    
    list_mice_UAMI20_SW_pred <- sapply(list_mice_UAMI20_SW_pred, sum)
    mean_mice_UAMI20_SW_pred <- mean(list_mice_UAMI20_SW_pred)
    sd_mice_UAMI20_SW_pred <- sd(list_mice_UAMI20_SW_pred)
    list_mice_UAMI20_SW_SE <- sapply(list_mice_UAMI20_SW_SE, sum)
    mean_mice_UAMI20_SW_SE <- mean(list_mice_UAMI20_SW_SE)
    sd_mice_UAMI20_SW_SE <- sd(list_mice_UAMI20_SW_SE)
    CIlower_mice_UAMI20_SW_pred <- mean_mice_UAMI20_SW_pred - (2*mean_mice_UAMI20_SW_SE)
    CIupper_mice_UAMI20_SW_pred <- mean_mice_UAMI20_SW_pred + (2*mean_mice_UAMI20_SW_SE)
    mice_UAMI20_SW_pred_max <- max(list_mice_UAMI20_SW_pred) 
    mice_UAMI20_SW_pred_min <- min(list_mice_UAMI20_SW_pred)
    RB_mice_UAMI20_SW_pred <- bias(SW_true, list_mice_UAMI20_SW_pred)
    bias_RB_mice_UAMI20_SW_pred <- list_mice_UAMI20_SW_pred - SW_true
    sd_RB_mice_UAMI20_SW_pred <- sd(bias_RB_mice_UAMI20_SW_pred)    
    PB_mice_UAMI20_SW_pred <- percent_bias(SW_true, list_mice_UAMI20_SW_pred) *100
    RMSE_mice_UAMI20_SW_pred <- rmse(SW_true, list_mice_UAMI20_SW_pred)
    AW_mice_UAMI20_SW_pred <- mean(sapply(list_mice_UAMI20_SW_95width, sum))
    list_mice_UAMI20_SW_coverge <- sapply(list_mice_UAMI20_SW_coverge, sum)
    CR_mice_UAMI20_SW_pred <- mean(list_mice_UAMI20_SW_coverge)
    sd_CR_mice_UAMI20_SW_pred <- sd(list_mice_UAMI20_SW_coverge)
    
    list_mice_UAMI20_OU_pred <- sapply(list_mice_UAMI20_OU_pred, sum)
    mean_mice_UAMI20_OU_pred <- mean(list_mice_UAMI20_OU_pred)
    sd_mice_UAMI20_OU_pred <- sd(list_mice_UAMI20_OU_pred)
    list_mice_UAMI20_OU_SE <- sapply(list_mice_UAMI20_OU_SE, sum)
    mean_mice_UAMI20_OU_SE <- mean(list_mice_UAMI20_OU_SE)
    sd_mice_UAMI20_OU_SE <- sd(list_mice_UAMI20_OU_SE)
    CIlower_mice_UAMI20_OU_pred <- mean_mice_UAMI20_OU_pred - (2*mean_mice_UAMI20_OU_SE)
    CIupper_mice_UAMI20_OU_pred <- mean_mice_UAMI20_OU_pred + (2*mean_mice_UAMI20_OU_SE)
    mice_UAMI20_OU_pred_max <- max(list_mice_UAMI20_OU_pred) 
    mice_UAMI20_OU_pred_min <- min(list_mice_UAMI20_OU_pred)
    RB_mice_UAMI20_OU_pred <- bias(OU_true, list_mice_UAMI20_OU_pred)
    bias_RB_mice_UAMI20_OU_pred <- list_mice_UAMI20_OU_pred - OU_true
    sd_RB_mice_UAMI20_OU_pred <- sd(bias_RB_mice_UAMI20_OU_pred)    
    PB_mice_UAMI20_OU_pred <- percent_bias(OU_true, list_mice_UAMI20_OU_pred) *100
    RMSE_mice_UAMI20_OU_pred <- rmse(OU_true, list_mice_UAMI20_OU_pred)
    AW_mice_UAMI20_OU_pred <- mean(sapply(list_mice_UAMI20_OU_95width, sum))
    list_mice_UAMI20_OU_coverge <- sapply(list_mice_UAMI20_OU_coverge, sum)
    CR_mice_UAMI20_OU_pred <- mean(list_mice_UAMI20_OU_coverge)
    sd_CR_mice_UAMI20_OU_pred <- sd(list_mice_UAMI20_OU_coverge)
  }
  
  #Performance of UAMI5
  {
    list_mice_UAMI5_RT_pred <- sapply(list_mice_UAMI5_RT_pred, sum)
    mean_mice_UAMI5_RT_pred <- mean(list_mice_UAMI5_RT_pred)
    sd_mice_UAMI5_RT_pred <- sd(list_mice_UAMI5_RT_pred)
    list_mice_UAMI5_RT_SE <- sapply(list_mice_UAMI5_RT_SE, sum)
    mean_mice_UAMI5_RT_SE <- mean(list_mice_UAMI5_RT_SE)
    sd_mice_UAMI5_RT_SE <- sd(list_mice_UAMI5_RT_SE)
    CIlower_mice_UAMI5_RT_pred <- mean_mice_UAMI5_RT_pred - (2*mean_mice_UAMI5_RT_SE)
    CIupper_mice_UAMI5_RT_pred <- mean_mice_UAMI5_RT_pred + (2*mean_mice_UAMI5_RT_SE)
    mice_UAMI5_RT_pred_max <- max(list_mice_UAMI5_RT_pred) 
    mice_UAMI5_RT_pred_min <- min(list_mice_UAMI5_RT_pred)
    RB_mice_UAMI5_RT_pred <- bias(RT_true, list_mice_UAMI5_RT_pred)
    bias_RB_mice_UAMI5_RT_pred <- list_mice_UAMI5_RT_pred - RT_true
    sd_RB_mice_UAMI5_RT_pred <- sd(bias_RB_mice_UAMI5_RT_pred)    
    PB_mice_UAMI5_RT_pred <- percent_bias(RT_true, list_mice_UAMI5_RT_pred) *100
    RMSE_mice_UAMI5_RT_pred <- rmse(RT_true, list_mice_UAMI5_RT_pred)
    AW_mice_UAMI5_RT_pred <- mean(sapply(list_mice_UAMI5_RT_95width, sum))
    list_mice_UAMI5_RT_coverge <- sapply(list_mice_UAMI5_RT_coverge, sum)
    CR_mice_UAMI5_RT_pred <- mean(list_mice_UAMI5_RT_coverge)
    sd_CR_mice_UAMI5_RT_pred <- sd(list_mice_UAMI5_RT_coverge)
    
    list_mice_UAMI5_UT_pred <- sapply(list_mice_UAMI5_UT_pred, sum)
    mean_mice_UAMI5_UT_pred <- mean(list_mice_UAMI5_UT_pred)
    sd_mice_UAMI5_UT_pred <- sd(list_mice_UAMI5_UT_pred)
    list_mice_UAMI5_UT_SE <- sapply(list_mice_UAMI5_UT_SE, sum)
    mean_mice_UAMI5_UT_SE <- mean(list_mice_UAMI5_UT_SE)
    sd_mice_UAMI5_UT_SE <- sd(list_mice_UAMI5_UT_SE)
    CIlower_mice_UAMI5_UT_pred <- mean_mice_UAMI5_UT_pred - (2*mean_mice_UAMI5_UT_SE)
    CIupper_mice_UAMI5_UT_pred <- mean_mice_UAMI5_UT_pred + (2*mean_mice_UAMI5_UT_SE)
    mice_UAMI5_UT_pred_max <- max(list_mice_UAMI5_UT_pred) 
    mice_UAMI5_UT_pred_min <- min(list_mice_UAMI5_UT_pred)
    RB_mice_UAMI5_UT_pred <- bias(UT_true, list_mice_UAMI5_UT_pred)
    bias_RB_mice_UAMI5_UT_pred <- list_mice_UAMI5_UT_pred - UT_true
    sd_RB_mice_UAMI5_UT_pred <- sd(bias_RB_mice_UAMI5_UT_pred)    
    PB_mice_UAMI5_UT_pred <- percent_bias(UT_true, list_mice_UAMI5_UT_pred) *100
    RMSE_mice_UAMI5_UT_pred <- rmse(UT_true, list_mice_UAMI5_UT_pred)
    AW_mice_UAMI5_UT_pred <- mean(sapply(list_mice_UAMI5_UT_95width, sum))
    list_mice_UAMI5_UT_coverge <- sapply(list_mice_UAMI5_UT_coverge, sum)
    CR_mice_UAMI5_UT_pred <- mean(list_mice_UAMI5_UT_coverge)
    sd_CR_mice_UAMI5_UT_pred <- sd(list_mice_UAMI5_UT_coverge)
    
    list_mice_UAMI5_SW_pred <- sapply(list_mice_UAMI5_SW_pred, sum)
    mean_mice_UAMI5_SW_pred <- mean(list_mice_UAMI5_SW_pred)
    sd_mice_UAMI5_SW_pred <- sd(list_mice_UAMI5_SW_pred)
    list_mice_UAMI5_SW_SE <- sapply(list_mice_UAMI5_SW_SE, sum)
    mean_mice_UAMI5_SW_SE <- mean(list_mice_UAMI5_SW_SE)
    sd_mice_UAMI5_SW_SE <- sd(list_mice_UAMI5_SW_SE)
    CIlower_mice_UAMI5_SW_pred <- mean_mice_UAMI5_SW_pred - (2*mean_mice_UAMI5_SW_SE)
    CIupper_mice_UAMI5_SW_pred <- mean_mice_UAMI5_SW_pred + (2*mean_mice_UAMI5_SW_SE)
    mice_UAMI5_SW_pred_max <- max(list_mice_UAMI5_SW_pred) 
    mice_UAMI5_SW_pred_min <- min(list_mice_UAMI5_SW_pred)
    RB_mice_UAMI5_SW_pred <- bias(SW_true, list_mice_UAMI5_SW_pred)
    bias_RB_mice_UAMI5_SW_pred <- list_mice_UAMI5_SW_pred - SW_true
    sd_RB_mice_UAMI5_SW_pred <- sd(bias_RB_mice_UAMI5_SW_pred)    
    PB_mice_UAMI5_SW_pred <- percent_bias(SW_true, list_mice_UAMI5_SW_pred) *100
    RMSE_mice_UAMI5_SW_pred <- rmse(SW_true, list_mice_UAMI5_SW_pred)
    AW_mice_UAMI5_SW_pred <- mean(sapply(list_mice_UAMI5_SW_95width, sum))
    list_mice_UAMI5_SW_coverge <- sapply(list_mice_UAMI5_SW_coverge, sum)
    CR_mice_UAMI5_SW_pred <- mean(list_mice_UAMI5_SW_coverge)
    sd_CR_mice_UAMI5_SW_pred <- sd(list_mice_UAMI5_SW_coverge)
    
    list_mice_UAMI5_OU_pred <- sapply(list_mice_UAMI5_OU_pred, sum)
    mean_mice_UAMI5_OU_pred <- mean(list_mice_UAMI5_OU_pred)
    sd_mice_UAMI5_OU_pred <- sd(list_mice_UAMI5_OU_pred)
    list_mice_UAMI5_OU_SE <- sapply(list_mice_UAMI5_OU_SE, sum)
    mean_mice_UAMI5_OU_SE <- mean(list_mice_UAMI5_OU_SE)
    sd_mice_UAMI5_OU_SE <- sd(list_mice_UAMI5_OU_SE)
    CIlower_mice_UAMI5_OU_pred <- mean_mice_UAMI5_OU_pred - (2*mean_mice_UAMI5_OU_SE)
    CIupper_mice_UAMI5_OU_pred <- mean_mice_UAMI5_OU_pred + (2*mean_mice_UAMI5_OU_SE)
    mice_UAMI5_OU_pred_max <- max(list_mice_UAMI5_OU_pred) 
    mice_UAMI5_OU_pred_min <- min(list_mice_UAMI5_OU_pred)
    RB_mice_UAMI5_OU_pred <- bias(OU_true, list_mice_UAMI5_OU_pred)
    bias_RB_mice_UAMI5_OU_pred <- list_mice_UAMI5_OU_pred - OU_true
    sd_RB_mice_UAMI5_OU_pred <- sd(bias_RB_mice_UAMI5_OU_pred)    
    PB_mice_UAMI5_OU_pred <- percent_bias(OU_true, list_mice_UAMI5_OU_pred) *100
    RMSE_mice_UAMI5_OU_pred <- rmse(OU_true, list_mice_UAMI5_OU_pred)
    AW_mice_UAMI5_OU_pred <- mean(sapply(list_mice_UAMI5_OU_95width, sum))
    list_mice_UAMI5_OU_coverge <- sapply(list_mice_UAMI5_OU_coverge, sum)
    CR_mice_UAMI5_OU_pred <- mean(list_mice_UAMI5_OU_coverge)
    sd_CR_mice_UAMI5_OU_pred <- sd(list_mice_UAMI5_OU_coverge)
  }
  
  #Performance of MAMI80
  {
    list_mice_MAMI80_RT_pred <- sapply(list_mice_MAMI80_RT_pred, sum)
    mean_mice_MAMI80_RT_pred <- mean(list_mice_MAMI80_RT_pred)
    sd_mice_MAMI80_RT_pred <- sd(list_mice_MAMI80_RT_pred)
    list_mice_MAMI80_RT_SE <- sapply(list_mice_MAMI80_RT_SE, sum)
    mean_mice_MAMI80_RT_SE <- mean(list_mice_MAMI80_RT_SE)
    sd_mice_MAMI80_RT_SE <- sd(list_mice_MAMI80_RT_SE)
    CIlower_mice_MAMI80_RT_pred <- mean_mice_MAMI80_RT_pred - (2*mean_mice_MAMI80_RT_SE)
    CIupper_mice_MAMI80_RT_pred <- mean_mice_MAMI80_RT_pred + (2*mean_mice_MAMI80_RT_SE)
    mice_MAMI80_RT_pred_max <- max(list_mice_MAMI80_RT_pred) 
    mice_MAMI80_RT_pred_min <- min(list_mice_MAMI80_RT_pred)
    RB_mice_MAMI80_RT_pred <- bias(RT_true, list_mice_MAMI80_RT_pred)
    bias_RB_mice_MAMI80_RT_pred <- list_mice_MAMI80_RT_pred - RT_true
    sd_RB_mice_MAMI80_RT_pred <- sd(bias_RB_mice_MAMI80_RT_pred)    
    PB_mice_MAMI80_RT_pred <- percent_bias(RT_true, list_mice_MAMI80_RT_pred) *100
    RMSE_mice_MAMI80_RT_pred <- rmse(RT_true, list_mice_MAMI80_RT_pred)
    AW_mice_MAMI80_RT_pred <- mean(sapply(list_mice_MAMI80_RT_95width, sum))
    list_mice_MAMI80_RT_coverge <- sapply(list_mice_MAMI80_RT_coverge, sum)
    CR_mice_MAMI80_RT_pred <- mean(list_mice_MAMI80_RT_coverge)
    sd_CR_mice_MAMI80_RT_pred <- sd(list_mice_MAMI80_RT_coverge)
    
    list_mice_MAMI80_UT_pred <- sapply(list_mice_MAMI80_UT_pred, sum)
    mean_mice_MAMI80_UT_pred <- mean(list_mice_MAMI80_UT_pred)
    sd_mice_MAMI80_UT_pred <- sd(list_mice_MAMI80_UT_pred)
    list_mice_MAMI80_UT_SE <- sapply(list_mice_MAMI80_UT_SE, sum)
    mean_mice_MAMI80_UT_SE <- mean(list_mice_MAMI80_UT_SE)
    sd_mice_MAMI80_UT_SE <- sd(list_mice_MAMI80_UT_SE)
    CIlower_mice_MAMI80_UT_pred <- mean_mice_MAMI80_UT_pred - (2*mean_mice_MAMI80_UT_SE)
    CIupper_mice_MAMI80_UT_pred <- mean_mice_MAMI80_UT_pred + (2*mean_mice_MAMI80_UT_SE)
    mice_MAMI80_UT_pred_max <- max(list_mice_MAMI80_UT_pred) 
    mice_MAMI80_UT_pred_min <- min(list_mice_MAMI80_UT_pred)
    RB_mice_MAMI80_UT_pred <- bias(UT_true, list_mice_MAMI80_UT_pred)
    bias_RB_mice_MAMI80_UT_pred <- list_mice_MAMI80_UT_pred - UT_true
    sd_RB_mice_MAMI80_UT_pred <- sd(bias_RB_mice_MAMI80_UT_pred)    
    PB_mice_MAMI80_UT_pred <- percent_bias(UT_true, list_mice_MAMI80_UT_pred) *100
    RMSE_mice_MAMI80_UT_pred <- rmse(UT_true, list_mice_MAMI80_UT_pred)
    AW_mice_MAMI80_UT_pred <- mean(sapply(list_mice_MAMI80_UT_95width, sum))
    list_mice_MAMI80_UT_coverge <- sapply(list_mice_MAMI80_UT_coverge, sum)
    CR_mice_MAMI80_UT_pred <- mean(list_mice_MAMI80_UT_coverge)
    sd_CR_mice_MAMI80_UT_pred <- sd(list_mice_MAMI80_UT_coverge)
    
    list_mice_MAMI80_SW_pred <- sapply(list_mice_MAMI80_SW_pred, sum)
    mean_mice_MAMI80_SW_pred <- mean(list_mice_MAMI80_SW_pred)
    sd_mice_MAMI80_SW_pred <- sd(list_mice_MAMI80_SW_pred)
    list_mice_MAMI80_SW_SE <- sapply(list_mice_MAMI80_SW_SE, sum)
    mean_mice_MAMI80_SW_SE <- mean(list_mice_MAMI80_SW_SE)
    sd_mice_MAMI80_SW_SE <- sd(list_mice_MAMI80_SW_SE)
    CIlower_mice_MAMI80_SW_pred <- mean_mice_MAMI80_SW_pred - (2*mean_mice_MAMI80_SW_SE)
    CIupper_mice_MAMI80_SW_pred <- mean_mice_MAMI80_SW_pred + (2*mean_mice_MAMI80_SW_SE)
    mice_MAMI80_SW_pred_max <- max(list_mice_MAMI80_SW_pred) 
    mice_MAMI80_SW_pred_min <- min(list_mice_MAMI80_SW_pred)
    RB_mice_MAMI80_SW_pred <- bias(SW_true, list_mice_MAMI80_SW_pred)
    bias_RB_mice_MAMI80_SW_pred <- list_mice_MAMI80_SW_pred - SW_true
    sd_RB_mice_MAMI80_SW_pred <- sd(bias_RB_mice_MAMI80_SW_pred)    
    PB_mice_MAMI80_SW_pred <- percent_bias(SW_true, list_mice_MAMI80_SW_pred) *100
    RMSE_mice_MAMI80_SW_pred <- rmse(SW_true, list_mice_MAMI80_SW_pred)
    AW_mice_MAMI80_SW_pred <- mean(sapply(list_mice_MAMI80_SW_95width, sum))
    list_mice_MAMI80_SW_coverge <- sapply(list_mice_MAMI80_SW_coverge, sum)
    CR_mice_MAMI80_SW_pred <- mean(list_mice_MAMI80_SW_coverge)
    sd_CR_mice_MAMI80_SW_pred <- sd(list_mice_MAMI80_SW_coverge)
    
    list_mice_MAMI80_OU_pred <- sapply(list_mice_MAMI80_OU_pred, sum)
    mean_mice_MAMI80_OU_pred <- mean(list_mice_MAMI80_OU_pred)
    sd_mice_MAMI80_OU_pred <- sd(list_mice_MAMI80_OU_pred)
    list_mice_MAMI80_OU_SE <- sapply(list_mice_MAMI80_OU_SE, sum)
    mean_mice_MAMI80_OU_SE <- mean(list_mice_MAMI80_OU_SE)
    sd_mice_MAMI80_OU_SE <- sd(list_mice_MAMI80_OU_SE)
    CIlower_mice_MAMI80_OU_pred <- mean_mice_MAMI80_OU_pred - (2*mean_mice_MAMI80_OU_SE)
    CIupper_mice_MAMI80_OU_pred <- mean_mice_MAMI80_OU_pred + (2*mean_mice_MAMI80_OU_SE)
    mice_MAMI80_OU_pred_max <- max(list_mice_MAMI80_OU_pred) 
    mice_MAMI80_OU_pred_min <- min(list_mice_MAMI80_OU_pred)
    RB_mice_MAMI80_OU_pred <- bias(OU_true, list_mice_MAMI80_OU_pred)
    bias_RB_mice_MAMI80_OU_pred <- list_mice_MAMI80_OU_pred - OU_true
    sd_RB_mice_MAMI80_OU_pred <- sd(bias_RB_mice_MAMI80_OU_pred)    
    PB_mice_MAMI80_OU_pred <- percent_bias(OU_true, list_mice_MAMI80_OU_pred) *100
    RMSE_mice_MAMI80_OU_pred <- rmse(OU_true, list_mice_MAMI80_OU_pred)
    AW_mice_MAMI80_OU_pred <- mean(sapply(list_mice_MAMI80_OU_95width, sum))
    list_mice_MAMI80_OU_coverge <- sapply(list_mice_MAMI80_OU_coverge, sum)
    CR_mice_MAMI80_OU_pred <- mean(list_mice_MAMI80_OU_coverge)
    sd_CR_mice_MAMI80_OU_pred <- sd(list_mice_MAMI80_OU_coverge)
  }
  
  #Performance of MAMI50
  {
    list_mice_MAMI50_RT_pred <- sapply(list_mice_MAMI50_RT_pred, sum)
    mean_mice_MAMI50_RT_pred <- mean(list_mice_MAMI50_RT_pred)
    sd_mice_MAMI50_RT_pred <- sd(list_mice_MAMI50_RT_pred)
    list_mice_MAMI50_RT_SE <- sapply(list_mice_MAMI50_RT_SE, sum)
    mean_mice_MAMI50_RT_SE <- mean(list_mice_MAMI50_RT_SE)
    sd_mice_MAMI50_RT_SE <- sd(list_mice_MAMI50_RT_SE)
    CIlower_mice_MAMI50_RT_pred <- mean_mice_MAMI50_RT_pred - (2*mean_mice_MAMI50_RT_SE)
    CIupper_mice_MAMI50_RT_pred <- mean_mice_MAMI50_RT_pred + (2*mean_mice_MAMI50_RT_SE)
    mice_MAMI50_RT_pred_max <- max(list_mice_MAMI50_RT_pred) 
    mice_MAMI50_RT_pred_min <- min(list_mice_MAMI50_RT_pred)
    RB_mice_MAMI50_RT_pred <- bias(RT_true, list_mice_MAMI50_RT_pred)
    bias_RB_mice_MAMI50_RT_pred <- list_mice_MAMI50_RT_pred - RT_true
    sd_RB_mice_MAMI50_RT_pred <- sd(bias_RB_mice_MAMI50_RT_pred)    
    PB_mice_MAMI50_RT_pred <- percent_bias(RT_true, list_mice_MAMI50_RT_pred) *100
    RMSE_mice_MAMI50_RT_pred <- rmse(RT_true, list_mice_MAMI50_RT_pred)
    AW_mice_MAMI50_RT_pred <- mean(sapply(list_mice_MAMI50_RT_95width, sum))
    list_mice_MAMI50_RT_coverge <- sapply(list_mice_MAMI50_RT_coverge, sum)
    CR_mice_MAMI50_RT_pred <- mean(list_mice_MAMI50_RT_coverge)
    sd_CR_mice_MAMI50_RT_pred <- sd(list_mice_MAMI50_RT_coverge)
    
    list_mice_MAMI50_UT_pred <- sapply(list_mice_MAMI50_UT_pred, sum)
    mean_mice_MAMI50_UT_pred <- mean(list_mice_MAMI50_UT_pred)
    sd_mice_MAMI50_UT_pred <- sd(list_mice_MAMI50_UT_pred)
    list_mice_MAMI50_UT_SE <- sapply(list_mice_MAMI50_UT_SE, sum)
    mean_mice_MAMI50_UT_SE <- mean(list_mice_MAMI50_UT_SE)
    sd_mice_MAMI50_UT_SE <- sd(list_mice_MAMI50_UT_SE)
    CIlower_mice_MAMI50_UT_pred <- mean_mice_MAMI50_UT_pred - (2*mean_mice_MAMI50_UT_SE)
    CIupper_mice_MAMI50_UT_pred <- mean_mice_MAMI50_UT_pred + (2*mean_mice_MAMI50_UT_SE)
    mice_MAMI50_UT_pred_max <- max(list_mice_MAMI50_UT_pred) 
    mice_MAMI50_UT_pred_min <- min(list_mice_MAMI50_UT_pred)
    RB_mice_MAMI50_UT_pred <- bias(UT_true, list_mice_MAMI50_UT_pred)
    bias_RB_mice_MAMI50_UT_pred <- list_mice_MAMI50_UT_pred - UT_true
    sd_RB_mice_MAMI50_UT_pred <- sd(bias_RB_mice_MAMI50_UT_pred)    
    PB_mice_MAMI50_UT_pred <- percent_bias(UT_true, list_mice_MAMI50_UT_pred) *100
    RMSE_mice_MAMI50_UT_pred <- rmse(UT_true, list_mice_MAMI50_UT_pred)
    AW_mice_MAMI50_UT_pred <- mean(sapply(list_mice_MAMI50_UT_95width, sum))
    list_mice_MAMI50_UT_coverge <- sapply(list_mice_MAMI50_UT_coverge, sum)
    CR_mice_MAMI50_UT_pred <- mean(list_mice_MAMI50_UT_coverge)
    sd_CR_mice_MAMI50_UT_pred <- sd(list_mice_MAMI50_UT_coverge)
    
    list_mice_MAMI50_SW_pred <- sapply(list_mice_MAMI50_SW_pred, sum)
    mean_mice_MAMI50_SW_pred <- mean(list_mice_MAMI50_SW_pred)
    sd_mice_MAMI50_SW_pred <- sd(list_mice_MAMI50_SW_pred)
    list_mice_MAMI50_SW_SE <- sapply(list_mice_MAMI50_SW_SE, sum)
    mean_mice_MAMI50_SW_SE <- mean(list_mice_MAMI50_SW_SE)
    sd_mice_MAMI50_SW_SE <- sd(list_mice_MAMI50_SW_SE)
    CIlower_mice_MAMI50_SW_pred <- mean_mice_MAMI50_SW_pred - (2*mean_mice_MAMI50_SW_SE)
    CIupper_mice_MAMI50_SW_pred <- mean_mice_MAMI50_SW_pred + (2*mean_mice_MAMI50_SW_SE)
    mice_MAMI50_SW_pred_max <- max(list_mice_MAMI50_SW_pred) 
    mice_MAMI50_SW_pred_min <- min(list_mice_MAMI50_SW_pred)
    RB_mice_MAMI50_SW_pred <- bias(SW_true, list_mice_MAMI50_SW_pred)
    bias_RB_mice_MAMI50_SW_pred <- list_mice_MAMI50_SW_pred - SW_true
    sd_RB_mice_MAMI50_SW_pred <- sd(bias_RB_mice_MAMI50_SW_pred)    
    PB_mice_MAMI50_SW_pred <- percent_bias(SW_true, list_mice_MAMI50_SW_pred) *100
    RMSE_mice_MAMI50_SW_pred <- rmse(SW_true, list_mice_MAMI50_SW_pred)
    AW_mice_MAMI50_SW_pred <- mean(sapply(list_mice_MAMI50_SW_95width, sum))
    list_mice_MAMI50_SW_coverge <- sapply(list_mice_MAMI50_SW_coverge, sum)
    CR_mice_MAMI50_SW_pred <- mean(list_mice_MAMI50_SW_coverge)
    sd_CR_mice_MAMI50_SW_pred <- sd(list_mice_MAMI50_SW_coverge)
    
    list_mice_MAMI50_OU_pred <- sapply(list_mice_MAMI50_OU_pred, sum)
    mean_mice_MAMI50_OU_pred <- mean(list_mice_MAMI50_OU_pred)
    sd_mice_MAMI50_OU_pred <- sd(list_mice_MAMI50_OU_pred)
    list_mice_MAMI50_OU_SE <- sapply(list_mice_MAMI50_OU_SE, sum)
    mean_mice_MAMI50_OU_SE <- mean(list_mice_MAMI50_OU_SE)
    sd_mice_MAMI50_OU_SE <- sd(list_mice_MAMI50_OU_SE)
    CIlower_mice_MAMI50_OU_pred <- mean_mice_MAMI50_OU_pred - (2*mean_mice_MAMI50_OU_SE)
    CIupper_mice_MAMI50_OU_pred <- mean_mice_MAMI50_OU_pred + (2*mean_mice_MAMI50_OU_SE)
    mice_MAMI50_OU_pred_max <- max(list_mice_MAMI50_OU_pred) 
    mice_MAMI50_OU_pred_min <- min(list_mice_MAMI50_OU_pred)
    RB_mice_MAMI50_OU_pred <- bias(OU_true, list_mice_MAMI50_OU_pred)
    bias_RB_mice_MAMI50_OU_pred <- list_mice_MAMI50_OU_pred - OU_true
    sd_RB_mice_MAMI50_OU_pred <- sd(bias_RB_mice_MAMI50_OU_pred)    
    PB_mice_MAMI50_OU_pred <- percent_bias(OU_true, list_mice_MAMI50_OU_pred) *100
    RMSE_mice_MAMI50_OU_pred <- rmse(OU_true, list_mice_MAMI50_OU_pred)
    AW_mice_MAMI50_OU_pred <- mean(sapply(list_mice_MAMI50_OU_95width, sum))
    list_mice_MAMI50_OU_coverge <- sapply(list_mice_MAMI50_OU_coverge, sum)
    CR_mice_MAMI50_OU_pred <- mean(list_mice_MAMI50_OU_coverge)
    sd_CR_mice_MAMI50_OU_pred <- sd(list_mice_MAMI50_OU_coverge)
  }
  
  #Performance of MAMI20
  {
    list_mice_MAMI20_RT_pred <- sapply(list_mice_MAMI20_RT_pred, sum)
    mean_mice_MAMI20_RT_pred <- mean(list_mice_MAMI20_RT_pred)
    sd_mice_MAMI20_RT_pred <- sd(list_mice_MAMI20_RT_pred)
    list_mice_MAMI20_RT_SE <- sapply(list_mice_MAMI20_RT_SE, sum)
    mean_mice_MAMI20_RT_SE <- mean(list_mice_MAMI20_RT_SE)
    sd_mice_MAMI20_RT_SE <- sd(list_mice_MAMI20_RT_SE)
    CIlower_mice_MAMI20_RT_pred <- mean_mice_MAMI20_RT_pred - (2*mean_mice_MAMI20_RT_SE)
    CIupper_mice_MAMI20_RT_pred <- mean_mice_MAMI20_RT_pred + (2*mean_mice_MAMI20_RT_SE)
    mice_MAMI20_RT_pred_max <- max(list_mice_MAMI20_RT_pred) 
    mice_MAMI20_RT_pred_min <- min(list_mice_MAMI20_RT_pred)
    RB_mice_MAMI20_RT_pred <- bias(RT_true, list_mice_MAMI20_RT_pred)
    bias_RB_mice_MAMI20_RT_pred <- list_mice_MAMI20_RT_pred - RT_true
    sd_RB_mice_MAMI20_RT_pred <- sd(bias_RB_mice_MAMI20_RT_pred)    
    PB_mice_MAMI20_RT_pred <- percent_bias(RT_true, list_mice_MAMI20_RT_pred) *100
    RMSE_mice_MAMI20_RT_pred <- rmse(RT_true, list_mice_MAMI20_RT_pred)
    AW_mice_MAMI20_RT_pred <- mean(sapply(list_mice_MAMI20_RT_95width, sum))
    list_mice_MAMI20_RT_coverge <- sapply(list_mice_MAMI20_RT_coverge, sum)
    CR_mice_MAMI20_RT_pred <- mean(list_mice_MAMI20_RT_coverge)
    sd_CR_mice_MAMI20_RT_pred <- sd(list_mice_MAMI20_RT_coverge)
    
    list_mice_MAMI20_UT_pred <- sapply(list_mice_MAMI20_UT_pred, sum)
    mean_mice_MAMI20_UT_pred <- mean(list_mice_MAMI20_UT_pred)
    sd_mice_MAMI20_UT_pred <- sd(list_mice_MAMI20_UT_pred)
    list_mice_MAMI20_UT_SE <- sapply(list_mice_MAMI20_UT_SE, sum)
    mean_mice_MAMI20_UT_SE <- mean(list_mice_MAMI20_UT_SE)
    sd_mice_MAMI20_UT_SE <- sd(list_mice_MAMI20_UT_SE)
    CIlower_mice_MAMI20_UT_pred <- mean_mice_MAMI20_UT_pred - (2*mean_mice_MAMI20_UT_SE)
    CIupper_mice_MAMI20_UT_pred <- mean_mice_MAMI20_UT_pred + (2*mean_mice_MAMI20_UT_SE)
    mice_MAMI20_UT_pred_max <- max(list_mice_MAMI20_UT_pred) 
    mice_MAMI20_UT_pred_min <- min(list_mice_MAMI20_UT_pred)
    RB_mice_MAMI20_UT_pred <- bias(UT_true, list_mice_MAMI20_UT_pred)
    bias_RB_mice_MAMI20_UT_pred <- list_mice_MAMI20_UT_pred - UT_true
    sd_RB_mice_MAMI20_UT_pred <- sd(bias_RB_mice_MAMI20_UT_pred)    
    PB_mice_MAMI20_UT_pred <- percent_bias(UT_true, list_mice_MAMI20_UT_pred) *100
    RMSE_mice_MAMI20_UT_pred <- rmse(UT_true, list_mice_MAMI20_UT_pred)
    AW_mice_MAMI20_UT_pred <- mean(sapply(list_mice_MAMI20_UT_95width, sum))
    list_mice_MAMI20_UT_coverge <- sapply(list_mice_MAMI20_UT_coverge, sum)
    CR_mice_MAMI20_UT_pred <- mean(list_mice_MAMI20_UT_coverge)
    sd_CR_mice_MAMI20_UT_pred <- sd(list_mice_MAMI20_UT_coverge)
    
    list_mice_MAMI20_SW_pred <- sapply(list_mice_MAMI20_SW_pred, sum)
    mean_mice_MAMI20_SW_pred <- mean(list_mice_MAMI20_SW_pred)
    sd_mice_MAMI20_SW_pred <- sd(list_mice_MAMI20_SW_pred)
    list_mice_MAMI20_SW_SE <- sapply(list_mice_MAMI20_SW_SE, sum)
    mean_mice_MAMI20_SW_SE <- mean(list_mice_MAMI20_SW_SE)
    sd_mice_MAMI20_SW_SE <- sd(list_mice_MAMI20_SW_SE)
    CIlower_mice_MAMI20_SW_pred <- mean_mice_MAMI20_SW_pred - (2*mean_mice_MAMI20_SW_SE)
    CIupper_mice_MAMI20_SW_pred <- mean_mice_MAMI20_SW_pred + (2*mean_mice_MAMI20_SW_SE)
    mice_MAMI20_SW_pred_max <- max(list_mice_MAMI20_SW_pred) 
    mice_MAMI20_SW_pred_min <- min(list_mice_MAMI20_SW_pred)
    RB_mice_MAMI20_SW_pred <- bias(SW_true, list_mice_MAMI20_SW_pred)
    bias_RB_mice_MAMI20_SW_pred <- list_mice_MAMI20_SW_pred - SW_true
    sd_RB_mice_MAMI20_SW_pred <- sd(bias_RB_mice_MAMI20_SW_pred)    
    PB_mice_MAMI20_SW_pred <- percent_bias(SW_true, list_mice_MAMI20_SW_pred) *100
    RMSE_mice_MAMI20_SW_pred <- rmse(SW_true, list_mice_MAMI20_SW_pred)
    AW_mice_MAMI20_SW_pred <- mean(sapply(list_mice_MAMI20_SW_95width, sum))
    list_mice_MAMI20_SW_coverge <- sapply(list_mice_MAMI20_SW_coverge, sum)
    CR_mice_MAMI20_SW_pred <- mean(list_mice_MAMI20_SW_coverge)
    sd_CR_mice_MAMI20_SW_pred <- sd(list_mice_MAMI20_SW_coverge)
    
    list_mice_MAMI20_OU_pred <- sapply(list_mice_MAMI20_OU_pred, sum)
    mean_mice_MAMI20_OU_pred <- mean(list_mice_MAMI20_OU_pred)
    sd_mice_MAMI20_OU_pred <- sd(list_mice_MAMI20_OU_pred)
    list_mice_MAMI20_OU_SE <- sapply(list_mice_MAMI20_OU_SE, sum)
    mean_mice_MAMI20_OU_SE <- mean(list_mice_MAMI20_OU_SE)
    sd_mice_MAMI20_OU_SE <- sd(list_mice_MAMI20_OU_SE)
    CIlower_mice_MAMI20_OU_pred <- mean_mice_MAMI20_OU_pred - (2*mean_mice_MAMI20_OU_SE)
    CIupper_mice_MAMI20_OU_pred <- mean_mice_MAMI20_OU_pred + (2*mean_mice_MAMI20_OU_SE)
    mice_MAMI20_OU_pred_max <- max(list_mice_MAMI20_OU_pred) 
    mice_MAMI20_OU_pred_min <- min(list_mice_MAMI20_OU_pred)
    RB_mice_MAMI20_OU_pred <- bias(OU_true, list_mice_MAMI20_OU_pred)
    bias_RB_mice_MAMI20_OU_pred <- list_mice_MAMI20_OU_pred - OU_true
    sd_RB_mice_MAMI20_OU_pred <- sd(bias_RB_mice_MAMI20_OU_pred)    
    PB_mice_MAMI20_OU_pred <- percent_bias(OU_true, list_mice_MAMI20_OU_pred) *100
    RMSE_mice_MAMI20_OU_pred <- rmse(OU_true, list_mice_MAMI20_OU_pred)
    AW_mice_MAMI20_OU_pred <- mean(sapply(list_mice_MAMI20_OU_95width, sum))
    list_mice_MAMI20_OU_coverge <- sapply(list_mice_MAMI20_OU_coverge, sum)
    CR_mice_MAMI20_OU_pred <- mean(list_mice_MAMI20_OU_coverge)
    sd_CR_mice_MAMI20_OU_pred <- sd(list_mice_MAMI20_OU_coverge)
  }
  
  #Performance of MAMI5
  {
    list_mice_MAMI5_RT_pred <- sapply(list_mice_MAMI5_RT_pred, sum)
    mean_mice_MAMI5_RT_pred <- mean(list_mice_MAMI5_RT_pred)
    sd_mice_MAMI5_RT_pred <- sd(list_mice_MAMI5_RT_pred)
    list_mice_MAMI5_RT_SE <- sapply(list_mice_MAMI5_RT_SE, sum)
    mean_mice_MAMI5_RT_SE <- mean(list_mice_MAMI5_RT_SE)
    sd_mice_MAMI5_RT_SE <- sd(list_mice_MAMI5_RT_SE)
    CIlower_mice_MAMI5_RT_pred <- mean_mice_MAMI5_RT_pred - (2*mean_mice_MAMI5_RT_SE)
    CIupper_mice_MAMI5_RT_pred <- mean_mice_MAMI5_RT_pred + (2*mean_mice_MAMI5_RT_SE)
    mice_MAMI5_RT_pred_max <- max(list_mice_MAMI5_RT_pred) 
    mice_MAMI5_RT_pred_min <- min(list_mice_MAMI5_RT_pred)
    RB_mice_MAMI5_RT_pred <- bias(RT_true, list_mice_MAMI5_RT_pred)
    bias_RB_mice_MAMI5_RT_pred <- list_mice_MAMI5_RT_pred - RT_true
    sd_RB_mice_MAMI5_RT_pred <- sd(bias_RB_mice_MAMI5_RT_pred)    
    PB_mice_MAMI5_RT_pred <- percent_bias(RT_true, list_mice_MAMI5_RT_pred) *100
    RMSE_mice_MAMI5_RT_pred <- rmse(RT_true, list_mice_MAMI5_RT_pred)
    AW_mice_MAMI5_RT_pred <- mean(sapply(list_mice_MAMI5_RT_95width, sum))
    list_mice_MAMI5_RT_coverge <- sapply(list_mice_MAMI5_RT_coverge, sum)
    CR_mice_MAMI5_RT_pred <- mean(list_mice_MAMI5_RT_coverge)
    sd_CR_mice_MAMI5_RT_pred <- sd(list_mice_MAMI5_RT_coverge)
    
    list_mice_MAMI5_UT_pred <- sapply(list_mice_MAMI5_UT_pred, sum)
    mean_mice_MAMI5_UT_pred <- mean(list_mice_MAMI5_UT_pred)
    sd_mice_MAMI5_UT_pred <- sd(list_mice_MAMI5_UT_pred)
    list_mice_MAMI5_UT_SE <- sapply(list_mice_MAMI5_UT_SE, sum)
    mean_mice_MAMI5_UT_SE <- mean(list_mice_MAMI5_UT_SE)
    sd_mice_MAMI5_UT_SE <- sd(list_mice_MAMI5_UT_SE)
    CIlower_mice_MAMI5_UT_pred <- mean_mice_MAMI5_UT_pred - (2*mean_mice_MAMI5_UT_SE)
    CIupper_mice_MAMI5_UT_pred <- mean_mice_MAMI5_UT_pred + (2*mean_mice_MAMI5_UT_SE)
    mice_MAMI5_UT_pred_max <- max(list_mice_MAMI5_UT_pred) 
    mice_MAMI5_UT_pred_min <- min(list_mice_MAMI5_UT_pred)
    RB_mice_MAMI5_UT_pred <- bias(UT_true, list_mice_MAMI5_UT_pred)
    bias_RB_mice_MAMI5_UT_pred <- list_mice_MAMI5_UT_pred - UT_true
    sd_RB_mice_MAMI5_UT_pred <- sd(bias_RB_mice_MAMI5_UT_pred)    
    PB_mice_MAMI5_UT_pred <- percent_bias(UT_true, list_mice_MAMI5_UT_pred) *100
    RMSE_mice_MAMI5_UT_pred <- rmse(UT_true, list_mice_MAMI5_UT_pred)
    AW_mice_MAMI5_UT_pred <- mean(sapply(list_mice_MAMI5_UT_95width, sum))
    list_mice_MAMI5_UT_coverge <- sapply(list_mice_MAMI5_UT_coverge, sum)
    CR_mice_MAMI5_UT_pred <- mean(list_mice_MAMI5_UT_coverge)
    sd_CR_mice_MAMI5_UT_pred <- sd(list_mice_MAMI5_UT_coverge)
    
    list_mice_MAMI5_SW_pred <- sapply(list_mice_MAMI5_SW_pred, sum)
    mean_mice_MAMI5_SW_pred <- mean(list_mice_MAMI5_SW_pred)
    sd_mice_MAMI5_SW_pred <- sd(list_mice_MAMI5_SW_pred)
    list_mice_MAMI5_SW_SE <- sapply(list_mice_MAMI5_SW_SE, sum)
    mean_mice_MAMI5_SW_SE <- mean(list_mice_MAMI5_SW_SE)
    sd_mice_MAMI5_SW_SE <- sd(list_mice_MAMI5_SW_SE)
    CIlower_mice_MAMI5_SW_pred <- mean_mice_MAMI5_SW_pred - (2*mean_mice_MAMI5_SW_SE)
    CIupper_mice_MAMI5_SW_pred <- mean_mice_MAMI5_SW_pred + (2*mean_mice_MAMI5_SW_SE)
    mice_MAMI5_SW_pred_max <- max(list_mice_MAMI5_SW_pred) 
    mice_MAMI5_SW_pred_min <- min(list_mice_MAMI5_SW_pred)
    RB_mice_MAMI5_SW_pred <- bias(SW_true, list_mice_MAMI5_SW_pred)
    bias_RB_mice_MAMI5_SW_pred <- list_mice_MAMI5_SW_pred - SW_true
    sd_RB_mice_MAMI5_SW_pred <- sd(bias_RB_mice_MAMI5_SW_pred)    
    PB_mice_MAMI5_SW_pred <- percent_bias(SW_true, list_mice_MAMI5_SW_pred) *100
    RMSE_mice_MAMI5_SW_pred <- rmse(SW_true, list_mice_MAMI5_SW_pred)
    AW_mice_MAMI5_SW_pred <- mean(sapply(list_mice_MAMI5_SW_95width, sum))
    list_mice_MAMI5_SW_coverge <- sapply(list_mice_MAMI5_SW_coverge, sum)
    CR_mice_MAMI5_SW_pred <- mean(list_mice_MAMI5_SW_coverge)
    sd_CR_mice_MAMI5_SW_pred <- sd(list_mice_MAMI5_SW_coverge)
    
    list_mice_MAMI5_OU_pred <- sapply(list_mice_MAMI5_OU_pred, sum)
    mean_mice_MAMI5_OU_pred <- mean(list_mice_MAMI5_OU_pred)
    sd_mice_MAMI5_OU_pred <- sd(list_mice_MAMI5_OU_pred)
    list_mice_MAMI5_OU_SE <- sapply(list_mice_MAMI5_OU_SE, sum)
    mean_mice_MAMI5_OU_SE <- mean(list_mice_MAMI5_OU_SE)
    sd_mice_MAMI5_OU_SE <- sd(list_mice_MAMI5_OU_SE)
    CIlower_mice_MAMI5_OU_pred <- mean_mice_MAMI5_OU_pred - (2*mean_mice_MAMI5_OU_SE)
    CIupper_mice_MAMI5_OU_pred <- mean_mice_MAMI5_OU_pred + (2*mean_mice_MAMI5_OU_SE)
    mice_MAMI5_OU_pred_max <- max(list_mice_MAMI5_OU_pred) 
    mice_MAMI5_OU_pred_min <- min(list_mice_MAMI5_OU_pred)
    RB_mice_MAMI5_OU_pred <- bias(OU_true, list_mice_MAMI5_OU_pred)
    bias_RB_mice_MAMI5_OU_pred <- list_mice_MAMI5_OU_pred - OU_true
    sd_RB_mice_MAMI5_OU_pred <- sd(bias_RB_mice_MAMI5_OU_pred)    
    PB_mice_MAMI5_OU_pred <- percent_bias(OU_true, list_mice_MAMI5_OU_pred) *100
    RMSE_mice_MAMI5_OU_pred <- rmse(OU_true, list_mice_MAMI5_OU_pred)
    AW_mice_MAMI5_OU_pred <- mean(sapply(list_mice_MAMI5_OU_95width, sum))
    list_mice_MAMI5_OU_coverge <- sapply(list_mice_MAMI5_OU_coverge, sum)
    CR_mice_MAMI5_OU_pred <- mean(list_mice_MAMI5_OU_coverge)
    sd_CR_mice_MAMI5_OU_pred <- sd(list_mice_MAMI5_OU_coverge)
  }
}

#multinom Performance of MI
{
  #Performance of UAMI80
  {
    list_multinom_UAMI80_RT_pred <- sapply(list_multinom_UAMI80_RT_pred, sum)
    mean_multinom_UAMI80_RT_pred <- mean(list_multinom_UAMI80_RT_pred)
    sd_multinom_UAMI80_RT_pred <- sd(list_multinom_UAMI80_RT_pred)
    list_multinom_UAMI80_RT_SE <- sapply(list_multinom_UAMI80_RT_SE, sum)
    mean_multinom_UAMI80_RT_SE <- mean(list_multinom_UAMI80_RT_SE)
    sd_multinom_UAMI80_RT_SE <- sd(list_multinom_UAMI80_RT_SE)
    CIlower_multinom_UAMI80_RT_pred <- mean_multinom_UAMI80_RT_pred - (2*mean_multinom_UAMI80_RT_SE)
    CIupper_multinom_UAMI80_RT_pred <- mean_multinom_UAMI80_RT_pred + (2*mean_multinom_UAMI80_RT_SE)
    multinom_UAMI80_RT_pred_max <- max(list_multinom_UAMI80_RT_pred) 
    multinom_UAMI80_RT_pred_min <- min(list_multinom_UAMI80_RT_pred)
    RB_multinom_UAMI80_RT_pred <- bias(RT_true, list_multinom_UAMI80_RT_pred)
    bias_RB_multinom_UAMI80_RT_pred <- list_multinom_UAMI80_RT_pred - RT_true
    sd_RB_multinom_UAMI80_RT_pred <- sd(bias_RB_multinom_UAMI80_RT_pred)    
    PB_multinom_UAMI80_RT_pred <- percent_bias(RT_true, list_multinom_UAMI80_RT_pred) *100
    RMSE_multinom_UAMI80_RT_pred <- rmse(RT_true, list_multinom_UAMI80_RT_pred)
    AW_multinom_UAMI80_RT_pred <- mean(sapply(list_multinom_UAMI80_RT_95width, sum))
    list_multinom_UAMI80_RT_coverge <- sapply(list_multinom_UAMI80_RT_coverge, sum)
    CR_multinom_UAMI80_RT_pred <- mean(list_multinom_UAMI80_RT_coverge)
    sd_CR_multinom_UAMI80_RT_pred <- sd(list_multinom_UAMI80_RT_coverge)
    
    list_multinom_UAMI80_UT_pred <- sapply(list_multinom_UAMI80_UT_pred, sum)
    mean_multinom_UAMI80_UT_pred <- mean(list_multinom_UAMI80_UT_pred)
    sd_multinom_UAMI80_UT_pred <- sd(list_multinom_UAMI80_UT_pred)
    list_multinom_UAMI80_UT_SE <- sapply(list_multinom_UAMI80_UT_SE, sum)
    mean_multinom_UAMI80_UT_SE <- mean(list_multinom_UAMI80_UT_SE)
    sd_multinom_UAMI80_UT_SE <- sd(list_multinom_UAMI80_UT_SE)
    CIlower_multinom_UAMI80_UT_pred <- mean_multinom_UAMI80_UT_pred - (2*mean_multinom_UAMI80_UT_SE)
    CIupper_multinom_UAMI80_UT_pred <- mean_multinom_UAMI80_UT_pred + (2*mean_multinom_UAMI80_UT_SE)
    multinom_UAMI80_UT_pred_max <- max(list_multinom_UAMI80_UT_pred) 
    multinom_UAMI80_UT_pred_min <- min(list_multinom_UAMI80_UT_pred)
    RB_multinom_UAMI80_UT_pred <- bias(UT_true, list_multinom_UAMI80_UT_pred)
    bias_RB_multinom_UAMI80_UT_pred <- list_multinom_UAMI80_UT_pred - UT_true
    sd_RB_multinom_UAMI80_UT_pred <- sd(bias_RB_multinom_UAMI80_UT_pred)    
    PB_multinom_UAMI80_UT_pred <- percent_bias(UT_true, list_multinom_UAMI80_UT_pred) *100
    RMSE_multinom_UAMI80_UT_pred <- rmse(UT_true, list_multinom_UAMI80_UT_pred)
    AW_multinom_UAMI80_UT_pred <- mean(sapply(list_multinom_UAMI80_UT_95width, sum))
    list_multinom_UAMI80_UT_coverge <- sapply(list_multinom_UAMI80_UT_coverge, sum)
    CR_multinom_UAMI80_UT_pred <- mean(list_multinom_UAMI80_UT_coverge)
    sd_CR_multinom_UAMI80_UT_pred <- sd(list_multinom_UAMI80_UT_coverge)
    
    list_multinom_UAMI80_SW_pred <- sapply(list_multinom_UAMI80_SW_pred, sum)
    mean_multinom_UAMI80_SW_pred <- mean(list_multinom_UAMI80_SW_pred)
    sd_multinom_UAMI80_SW_pred <- sd(list_multinom_UAMI80_SW_pred)
    list_multinom_UAMI80_SW_SE <- sapply(list_multinom_UAMI80_SW_SE, sum)
    mean_multinom_UAMI80_SW_SE <- mean(list_multinom_UAMI80_SW_SE)
    sd_multinom_UAMI80_SW_SE <- sd(list_multinom_UAMI80_SW_SE)
    CIlower_multinom_UAMI80_SW_pred <- mean_multinom_UAMI80_SW_pred - (2*mean_multinom_UAMI80_SW_SE)
    CIupper_multinom_UAMI80_SW_pred <- mean_multinom_UAMI80_SW_pred + (2*mean_multinom_UAMI80_SW_SE)
    multinom_UAMI80_SW_pred_max <- max(list_multinom_UAMI80_SW_pred) 
    multinom_UAMI80_SW_pred_min <- min(list_multinom_UAMI80_SW_pred)
    RB_multinom_UAMI80_SW_pred <- bias(SW_true, list_multinom_UAMI80_SW_pred)
    bias_RB_multinom_UAMI80_SW_pred <- list_multinom_UAMI80_SW_pred - SW_true
    sd_RB_multinom_UAMI80_SW_pred <- sd(bias_RB_multinom_UAMI80_SW_pred)    
    PB_multinom_UAMI80_SW_pred <- percent_bias(SW_true, list_multinom_UAMI80_SW_pred) *100
    RMSE_multinom_UAMI80_SW_pred <- rmse(SW_true, list_multinom_UAMI80_SW_pred)
    AW_multinom_UAMI80_SW_pred <- mean(sapply(list_multinom_UAMI80_SW_95width, sum))
    list_multinom_UAMI80_SW_coverge <- sapply(list_multinom_UAMI80_SW_coverge, sum)
    CR_multinom_UAMI80_SW_pred <- mean(list_multinom_UAMI80_SW_coverge)
    sd_CR_multinom_UAMI80_SW_pred <- sd(list_multinom_UAMI80_SW_coverge)
    
    list_multinom_UAMI80_OU_pred <- sapply(list_multinom_UAMI80_OU_pred, sum)
    mean_multinom_UAMI80_OU_pred <- mean(list_multinom_UAMI80_OU_pred)
    sd_multinom_UAMI80_OU_pred <- sd(list_multinom_UAMI80_OU_pred)
    list_multinom_UAMI80_OU_SE <- sapply(list_multinom_UAMI80_OU_SE, sum)
    mean_multinom_UAMI80_OU_SE <- mean(list_multinom_UAMI80_OU_SE)
    sd_multinom_UAMI80_OU_SE <- sd(list_multinom_UAMI80_OU_SE)
    CIlower_multinom_UAMI80_OU_pred <- mean_multinom_UAMI80_OU_pred - (2*mean_multinom_UAMI80_OU_SE)
    CIupper_multinom_UAMI80_OU_pred <- mean_multinom_UAMI80_OU_pred + (2*mean_multinom_UAMI80_OU_SE)
    multinom_UAMI80_OU_pred_max <- max(list_multinom_UAMI80_OU_pred) 
    multinom_UAMI80_OU_pred_min <- min(list_multinom_UAMI80_OU_pred)
    RB_multinom_UAMI80_OU_pred <- bias(OU_true, list_multinom_UAMI80_OU_pred)
    bias_RB_multinom_UAMI80_OU_pred <- list_multinom_UAMI80_OU_pred - OU_true
    sd_RB_multinom_UAMI80_OU_pred <- sd(bias_RB_multinom_UAMI80_OU_pred)    
    PB_multinom_UAMI80_OU_pred <- percent_bias(OU_true, list_multinom_UAMI80_OU_pred) *100
    RMSE_multinom_UAMI80_OU_pred <- rmse(OU_true, list_multinom_UAMI80_OU_pred)
    AW_multinom_UAMI80_OU_pred <- mean(sapply(list_multinom_UAMI80_OU_95width, sum))
    list_multinom_UAMI80_OU_coverge <- sapply(list_multinom_UAMI80_OU_coverge, sum)
    CR_multinom_UAMI80_OU_pred <- mean(list_multinom_UAMI80_OU_coverge)
    sd_CR_multinom_UAMI80_OU_pred <- sd(list_multinom_UAMI80_OU_coverge)
  }
  
  #Performance of UAMI50
  {
    list_multinom_UAMI50_RT_pred <- sapply(list_multinom_UAMI50_RT_pred, sum)
    mean_multinom_UAMI50_RT_pred <- mean(list_multinom_UAMI50_RT_pred)
    sd_multinom_UAMI50_RT_pred <- sd(list_multinom_UAMI50_RT_pred)
    list_multinom_UAMI50_RT_SE <- sapply(list_multinom_UAMI50_RT_SE, sum)
    mean_multinom_UAMI50_RT_SE <- mean(list_multinom_UAMI50_RT_SE)
    sd_multinom_UAMI50_RT_SE <- sd(list_multinom_UAMI50_RT_SE)
    CIlower_multinom_UAMI50_RT_pred <- mean_multinom_UAMI50_RT_pred - (2*mean_multinom_UAMI50_RT_SE)
    CIupper_multinom_UAMI50_RT_pred <- mean_multinom_UAMI50_RT_pred + (2*mean_multinom_UAMI50_RT_SE)
    multinom_UAMI50_RT_pred_max <- max(list_multinom_UAMI50_RT_pred) 
    multinom_UAMI50_RT_pred_min <- min(list_multinom_UAMI50_RT_pred)
    RB_multinom_UAMI50_RT_pred <- bias(RT_true, list_multinom_UAMI50_RT_pred)
    bias_RB_multinom_UAMI50_RT_pred <- list_multinom_UAMI50_RT_pred - RT_true
    sd_RB_multinom_UAMI50_RT_pred <- sd(bias_RB_multinom_UAMI50_RT_pred)    
    PB_multinom_UAMI50_RT_pred <- percent_bias(RT_true, list_multinom_UAMI50_RT_pred) *100
    RMSE_multinom_UAMI50_RT_pred <- rmse(RT_true, list_multinom_UAMI50_RT_pred)
    AW_multinom_UAMI50_RT_pred <- mean(sapply(list_multinom_UAMI50_RT_95width, sum))
    list_multinom_UAMI50_RT_coverge <- sapply(list_multinom_UAMI50_RT_coverge, sum)
    CR_multinom_UAMI50_RT_pred <- mean(list_multinom_UAMI50_RT_coverge)
    sd_CR_multinom_UAMI50_RT_pred <- sd(list_multinom_UAMI50_RT_coverge)
    
    list_multinom_UAMI50_UT_pred <- sapply(list_multinom_UAMI50_UT_pred, sum)
    mean_multinom_UAMI50_UT_pred <- mean(list_multinom_UAMI50_UT_pred)
    sd_multinom_UAMI50_UT_pred <- sd(list_multinom_UAMI50_UT_pred)
    list_multinom_UAMI50_UT_SE <- sapply(list_multinom_UAMI50_UT_SE, sum)
    mean_multinom_UAMI50_UT_SE <- mean(list_multinom_UAMI50_UT_SE)
    sd_multinom_UAMI50_UT_SE <- sd(list_multinom_UAMI50_UT_SE)
    CIlower_multinom_UAMI50_UT_pred <- mean_multinom_UAMI50_UT_pred - (2*mean_multinom_UAMI50_UT_SE)
    CIupper_multinom_UAMI50_UT_pred <- mean_multinom_UAMI50_UT_pred + (2*mean_multinom_UAMI50_UT_SE)
    multinom_UAMI50_UT_pred_max <- max(list_multinom_UAMI50_UT_pred) 
    multinom_UAMI50_UT_pred_min <- min(list_multinom_UAMI50_UT_pred)
    RB_multinom_UAMI50_UT_pred <- bias(UT_true, list_multinom_UAMI50_UT_pred)
    bias_RB_multinom_UAMI50_UT_pred <- list_multinom_UAMI50_UT_pred - UT_true
    sd_RB_multinom_UAMI50_UT_pred <- sd(bias_RB_multinom_UAMI50_UT_pred)    
    PB_multinom_UAMI50_UT_pred <- percent_bias(UT_true, list_multinom_UAMI50_UT_pred) *100
    RMSE_multinom_UAMI50_UT_pred <- rmse(UT_true, list_multinom_UAMI50_UT_pred)
    AW_multinom_UAMI50_UT_pred <- mean(sapply(list_multinom_UAMI50_UT_95width, sum))
    list_multinom_UAMI50_UT_coverge <- sapply(list_multinom_UAMI50_UT_coverge, sum)
    CR_multinom_UAMI50_UT_pred <- mean(list_multinom_UAMI50_UT_coverge)
    sd_CR_multinom_UAMI50_UT_pred <- sd(list_multinom_UAMI50_UT_coverge)
    
    list_multinom_UAMI50_SW_pred <- sapply(list_multinom_UAMI50_SW_pred, sum)
    mean_multinom_UAMI50_SW_pred <- mean(list_multinom_UAMI50_SW_pred)
    sd_multinom_UAMI50_SW_pred <- sd(list_multinom_UAMI50_SW_pred)
    list_multinom_UAMI50_SW_SE <- sapply(list_multinom_UAMI50_SW_SE, sum)
    mean_multinom_UAMI50_SW_SE <- mean(list_multinom_UAMI50_SW_SE)
    sd_multinom_UAMI50_SW_SE <- sd(list_multinom_UAMI50_SW_SE)
    CIlower_multinom_UAMI50_SW_pred <- mean_multinom_UAMI50_SW_pred - (2*mean_multinom_UAMI50_SW_SE)
    CIupper_multinom_UAMI50_SW_pred <- mean_multinom_UAMI50_SW_pred + (2*mean_multinom_UAMI50_SW_SE)
    multinom_UAMI50_SW_pred_max <- max(list_multinom_UAMI50_SW_pred) 
    multinom_UAMI50_SW_pred_min <- min(list_multinom_UAMI50_SW_pred)
    RB_multinom_UAMI50_SW_pred <- bias(SW_true, list_multinom_UAMI50_SW_pred)
    bias_RB_multinom_UAMI50_SW_pred <- list_multinom_UAMI50_SW_pred - SW_true
    sd_RB_multinom_UAMI50_SW_pred <- sd(bias_RB_multinom_UAMI50_SW_pred)    
    PB_multinom_UAMI50_SW_pred <- percent_bias(SW_true, list_multinom_UAMI50_SW_pred) *100
    RMSE_multinom_UAMI50_SW_pred <- rmse(SW_true, list_multinom_UAMI50_SW_pred)
    AW_multinom_UAMI50_SW_pred <- mean(sapply(list_multinom_UAMI50_SW_95width, sum))
    list_multinom_UAMI50_SW_coverge <- sapply(list_multinom_UAMI50_SW_coverge, sum)
    CR_multinom_UAMI50_SW_pred <- mean(list_multinom_UAMI50_SW_coverge)
    sd_CR_multinom_UAMI50_SW_pred <- sd(list_multinom_UAMI50_SW_coverge)
    
    list_multinom_UAMI50_OU_pred <- sapply(list_multinom_UAMI50_OU_pred, sum)
    mean_multinom_UAMI50_OU_pred <- mean(list_multinom_UAMI50_OU_pred)
    sd_multinom_UAMI50_OU_pred <- sd(list_multinom_UAMI50_OU_pred)
    list_multinom_UAMI50_OU_SE <- sapply(list_multinom_UAMI50_OU_SE, sum)
    mean_multinom_UAMI50_OU_SE <- mean(list_multinom_UAMI50_OU_SE)
    sd_multinom_UAMI50_OU_SE <- sd(list_multinom_UAMI50_OU_SE)
    CIlower_multinom_UAMI50_OU_pred <- mean_multinom_UAMI50_OU_pred - (2*mean_multinom_UAMI50_OU_SE)
    CIupper_multinom_UAMI50_OU_pred <- mean_multinom_UAMI50_OU_pred + (2*mean_multinom_UAMI50_OU_SE)
    multinom_UAMI50_OU_pred_max <- max(list_multinom_UAMI50_OU_pred) 
    multinom_UAMI50_OU_pred_min <- min(list_multinom_UAMI50_OU_pred)
    RB_multinom_UAMI50_OU_pred <- bias(OU_true, list_multinom_UAMI50_OU_pred)
    bias_RB_multinom_UAMI50_OU_pred <- list_multinom_UAMI50_OU_pred - OU_true
    sd_RB_multinom_UAMI50_OU_pred <- sd(bias_RB_multinom_UAMI50_OU_pred)    
    PB_multinom_UAMI50_OU_pred <- percent_bias(OU_true, list_multinom_UAMI50_OU_pred) *100
    RMSE_multinom_UAMI50_OU_pred <- rmse(OU_true, list_multinom_UAMI50_OU_pred)
    AW_multinom_UAMI50_OU_pred <- mean(sapply(list_multinom_UAMI50_OU_95width, sum))
    list_multinom_UAMI50_OU_coverge <- sapply(list_multinom_UAMI50_OU_coverge, sum)
    CR_multinom_UAMI50_OU_pred <- mean(list_multinom_UAMI50_OU_coverge)
    sd_CR_multinom_UAMI50_OU_pred <- sd(list_multinom_UAMI50_OU_coverge)
  }
  
  #Performance of UAMI20
  {
    list_multinom_UAMI20_RT_pred <- sapply(list_multinom_UAMI20_RT_pred, sum)
    mean_multinom_UAMI20_RT_pred <- mean(list_multinom_UAMI20_RT_pred)
    sd_multinom_UAMI20_RT_pred <- sd(list_multinom_UAMI20_RT_pred)
    list_multinom_UAMI20_RT_SE <- sapply(list_multinom_UAMI20_RT_SE, sum)
    mean_multinom_UAMI20_RT_SE <- mean(list_multinom_UAMI20_RT_SE)
    sd_multinom_UAMI20_RT_SE <- sd(list_multinom_UAMI20_RT_SE)
    CIlower_multinom_UAMI20_RT_pred <- mean_multinom_UAMI20_RT_pred - (2*mean_multinom_UAMI20_RT_SE)
    CIupper_multinom_UAMI20_RT_pred <- mean_multinom_UAMI20_RT_pred + (2*mean_multinom_UAMI20_RT_SE)
    multinom_UAMI20_RT_pred_max <- max(list_multinom_UAMI20_RT_pred) 
    multinom_UAMI20_RT_pred_min <- min(list_multinom_UAMI20_RT_pred)
    RB_multinom_UAMI20_RT_pred <- bias(RT_true, list_multinom_UAMI20_RT_pred)
    bias_RB_multinom_UAMI20_RT_pred <- list_multinom_UAMI20_RT_pred - RT_true
    sd_RB_multinom_UAMI20_RT_pred <- sd(bias_RB_multinom_UAMI20_RT_pred)    
    PB_multinom_UAMI20_RT_pred <- percent_bias(RT_true, list_multinom_UAMI20_RT_pred) *100
    RMSE_multinom_UAMI20_RT_pred <- rmse(RT_true, list_multinom_UAMI20_RT_pred)
    AW_multinom_UAMI20_RT_pred <- mean(sapply(list_multinom_UAMI20_RT_95width, sum))
    list_multinom_UAMI20_RT_coverge <- sapply(list_multinom_UAMI20_RT_coverge, sum)
    CR_multinom_UAMI20_RT_pred <- mean(list_multinom_UAMI20_RT_coverge)
    sd_CR_multinom_UAMI20_RT_pred <- sd(list_multinom_UAMI20_RT_coverge)
    
    list_multinom_UAMI20_UT_pred <- sapply(list_multinom_UAMI20_UT_pred, sum)
    mean_multinom_UAMI20_UT_pred <- mean(list_multinom_UAMI20_UT_pred)
    sd_multinom_UAMI20_UT_pred <- sd(list_multinom_UAMI20_UT_pred)
    list_multinom_UAMI20_UT_SE <- sapply(list_multinom_UAMI20_UT_SE, sum)
    mean_multinom_UAMI20_UT_SE <- mean(list_multinom_UAMI20_UT_SE)
    sd_multinom_UAMI20_UT_SE <- sd(list_multinom_UAMI20_UT_SE)
    CIlower_multinom_UAMI20_UT_pred <- mean_multinom_UAMI20_UT_pred - (2*mean_multinom_UAMI20_UT_SE)
    CIupper_multinom_UAMI20_UT_pred <- mean_multinom_UAMI20_UT_pred + (2*mean_multinom_UAMI20_UT_SE)
    multinom_UAMI20_UT_pred_max <- max(list_multinom_UAMI20_UT_pred) 
    multinom_UAMI20_UT_pred_min <- min(list_multinom_UAMI20_UT_pred)
    RB_multinom_UAMI20_UT_pred <- bias(UT_true, list_multinom_UAMI20_UT_pred)
    bias_RB_multinom_UAMI20_UT_pred <- list_multinom_UAMI20_UT_pred - UT_true
    sd_RB_multinom_UAMI20_UT_pred <- sd(bias_RB_multinom_UAMI20_UT_pred)    
    PB_multinom_UAMI20_UT_pred <- percent_bias(UT_true, list_multinom_UAMI20_UT_pred) *100
    RMSE_multinom_UAMI20_UT_pred <- rmse(UT_true, list_multinom_UAMI20_UT_pred)
    AW_multinom_UAMI20_UT_pred <- mean(sapply(list_multinom_UAMI20_UT_95width, sum))
    list_multinom_UAMI20_UT_coverge <- sapply(list_multinom_UAMI20_UT_coverge, sum)
    CR_multinom_UAMI20_UT_pred <- mean(list_multinom_UAMI20_UT_coverge)
    sd_CR_multinom_UAMI20_UT_pred <- sd(list_multinom_UAMI20_UT_coverge)
    
    list_multinom_UAMI20_SW_pred <- sapply(list_multinom_UAMI20_SW_pred, sum)
    mean_multinom_UAMI20_SW_pred <- mean(list_multinom_UAMI20_SW_pred)
    sd_multinom_UAMI20_SW_pred <- sd(list_multinom_UAMI20_SW_pred)
    list_multinom_UAMI20_SW_SE <- sapply(list_multinom_UAMI20_SW_SE, sum)
    mean_multinom_UAMI20_SW_SE <- mean(list_multinom_UAMI20_SW_SE)
    sd_multinom_UAMI20_SW_SE <- sd(list_multinom_UAMI20_SW_SE)
    CIlower_multinom_UAMI20_SW_pred <- mean_multinom_UAMI20_SW_pred - (2*mean_multinom_UAMI20_SW_SE)
    CIupper_multinom_UAMI20_SW_pred <- mean_multinom_UAMI20_SW_pred + (2*mean_multinom_UAMI20_SW_SE)
    multinom_UAMI20_SW_pred_max <- max(list_multinom_UAMI20_SW_pred) 
    multinom_UAMI20_SW_pred_min <- min(list_multinom_UAMI20_SW_pred)
    RB_multinom_UAMI20_SW_pred <- bias(SW_true, list_multinom_UAMI20_SW_pred)
    bias_RB_multinom_UAMI20_SW_pred <- list_multinom_UAMI20_SW_pred - SW_true
    sd_RB_multinom_UAMI20_SW_pred <- sd(bias_RB_multinom_UAMI20_SW_pred)    
    PB_multinom_UAMI20_SW_pred <- percent_bias(SW_true, list_multinom_UAMI20_SW_pred) *100
    RMSE_multinom_UAMI20_SW_pred <- rmse(SW_true, list_multinom_UAMI20_SW_pred)
    AW_multinom_UAMI20_SW_pred <- mean(sapply(list_multinom_UAMI20_SW_95width, sum))
    list_multinom_UAMI20_SW_coverge <- sapply(list_multinom_UAMI20_SW_coverge, sum)
    CR_multinom_UAMI20_SW_pred <- mean(list_multinom_UAMI20_SW_coverge)
    sd_CR_multinom_UAMI20_SW_pred <- sd(list_multinom_UAMI20_SW_coverge)
    
    list_multinom_UAMI20_OU_pred <- sapply(list_multinom_UAMI20_OU_pred, sum)
    mean_multinom_UAMI20_OU_pred <- mean(list_multinom_UAMI20_OU_pred)
    sd_multinom_UAMI20_OU_pred <- sd(list_multinom_UAMI20_OU_pred)
    list_multinom_UAMI20_OU_SE <- sapply(list_multinom_UAMI20_OU_SE, sum)
    mean_multinom_UAMI20_OU_SE <- mean(list_multinom_UAMI20_OU_SE)
    sd_multinom_UAMI20_OU_SE <- sd(list_multinom_UAMI20_OU_SE)
    CIlower_multinom_UAMI20_OU_pred <- mean_multinom_UAMI20_OU_pred - (2*mean_multinom_UAMI20_OU_SE)
    CIupper_multinom_UAMI20_OU_pred <- mean_multinom_UAMI20_OU_pred + (2*mean_multinom_UAMI20_OU_SE)
    multinom_UAMI20_OU_pred_max <- max(list_multinom_UAMI20_OU_pred) 
    multinom_UAMI20_OU_pred_min <- min(list_multinom_UAMI20_OU_pred)
    RB_multinom_UAMI20_OU_pred <- bias(OU_true, list_multinom_UAMI20_OU_pred)
    bias_RB_multinom_UAMI20_OU_pred <- list_multinom_UAMI20_OU_pred - OU_true
    sd_RB_multinom_UAMI20_OU_pred <- sd(bias_RB_multinom_UAMI20_OU_pred)    
    PB_multinom_UAMI20_OU_pred <- percent_bias(OU_true, list_multinom_UAMI20_OU_pred) *100
    RMSE_multinom_UAMI20_OU_pred <- rmse(OU_true, list_multinom_UAMI20_OU_pred)
    AW_multinom_UAMI20_OU_pred <- mean(sapply(list_multinom_UAMI20_OU_95width, sum))
    list_multinom_UAMI20_OU_coverge <- sapply(list_multinom_UAMI20_OU_coverge, sum)
    CR_multinom_UAMI20_OU_pred <- mean(list_multinom_UAMI20_OU_coverge)
    sd_CR_multinom_UAMI20_OU_pred <- sd(list_multinom_UAMI20_OU_coverge)
  }
  
  #Performance of UAMI5
  {
    list_multinom_UAMI5_RT_pred <- sapply(list_multinom_UAMI5_RT_pred, sum)
    mean_multinom_UAMI5_RT_pred <- mean(list_multinom_UAMI5_RT_pred)
    sd_multinom_UAMI5_RT_pred <- sd(list_multinom_UAMI5_RT_pred)
    list_multinom_UAMI5_RT_SE <- sapply(list_multinom_UAMI5_RT_SE, sum)
    mean_multinom_UAMI5_RT_SE <- mean(list_multinom_UAMI5_RT_SE)
    sd_multinom_UAMI5_RT_SE <- sd(list_multinom_UAMI5_RT_SE)
    CIlower_multinom_UAMI5_RT_pred <- mean_multinom_UAMI5_RT_pred - (2*mean_multinom_UAMI5_RT_SE)
    CIupper_multinom_UAMI5_RT_pred <- mean_multinom_UAMI5_RT_pred + (2*mean_multinom_UAMI5_RT_SE)
    multinom_UAMI5_RT_pred_max <- max(list_multinom_UAMI5_RT_pred) 
    multinom_UAMI5_RT_pred_min <- min(list_multinom_UAMI5_RT_pred)
    RB_multinom_UAMI5_RT_pred <- bias(RT_true, list_multinom_UAMI5_RT_pred)
    bias_RB_multinom_UAMI5_RT_pred <- list_multinom_UAMI5_RT_pred - RT_true
    sd_RB_multinom_UAMI5_RT_pred <- sd(bias_RB_multinom_UAMI5_RT_pred)    
    PB_multinom_UAMI5_RT_pred <- percent_bias(RT_true, list_multinom_UAMI5_RT_pred) *100
    RMSE_multinom_UAMI5_RT_pred <- rmse(RT_true, list_multinom_UAMI5_RT_pred)
    AW_multinom_UAMI5_RT_pred <- mean(sapply(list_multinom_UAMI5_RT_95width, sum))
    list_multinom_UAMI5_RT_coverge <- sapply(list_multinom_UAMI5_RT_coverge, sum)
    CR_multinom_UAMI5_RT_pred <- mean(list_multinom_UAMI5_RT_coverge)
    sd_CR_multinom_UAMI5_RT_pred <- sd(list_multinom_UAMI5_RT_coverge)
    
    list_multinom_UAMI5_UT_pred <- sapply(list_multinom_UAMI5_UT_pred, sum)
    mean_multinom_UAMI5_UT_pred <- mean(list_multinom_UAMI5_UT_pred)
    sd_multinom_UAMI5_UT_pred <- sd(list_multinom_UAMI5_UT_pred)
    list_multinom_UAMI5_UT_SE <- sapply(list_multinom_UAMI5_UT_SE, sum)
    mean_multinom_UAMI5_UT_SE <- mean(list_multinom_UAMI5_UT_SE)
    sd_multinom_UAMI5_UT_SE <- sd(list_multinom_UAMI5_UT_SE)
    CIlower_multinom_UAMI5_UT_pred <- mean_multinom_UAMI5_UT_pred - (2*mean_multinom_UAMI5_UT_SE)
    CIupper_multinom_UAMI5_UT_pred <- mean_multinom_UAMI5_UT_pred + (2*mean_multinom_UAMI5_UT_SE)
    multinom_UAMI5_UT_pred_max <- max(list_multinom_UAMI5_UT_pred) 
    multinom_UAMI5_UT_pred_min <- min(list_multinom_UAMI5_UT_pred)
    RB_multinom_UAMI5_UT_pred <- bias(UT_true, list_multinom_UAMI5_UT_pred)
    bias_RB_multinom_UAMI5_UT_pred <- list_multinom_UAMI5_UT_pred - UT_true
    sd_RB_multinom_UAMI5_UT_pred <- sd(bias_RB_multinom_UAMI5_UT_pred)    
    PB_multinom_UAMI5_UT_pred <- percent_bias(UT_true, list_multinom_UAMI5_UT_pred) *100
    RMSE_multinom_UAMI5_UT_pred <- rmse(UT_true, list_multinom_UAMI5_UT_pred)
    AW_multinom_UAMI5_UT_pred <- mean(sapply(list_multinom_UAMI5_UT_95width, sum))
    list_multinom_UAMI5_UT_coverge <- sapply(list_multinom_UAMI5_UT_coverge, sum)
    CR_multinom_UAMI5_UT_pred <- mean(list_multinom_UAMI5_UT_coverge)
    sd_CR_multinom_UAMI5_UT_pred <- sd(list_multinom_UAMI5_UT_coverge)
    
    list_multinom_UAMI5_SW_pred <- sapply(list_multinom_UAMI5_SW_pred, sum)
    mean_multinom_UAMI5_SW_pred <- mean(list_multinom_UAMI5_SW_pred)
    sd_multinom_UAMI5_SW_pred <- sd(list_multinom_UAMI5_SW_pred)
    list_multinom_UAMI5_SW_SE <- sapply(list_multinom_UAMI5_SW_SE, sum)
    mean_multinom_UAMI5_SW_SE <- mean(list_multinom_UAMI5_SW_SE)
    sd_multinom_UAMI5_SW_SE <- sd(list_multinom_UAMI5_SW_SE)
    CIlower_multinom_UAMI5_SW_pred <- mean_multinom_UAMI5_SW_pred - (2*mean_multinom_UAMI5_SW_SE)
    CIupper_multinom_UAMI5_SW_pred <- mean_multinom_UAMI5_SW_pred + (2*mean_multinom_UAMI5_SW_SE)
    multinom_UAMI5_SW_pred_max <- max(list_multinom_UAMI5_SW_pred) 
    multinom_UAMI5_SW_pred_min <- min(list_multinom_UAMI5_SW_pred)
    RB_multinom_UAMI5_SW_pred <- bias(SW_true, list_multinom_UAMI5_SW_pred)
    bias_RB_multinom_UAMI5_SW_pred <- list_multinom_UAMI5_SW_pred - SW_true
    sd_RB_multinom_UAMI5_SW_pred <- sd(bias_RB_multinom_UAMI5_SW_pred)    
    PB_multinom_UAMI5_SW_pred <- percent_bias(SW_true, list_multinom_UAMI5_SW_pred) *100
    RMSE_multinom_UAMI5_SW_pred <- rmse(SW_true, list_multinom_UAMI5_SW_pred)
    AW_multinom_UAMI5_SW_pred <- mean(sapply(list_multinom_UAMI5_SW_95width, sum))
    list_multinom_UAMI5_SW_coverge <- sapply(list_multinom_UAMI5_SW_coverge, sum)
    CR_multinom_UAMI5_SW_pred <- mean(list_multinom_UAMI5_SW_coverge)
    sd_CR_multinom_UAMI5_SW_pred <- sd(list_multinom_UAMI5_SW_coverge)
    
    list_multinom_UAMI5_OU_pred <- sapply(list_multinom_UAMI5_OU_pred, sum)
    mean_multinom_UAMI5_OU_pred <- mean(list_multinom_UAMI5_OU_pred)
    sd_multinom_UAMI5_OU_pred <- sd(list_multinom_UAMI5_OU_pred)
    list_multinom_UAMI5_OU_SE <- sapply(list_multinom_UAMI5_OU_SE, sum)
    mean_multinom_UAMI5_OU_SE <- mean(list_multinom_UAMI5_OU_SE)
    sd_multinom_UAMI5_OU_SE <- sd(list_multinom_UAMI5_OU_SE)
    CIlower_multinom_UAMI5_OU_pred <- mean_multinom_UAMI5_OU_pred - (2*mean_multinom_UAMI5_OU_SE)
    CIupper_multinom_UAMI5_OU_pred <- mean_multinom_UAMI5_OU_pred + (2*mean_multinom_UAMI5_OU_SE)
    multinom_UAMI5_OU_pred_max <- max(list_multinom_UAMI5_OU_pred) 
    multinom_UAMI5_OU_pred_min <- min(list_multinom_UAMI5_OU_pred)
    RB_multinom_UAMI5_OU_pred <- bias(OU_true, list_multinom_UAMI5_OU_pred)
    bias_RB_multinom_UAMI5_OU_pred <- list_multinom_UAMI5_OU_pred - OU_true
    sd_RB_multinom_UAMI5_OU_pred <- sd(bias_RB_multinom_UAMI5_OU_pred)    
    PB_multinom_UAMI5_OU_pred <- percent_bias(OU_true, list_multinom_UAMI5_OU_pred) *100
    RMSE_multinom_UAMI5_OU_pred <- rmse(OU_true, list_multinom_UAMI5_OU_pred)
    AW_multinom_UAMI5_OU_pred <- mean(sapply(list_multinom_UAMI5_OU_95width, sum))
    list_multinom_UAMI5_OU_coverge <- sapply(list_multinom_UAMI5_OU_coverge, sum)
    CR_multinom_UAMI5_OU_pred <- mean(list_multinom_UAMI5_OU_coverge)
    sd_CR_multinom_UAMI5_OU_pred <- sd(list_multinom_UAMI5_OU_coverge)
  }
  
  #Performance of MAMI80
  {
    list_multinom_MAMI80_RT_pred <- sapply(list_multinom_MAMI80_RT_pred, sum)
    mean_multinom_MAMI80_RT_pred <- mean(list_multinom_MAMI80_RT_pred)
    sd_multinom_MAMI80_RT_pred <- sd(list_multinom_MAMI80_RT_pred)
    list_multinom_MAMI80_RT_SE <- sapply(list_multinom_MAMI80_RT_SE, sum)
    mean_multinom_MAMI80_RT_SE <- mean(list_multinom_MAMI80_RT_SE)
    sd_multinom_MAMI80_RT_SE <- sd(list_multinom_MAMI80_RT_SE)
    CIlower_multinom_MAMI80_RT_pred <- mean_multinom_MAMI80_RT_pred - (2*mean_multinom_MAMI80_RT_SE)
    CIupper_multinom_MAMI80_RT_pred <- mean_multinom_MAMI80_RT_pred + (2*mean_multinom_MAMI80_RT_SE)
    multinom_MAMI80_RT_pred_max <- max(list_multinom_MAMI80_RT_pred) 
    multinom_MAMI80_RT_pred_min <- min(list_multinom_MAMI80_RT_pred)
    RB_multinom_MAMI80_RT_pred <- bias(RT_true, list_multinom_MAMI80_RT_pred)
    bias_RB_multinom_MAMI80_RT_pred <- list_multinom_MAMI80_RT_pred - RT_true
    sd_RB_multinom_MAMI80_RT_pred <- sd(bias_RB_multinom_MAMI80_RT_pred)    
    PB_multinom_MAMI80_RT_pred <- percent_bias(RT_true, list_multinom_MAMI80_RT_pred) *100
    RMSE_multinom_MAMI80_RT_pred <- rmse(RT_true, list_multinom_MAMI80_RT_pred)
    AW_multinom_MAMI80_RT_pred <- mean(sapply(list_multinom_MAMI80_RT_95width, sum))
    list_multinom_MAMI80_RT_coverge <- sapply(list_multinom_MAMI80_RT_coverge, sum)
    CR_multinom_MAMI80_RT_pred <- mean(list_multinom_MAMI80_RT_coverge)
    sd_CR_multinom_MAMI80_RT_pred <- sd(list_multinom_MAMI80_RT_coverge)
    
    list_multinom_MAMI80_UT_pred <- sapply(list_multinom_MAMI80_UT_pred, sum)
    mean_multinom_MAMI80_UT_pred <- mean(list_multinom_MAMI80_UT_pred)
    sd_multinom_MAMI80_UT_pred <- sd(list_multinom_MAMI80_UT_pred)
    list_multinom_MAMI80_UT_SE <- sapply(list_multinom_MAMI80_UT_SE, sum)
    mean_multinom_MAMI80_UT_SE <- mean(list_multinom_MAMI80_UT_SE)
    sd_multinom_MAMI80_UT_SE <- sd(list_multinom_MAMI80_UT_SE)
    CIlower_multinom_MAMI80_UT_pred <- mean_multinom_MAMI80_UT_pred - (2*mean_multinom_MAMI80_UT_SE)
    CIupper_multinom_MAMI80_UT_pred <- mean_multinom_MAMI80_UT_pred + (2*mean_multinom_MAMI80_UT_SE)
    multinom_MAMI80_UT_pred_max <- max(list_multinom_MAMI80_UT_pred) 
    multinom_MAMI80_UT_pred_min <- min(list_multinom_MAMI80_UT_pred)
    RB_multinom_MAMI80_UT_pred <- bias(UT_true, list_multinom_MAMI80_UT_pred)
    bias_RB_multinom_MAMI80_UT_pred <- list_multinom_MAMI80_UT_pred - UT_true
    sd_RB_multinom_MAMI80_UT_pred <- sd(bias_RB_multinom_MAMI80_UT_pred)    
    PB_multinom_MAMI80_UT_pred <- percent_bias(UT_true, list_multinom_MAMI80_UT_pred) *100
    RMSE_multinom_MAMI80_UT_pred <- rmse(UT_true, list_multinom_MAMI80_UT_pred)
    AW_multinom_MAMI80_UT_pred <- mean(sapply(list_multinom_MAMI80_UT_95width, sum))
    list_multinom_MAMI80_UT_coverge <- sapply(list_multinom_MAMI80_UT_coverge, sum)
    CR_multinom_MAMI80_UT_pred <- mean(list_multinom_MAMI80_UT_coverge)
    sd_CR_multinom_MAMI80_UT_pred <- sd(list_multinom_MAMI80_UT_coverge)
    
    list_multinom_MAMI80_SW_pred <- sapply(list_multinom_MAMI80_SW_pred, sum)
    mean_multinom_MAMI80_SW_pred <- mean(list_multinom_MAMI80_SW_pred)
    sd_multinom_MAMI80_SW_pred <- sd(list_multinom_MAMI80_SW_pred)
    list_multinom_MAMI80_SW_SE <- sapply(list_multinom_MAMI80_SW_SE, sum)
    mean_multinom_MAMI80_SW_SE <- mean(list_multinom_MAMI80_SW_SE)
    sd_multinom_MAMI80_SW_SE <- sd(list_multinom_MAMI80_SW_SE)
    CIlower_multinom_MAMI80_SW_pred <- mean_multinom_MAMI80_SW_pred - (2*mean_multinom_MAMI80_SW_SE)
    CIupper_multinom_MAMI80_SW_pred <- mean_multinom_MAMI80_SW_pred + (2*mean_multinom_MAMI80_SW_SE)
    multinom_MAMI80_SW_pred_max <- max(list_multinom_MAMI80_SW_pred) 
    multinom_MAMI80_SW_pred_min <- min(list_multinom_MAMI80_SW_pred)
    RB_multinom_MAMI80_SW_pred <- bias(SW_true, list_multinom_MAMI80_SW_pred)
    bias_RB_multinom_MAMI80_SW_pred <- list_multinom_MAMI80_SW_pred - SW_true
    sd_RB_multinom_MAMI80_SW_pred <- sd(bias_RB_multinom_MAMI80_SW_pred)    
    PB_multinom_MAMI80_SW_pred <- percent_bias(SW_true, list_multinom_MAMI80_SW_pred) *100
    RMSE_multinom_MAMI80_SW_pred <- rmse(SW_true, list_multinom_MAMI80_SW_pred)
    AW_multinom_MAMI80_SW_pred <- mean(sapply(list_multinom_MAMI80_SW_95width, sum))
    list_multinom_MAMI80_SW_coverge <- sapply(list_multinom_MAMI80_SW_coverge, sum)
    CR_multinom_MAMI80_SW_pred <- mean(list_multinom_MAMI80_SW_coverge)
    sd_CR_multinom_MAMI80_SW_pred <- sd(list_multinom_MAMI80_SW_coverge)
    
    list_multinom_MAMI80_OU_pred <- sapply(list_multinom_MAMI80_OU_pred, sum)
    mean_multinom_MAMI80_OU_pred <- mean(list_multinom_MAMI80_OU_pred)
    sd_multinom_MAMI80_OU_pred <- sd(list_multinom_MAMI80_OU_pred)
    list_multinom_MAMI80_OU_SE <- sapply(list_multinom_MAMI80_OU_SE, sum)
    mean_multinom_MAMI80_OU_SE <- mean(list_multinom_MAMI80_OU_SE)
    sd_multinom_MAMI80_OU_SE <- sd(list_multinom_MAMI80_OU_SE)
    CIlower_multinom_MAMI80_OU_pred <- mean_multinom_MAMI80_OU_pred - (2*mean_multinom_MAMI80_OU_SE)
    CIupper_multinom_MAMI80_OU_pred <- mean_multinom_MAMI80_OU_pred + (2*mean_multinom_MAMI80_OU_SE)
    multinom_MAMI80_OU_pred_max <- max(list_multinom_MAMI80_OU_pred) 
    multinom_MAMI80_OU_pred_min <- min(list_multinom_MAMI80_OU_pred)
    RB_multinom_MAMI80_OU_pred <- bias(OU_true, list_multinom_MAMI80_OU_pred)
    bias_RB_multinom_MAMI80_OU_pred <- list_multinom_MAMI80_OU_pred - OU_true
    sd_RB_multinom_MAMI80_OU_pred <- sd(bias_RB_multinom_MAMI80_OU_pred)    
    PB_multinom_MAMI80_OU_pred <- percent_bias(OU_true, list_multinom_MAMI80_OU_pred) *100
    RMSE_multinom_MAMI80_OU_pred <- rmse(OU_true, list_multinom_MAMI80_OU_pred)
    AW_multinom_MAMI80_OU_pred <- mean(sapply(list_multinom_MAMI80_OU_95width, sum))
    list_multinom_MAMI80_OU_coverge <- sapply(list_multinom_MAMI80_OU_coverge, sum)
    CR_multinom_MAMI80_OU_pred <- mean(list_multinom_MAMI80_OU_coverge)
    sd_CR_multinom_MAMI80_OU_pred <- sd(list_multinom_MAMI80_OU_coverge)
  }
  
  #Performance of MAMI50
  {
    list_multinom_MAMI50_RT_pred <- sapply(list_multinom_MAMI50_RT_pred, sum)
    mean_multinom_MAMI50_RT_pred <- mean(list_multinom_MAMI50_RT_pred)
    sd_multinom_MAMI50_RT_pred <- sd(list_multinom_MAMI50_RT_pred)
    list_multinom_MAMI50_RT_SE <- sapply(list_multinom_MAMI50_RT_SE, sum)
    mean_multinom_MAMI50_RT_SE <- mean(list_multinom_MAMI50_RT_SE)
    sd_multinom_MAMI50_RT_SE <- sd(list_multinom_MAMI50_RT_SE)
    CIlower_multinom_MAMI50_RT_pred <- mean_multinom_MAMI50_RT_pred - (2*mean_multinom_MAMI50_RT_SE)
    CIupper_multinom_MAMI50_RT_pred <- mean_multinom_MAMI50_RT_pred + (2*mean_multinom_MAMI50_RT_SE)
    multinom_MAMI50_RT_pred_max <- max(list_multinom_MAMI50_RT_pred) 
    multinom_MAMI50_RT_pred_min <- min(list_multinom_MAMI50_RT_pred)
    RB_multinom_MAMI50_RT_pred <- bias(RT_true, list_multinom_MAMI50_RT_pred)
    bias_RB_multinom_MAMI50_RT_pred <- list_multinom_MAMI50_RT_pred - RT_true
    sd_RB_multinom_MAMI50_RT_pred <- sd(bias_RB_multinom_MAMI50_RT_pred)    
    PB_multinom_MAMI50_RT_pred <- percent_bias(RT_true, list_multinom_MAMI50_RT_pred) *100
    RMSE_multinom_MAMI50_RT_pred <- rmse(RT_true, list_multinom_MAMI50_RT_pred)
    AW_multinom_MAMI50_RT_pred <- mean(sapply(list_multinom_MAMI50_RT_95width, sum))
    list_multinom_MAMI50_RT_coverge <- sapply(list_multinom_MAMI50_RT_coverge, sum)
    CR_multinom_MAMI50_RT_pred <- mean(list_multinom_MAMI50_RT_coverge)
    sd_CR_multinom_MAMI50_RT_pred <- sd(list_multinom_MAMI50_RT_coverge)
    
    list_multinom_MAMI50_UT_pred <- sapply(list_multinom_MAMI50_UT_pred, sum)
    mean_multinom_MAMI50_UT_pred <- mean(list_multinom_MAMI50_UT_pred)
    sd_multinom_MAMI50_UT_pred <- sd(list_multinom_MAMI50_UT_pred)
    list_multinom_MAMI50_UT_SE <- sapply(list_multinom_MAMI50_UT_SE, sum)
    mean_multinom_MAMI50_UT_SE <- mean(list_multinom_MAMI50_UT_SE)
    sd_multinom_MAMI50_UT_SE <- sd(list_multinom_MAMI50_UT_SE)
    CIlower_multinom_MAMI50_UT_pred <- mean_multinom_MAMI50_UT_pred - (2*mean_multinom_MAMI50_UT_SE)
    CIupper_multinom_MAMI50_UT_pred <- mean_multinom_MAMI50_UT_pred + (2*mean_multinom_MAMI50_UT_SE)
    multinom_MAMI50_UT_pred_max <- max(list_multinom_MAMI50_UT_pred) 
    multinom_MAMI50_UT_pred_min <- min(list_multinom_MAMI50_UT_pred)
    RB_multinom_MAMI50_UT_pred <- bias(UT_true, list_multinom_MAMI50_UT_pred)
    bias_RB_multinom_MAMI50_UT_pred <- list_multinom_MAMI50_UT_pred - UT_true
    sd_RB_multinom_MAMI50_UT_pred <- sd(bias_RB_multinom_MAMI50_UT_pred)    
    PB_multinom_MAMI50_UT_pred <- percent_bias(UT_true, list_multinom_MAMI50_UT_pred) *100
    RMSE_multinom_MAMI50_UT_pred <- rmse(UT_true, list_multinom_MAMI50_UT_pred)
    AW_multinom_MAMI50_UT_pred <- mean(sapply(list_multinom_MAMI50_UT_95width, sum))
    list_multinom_MAMI50_UT_coverge <- sapply(list_multinom_MAMI50_UT_coverge, sum)
    CR_multinom_MAMI50_UT_pred <- mean(list_multinom_MAMI50_UT_coverge)
    sd_CR_multinom_MAMI50_UT_pred <- sd(list_multinom_MAMI50_UT_coverge)
    
    list_multinom_MAMI50_SW_pred <- sapply(list_multinom_MAMI50_SW_pred, sum)
    mean_multinom_MAMI50_SW_pred <- mean(list_multinom_MAMI50_SW_pred)
    sd_multinom_MAMI50_SW_pred <- sd(list_multinom_MAMI50_SW_pred)
    list_multinom_MAMI50_SW_SE <- sapply(list_multinom_MAMI50_SW_SE, sum)
    mean_multinom_MAMI50_SW_SE <- mean(list_multinom_MAMI50_SW_SE)
    sd_multinom_MAMI50_SW_SE <- sd(list_multinom_MAMI50_SW_SE)
    CIlower_multinom_MAMI50_SW_pred <- mean_multinom_MAMI50_SW_pred - (2*mean_multinom_MAMI50_SW_SE)
    CIupper_multinom_MAMI50_SW_pred <- mean_multinom_MAMI50_SW_pred + (2*mean_multinom_MAMI50_SW_SE)
    multinom_MAMI50_SW_pred_max <- max(list_multinom_MAMI50_SW_pred) 
    multinom_MAMI50_SW_pred_min <- min(list_multinom_MAMI50_SW_pred)
    RB_multinom_MAMI50_SW_pred <- bias(SW_true, list_multinom_MAMI50_SW_pred)
    bias_RB_multinom_MAMI50_SW_pred <- list_multinom_MAMI50_SW_pred - SW_true
    sd_RB_multinom_MAMI50_SW_pred <- sd(bias_RB_multinom_MAMI50_SW_pred)    
    PB_multinom_MAMI50_SW_pred <- percent_bias(SW_true, list_multinom_MAMI50_SW_pred) *100
    RMSE_multinom_MAMI50_SW_pred <- rmse(SW_true, list_multinom_MAMI50_SW_pred)
    AW_multinom_MAMI50_SW_pred <- mean(sapply(list_multinom_MAMI50_SW_95width, sum))
    list_multinom_MAMI50_SW_coverge <- sapply(list_multinom_MAMI50_SW_coverge, sum)
    CR_multinom_MAMI50_SW_pred <- mean(list_multinom_MAMI50_SW_coverge)
    sd_CR_multinom_MAMI50_SW_pred <- sd(list_multinom_MAMI50_SW_coverge)
    
    list_multinom_MAMI50_OU_pred <- sapply(list_multinom_MAMI50_OU_pred, sum)
    mean_multinom_MAMI50_OU_pred <- mean(list_multinom_MAMI50_OU_pred)
    sd_multinom_MAMI50_OU_pred <- sd(list_multinom_MAMI50_OU_pred)
    list_multinom_MAMI50_OU_SE <- sapply(list_multinom_MAMI50_OU_SE, sum)
    mean_multinom_MAMI50_OU_SE <- mean(list_multinom_MAMI50_OU_SE)
    sd_multinom_MAMI50_OU_SE <- sd(list_multinom_MAMI50_OU_SE)
    CIlower_multinom_MAMI50_OU_pred <- mean_multinom_MAMI50_OU_pred - (2*mean_multinom_MAMI50_OU_SE)
    CIupper_multinom_MAMI50_OU_pred <- mean_multinom_MAMI50_OU_pred + (2*mean_multinom_MAMI50_OU_SE)
    multinom_MAMI50_OU_pred_max <- max(list_multinom_MAMI50_OU_pred) 
    multinom_MAMI50_OU_pred_min <- min(list_multinom_MAMI50_OU_pred)
    RB_multinom_MAMI50_OU_pred <- bias(OU_true, list_multinom_MAMI50_OU_pred)
    bias_RB_multinom_MAMI50_OU_pred <- list_multinom_MAMI50_OU_pred - OU_true
    sd_RB_multinom_MAMI50_OU_pred <- sd(bias_RB_multinom_MAMI50_OU_pred)    
    PB_multinom_MAMI50_OU_pred <- percent_bias(OU_true, list_multinom_MAMI50_OU_pred) *100
    RMSE_multinom_MAMI50_OU_pred <- rmse(OU_true, list_multinom_MAMI50_OU_pred)
    AW_multinom_MAMI50_OU_pred <- mean(sapply(list_multinom_MAMI50_OU_95width, sum))
    list_multinom_MAMI50_OU_coverge <- sapply(list_multinom_MAMI50_OU_coverge, sum)
    CR_multinom_MAMI50_OU_pred <- mean(list_multinom_MAMI50_OU_coverge)
    sd_CR_multinom_MAMI50_OU_pred <- sd(list_multinom_MAMI50_OU_coverge)
  }
  
  #Performance of MAMI20
  {
    list_multinom_MAMI20_RT_pred <- sapply(list_multinom_MAMI20_RT_pred, sum)
    mean_multinom_MAMI20_RT_pred <- mean(list_multinom_MAMI20_RT_pred)
    sd_multinom_MAMI20_RT_pred <- sd(list_multinom_MAMI20_RT_pred)
    list_multinom_MAMI20_RT_SE <- sapply(list_multinom_MAMI20_RT_SE, sum)
    mean_multinom_MAMI20_RT_SE <- mean(list_multinom_MAMI20_RT_SE)
    sd_multinom_MAMI20_RT_SE <- sd(list_multinom_MAMI20_RT_SE)
    CIlower_multinom_MAMI20_RT_pred <- mean_multinom_MAMI20_RT_pred - (2*mean_multinom_MAMI20_RT_SE)
    CIupper_multinom_MAMI20_RT_pred <- mean_multinom_MAMI20_RT_pred + (2*mean_multinom_MAMI20_RT_SE)
    multinom_MAMI20_RT_pred_max <- max(list_multinom_MAMI20_RT_pred) 
    multinom_MAMI20_RT_pred_min <- min(list_multinom_MAMI20_RT_pred)
    RB_multinom_MAMI20_RT_pred <- bias(RT_true, list_multinom_MAMI20_RT_pred)
    bias_RB_multinom_MAMI20_RT_pred <- list_multinom_MAMI20_RT_pred - RT_true
    sd_RB_multinom_MAMI20_RT_pred <- sd(bias_RB_multinom_MAMI20_RT_pred)    
    PB_multinom_MAMI20_RT_pred <- percent_bias(RT_true, list_multinom_MAMI20_RT_pred) *100
    RMSE_multinom_MAMI20_RT_pred <- rmse(RT_true, list_multinom_MAMI20_RT_pred)
    AW_multinom_MAMI20_RT_pred <- mean(sapply(list_multinom_MAMI20_RT_95width, sum))
    list_multinom_MAMI20_RT_coverge <- sapply(list_multinom_MAMI20_RT_coverge, sum)
    CR_multinom_MAMI20_RT_pred <- mean(list_multinom_MAMI20_RT_coverge)
    sd_CR_multinom_MAMI20_RT_pred <- sd(list_multinom_MAMI20_RT_coverge)
    
    list_multinom_MAMI20_UT_pred <- sapply(list_multinom_MAMI20_UT_pred, sum)
    mean_multinom_MAMI20_UT_pred <- mean(list_multinom_MAMI20_UT_pred)
    sd_multinom_MAMI20_UT_pred <- sd(list_multinom_MAMI20_UT_pred)
    list_multinom_MAMI20_UT_SE <- sapply(list_multinom_MAMI20_UT_SE, sum)
    mean_multinom_MAMI20_UT_SE <- mean(list_multinom_MAMI20_UT_SE)
    sd_multinom_MAMI20_UT_SE <- sd(list_multinom_MAMI20_UT_SE)
    CIlower_multinom_MAMI20_UT_pred <- mean_multinom_MAMI20_UT_pred - (2*mean_multinom_MAMI20_UT_SE)
    CIupper_multinom_MAMI20_UT_pred <- mean_multinom_MAMI20_UT_pred + (2*mean_multinom_MAMI20_UT_SE)
    multinom_MAMI20_UT_pred_max <- max(list_multinom_MAMI20_UT_pred) 
    multinom_MAMI20_UT_pred_min <- min(list_multinom_MAMI20_UT_pred)
    RB_multinom_MAMI20_UT_pred <- bias(UT_true, list_multinom_MAMI20_UT_pred)
    bias_RB_multinom_MAMI20_UT_pred <- list_multinom_MAMI20_UT_pred - UT_true
    sd_RB_multinom_MAMI20_UT_pred <- sd(bias_RB_multinom_MAMI20_UT_pred)    
    PB_multinom_MAMI20_UT_pred <- percent_bias(UT_true, list_multinom_MAMI20_UT_pred) *100
    RMSE_multinom_MAMI20_UT_pred <- rmse(UT_true, list_multinom_MAMI20_UT_pred)
    AW_multinom_MAMI20_UT_pred <- mean(sapply(list_multinom_MAMI20_UT_95width, sum))
    list_multinom_MAMI20_UT_coverge <- sapply(list_multinom_MAMI20_UT_coverge, sum)
    CR_multinom_MAMI20_UT_pred <- mean(list_multinom_MAMI20_UT_coverge)
    sd_CR_multinom_MAMI20_UT_pred <- sd(list_multinom_MAMI20_UT_coverge)
    
    list_multinom_MAMI20_SW_pred <- sapply(list_multinom_MAMI20_SW_pred, sum)
    mean_multinom_MAMI20_SW_pred <- mean(list_multinom_MAMI20_SW_pred)
    sd_multinom_MAMI20_SW_pred <- sd(list_multinom_MAMI20_SW_pred)
    list_multinom_MAMI20_SW_SE <- sapply(list_multinom_MAMI20_SW_SE, sum)
    mean_multinom_MAMI20_SW_SE <- mean(list_multinom_MAMI20_SW_SE)
    sd_multinom_MAMI20_SW_SE <- sd(list_multinom_MAMI20_SW_SE)
    CIlower_multinom_MAMI20_SW_pred <- mean_multinom_MAMI20_SW_pred - (2*mean_multinom_MAMI20_SW_SE)
    CIupper_multinom_MAMI20_SW_pred <- mean_multinom_MAMI20_SW_pred + (2*mean_multinom_MAMI20_SW_SE)
    multinom_MAMI20_SW_pred_max <- max(list_multinom_MAMI20_SW_pred) 
    multinom_MAMI20_SW_pred_min <- min(list_multinom_MAMI20_SW_pred)
    RB_multinom_MAMI20_SW_pred <- bias(SW_true, list_multinom_MAMI20_SW_pred)
    bias_RB_multinom_MAMI20_SW_pred <- list_multinom_MAMI20_SW_pred - SW_true
    sd_RB_multinom_MAMI20_SW_pred <- sd(bias_RB_multinom_MAMI20_SW_pred)    
    PB_multinom_MAMI20_SW_pred <- percent_bias(SW_true, list_multinom_MAMI20_SW_pred) *100
    RMSE_multinom_MAMI20_SW_pred <- rmse(SW_true, list_multinom_MAMI20_SW_pred)
    AW_multinom_MAMI20_SW_pred <- mean(sapply(list_multinom_MAMI20_SW_95width, sum))
    list_multinom_MAMI20_SW_coverge <- sapply(list_multinom_MAMI20_SW_coverge, sum)
    CR_multinom_MAMI20_SW_pred <- mean(list_multinom_MAMI20_SW_coverge)
    sd_CR_multinom_MAMI20_SW_pred <- sd(list_multinom_MAMI20_SW_coverge)
    
    list_multinom_MAMI20_OU_pred <- sapply(list_multinom_MAMI20_OU_pred, sum)
    mean_multinom_MAMI20_OU_pred <- mean(list_multinom_MAMI20_OU_pred)
    sd_multinom_MAMI20_OU_pred <- sd(list_multinom_MAMI20_OU_pred)
    list_multinom_MAMI20_OU_SE <- sapply(list_multinom_MAMI20_OU_SE, sum)
    mean_multinom_MAMI20_OU_SE <- mean(list_multinom_MAMI20_OU_SE)
    sd_multinom_MAMI20_OU_SE <- sd(list_multinom_MAMI20_OU_SE)
    CIlower_multinom_MAMI20_OU_pred <- mean_multinom_MAMI20_OU_pred - (2*mean_multinom_MAMI20_OU_SE)
    CIupper_multinom_MAMI20_OU_pred <- mean_multinom_MAMI20_OU_pred + (2*mean_multinom_MAMI20_OU_SE)
    multinom_MAMI20_OU_pred_max <- max(list_multinom_MAMI20_OU_pred) 
    multinom_MAMI20_OU_pred_min <- min(list_multinom_MAMI20_OU_pred)
    RB_multinom_MAMI20_OU_pred <- bias(OU_true, list_multinom_MAMI20_OU_pred)
    bias_RB_multinom_MAMI20_OU_pred <- list_multinom_MAMI20_OU_pred - OU_true
    sd_RB_multinom_MAMI20_OU_pred <- sd(bias_RB_multinom_MAMI20_OU_pred)    
    PB_multinom_MAMI20_OU_pred <- percent_bias(OU_true, list_multinom_MAMI20_OU_pred) *100
    RMSE_multinom_MAMI20_OU_pred <- rmse(OU_true, list_multinom_MAMI20_OU_pred)
    AW_multinom_MAMI20_OU_pred <- mean(sapply(list_multinom_MAMI20_OU_95width, sum))
    list_multinom_MAMI20_OU_coverge <- sapply(list_multinom_MAMI20_OU_coverge, sum)
    CR_multinom_MAMI20_OU_pred <- mean(list_multinom_MAMI20_OU_coverge)
    sd_CR_multinom_MAMI20_OU_pred <- sd(list_multinom_MAMI20_OU_coverge)
  }
  
  #Performance of MAMI5
  {
    list_multinom_MAMI5_RT_pred <- sapply(list_multinom_MAMI5_RT_pred, sum)
    mean_multinom_MAMI5_RT_pred <- mean(list_multinom_MAMI5_RT_pred)
    sd_multinom_MAMI5_RT_pred <- sd(list_multinom_MAMI5_RT_pred)
    list_multinom_MAMI5_RT_SE <- sapply(list_multinom_MAMI5_RT_SE, sum)
    mean_multinom_MAMI5_RT_SE <- mean(list_multinom_MAMI5_RT_SE)
    sd_multinom_MAMI5_RT_SE <- sd(list_multinom_MAMI5_RT_SE)
    CIlower_multinom_MAMI5_RT_pred <- mean_multinom_MAMI5_RT_pred - (2*mean_multinom_MAMI5_RT_SE)
    CIupper_multinom_MAMI5_RT_pred <- mean_multinom_MAMI5_RT_pred + (2*mean_multinom_MAMI5_RT_SE)
    multinom_MAMI5_RT_pred_max <- max(list_multinom_MAMI5_RT_pred) 
    multinom_MAMI5_RT_pred_min <- min(list_multinom_MAMI5_RT_pred)
    RB_multinom_MAMI5_RT_pred <- bias(RT_true, list_multinom_MAMI5_RT_pred)
    bias_RB_multinom_MAMI5_RT_pred <- list_multinom_MAMI5_RT_pred - RT_true
    sd_RB_multinom_MAMI5_RT_pred <- sd(bias_RB_multinom_MAMI5_RT_pred)    
    PB_multinom_MAMI5_RT_pred <- percent_bias(RT_true, list_multinom_MAMI5_RT_pred) *100
    RMSE_multinom_MAMI5_RT_pred <- rmse(RT_true, list_multinom_MAMI5_RT_pred)
    AW_multinom_MAMI5_RT_pred <- mean(sapply(list_multinom_MAMI5_RT_95width, sum))
    list_multinom_MAMI5_RT_coverge <- sapply(list_multinom_MAMI5_RT_coverge, sum)
    CR_multinom_MAMI5_RT_pred <- mean(list_multinom_MAMI5_RT_coverge)
    sd_CR_multinom_MAMI5_RT_pred <- sd(list_multinom_MAMI5_RT_coverge)
    
    list_multinom_MAMI5_UT_pred <- sapply(list_multinom_MAMI5_UT_pred, sum)
    mean_multinom_MAMI5_UT_pred <- mean(list_multinom_MAMI5_UT_pred)
    sd_multinom_MAMI5_UT_pred <- sd(list_multinom_MAMI5_UT_pred)
    list_multinom_MAMI5_UT_SE <- sapply(list_multinom_MAMI5_UT_SE, sum)
    mean_multinom_MAMI5_UT_SE <- mean(list_multinom_MAMI5_UT_SE)
    sd_multinom_MAMI5_UT_SE <- sd(list_multinom_MAMI5_UT_SE)
    CIlower_multinom_MAMI5_UT_pred <- mean_multinom_MAMI5_UT_pred - (2*mean_multinom_MAMI5_UT_SE)
    CIupper_multinom_MAMI5_UT_pred <- mean_multinom_MAMI5_UT_pred + (2*mean_multinom_MAMI5_UT_SE)
    multinom_MAMI5_UT_pred_max <- max(list_multinom_MAMI5_UT_pred) 
    multinom_MAMI5_UT_pred_min <- min(list_multinom_MAMI5_UT_pred)
    RB_multinom_MAMI5_UT_pred <- bias(UT_true, list_multinom_MAMI5_UT_pred)
    bias_RB_multinom_MAMI5_UT_pred <- list_multinom_MAMI5_UT_pred - UT_true
    sd_RB_multinom_MAMI5_UT_pred <- sd(bias_RB_multinom_MAMI5_UT_pred)    
    PB_multinom_MAMI5_UT_pred <- percent_bias(UT_true, list_multinom_MAMI5_UT_pred) *100
    RMSE_multinom_MAMI5_UT_pred <- rmse(UT_true, list_multinom_MAMI5_UT_pred)
    AW_multinom_MAMI5_UT_pred <- mean(sapply(list_multinom_MAMI5_UT_95width, sum))
    list_multinom_MAMI5_UT_coverge <- sapply(list_multinom_MAMI5_UT_coverge, sum)
    CR_multinom_MAMI5_UT_pred <- mean(list_multinom_MAMI5_UT_coverge)
    sd_CR_multinom_MAMI5_UT_pred <- sd(list_multinom_MAMI5_UT_coverge)
    
    list_multinom_MAMI5_SW_pred <- sapply(list_multinom_MAMI5_SW_pred, sum)
    mean_multinom_MAMI5_SW_pred <- mean(list_multinom_MAMI5_SW_pred)
    sd_multinom_MAMI5_SW_pred <- sd(list_multinom_MAMI5_SW_pred)
    list_multinom_MAMI5_SW_SE <- sapply(list_multinom_MAMI5_SW_SE, sum)
    mean_multinom_MAMI5_SW_SE <- mean(list_multinom_MAMI5_SW_SE)
    sd_multinom_MAMI5_SW_SE <- sd(list_multinom_MAMI5_SW_SE)
    CIlower_multinom_MAMI5_SW_pred <- mean_multinom_MAMI5_SW_pred - (2*mean_multinom_MAMI5_SW_SE)
    CIupper_multinom_MAMI5_SW_pred <- mean_multinom_MAMI5_SW_pred + (2*mean_multinom_MAMI5_SW_SE)
    multinom_MAMI5_SW_pred_max <- max(list_multinom_MAMI5_SW_pred) 
    multinom_MAMI5_SW_pred_min <- min(list_multinom_MAMI5_SW_pred)
    RB_multinom_MAMI5_SW_pred <- bias(SW_true, list_multinom_MAMI5_SW_pred)
    bias_RB_multinom_MAMI5_SW_pred <- list_multinom_MAMI5_SW_pred - SW_true
    sd_RB_multinom_MAMI5_SW_pred <- sd(bias_RB_multinom_MAMI5_SW_pred)    
    PB_multinom_MAMI5_SW_pred <- percent_bias(SW_true, list_multinom_MAMI5_SW_pred) *100
    RMSE_multinom_MAMI5_SW_pred <- rmse(SW_true, list_multinom_MAMI5_SW_pred)
    AW_multinom_MAMI5_SW_pred <- mean(sapply(list_multinom_MAMI5_SW_95width, sum))
    list_multinom_MAMI5_SW_coverge <- sapply(list_multinom_MAMI5_SW_coverge, sum)
    CR_multinom_MAMI5_SW_pred <- mean(list_multinom_MAMI5_SW_coverge)
    sd_CR_multinom_MAMI5_SW_pred <- sd(list_multinom_MAMI5_SW_coverge)
    
    list_multinom_MAMI5_OU_pred <- sapply(list_multinom_MAMI5_OU_pred, sum)
    mean_multinom_MAMI5_OU_pred <- mean(list_multinom_MAMI5_OU_pred)
    sd_multinom_MAMI5_OU_pred <- sd(list_multinom_MAMI5_OU_pred)
    list_multinom_MAMI5_OU_SE <- sapply(list_multinom_MAMI5_OU_SE, sum)
    mean_multinom_MAMI5_OU_SE <- mean(list_multinom_MAMI5_OU_SE)
    sd_multinom_MAMI5_OU_SE <- sd(list_multinom_MAMI5_OU_SE)
    CIlower_multinom_MAMI5_OU_pred <- mean_multinom_MAMI5_OU_pred - (2*mean_multinom_MAMI5_OU_SE)
    CIupper_multinom_MAMI5_OU_pred <- mean_multinom_MAMI5_OU_pred + (2*mean_multinom_MAMI5_OU_SE)
    multinom_MAMI5_OU_pred_max <- max(list_multinom_MAMI5_OU_pred) 
    multinom_MAMI5_OU_pred_min <- min(list_multinom_MAMI5_OU_pred)
    RB_multinom_MAMI5_OU_pred <- bias(OU_true, list_multinom_MAMI5_OU_pred)
    bias_RB_multinom_MAMI5_OU_pred <- list_multinom_MAMI5_OU_pred - OU_true
    sd_RB_multinom_MAMI5_OU_pred <- sd(bias_RB_multinom_MAMI5_OU_pred)    
    PB_multinom_MAMI5_OU_pred <- percent_bias(OU_true, list_multinom_MAMI5_OU_pred) *100
    RMSE_multinom_MAMI5_OU_pred <- rmse(OU_true, list_multinom_MAMI5_OU_pred)
    AW_multinom_MAMI5_OU_pred <- mean(sapply(list_multinom_MAMI5_OU_95width, sum))
    list_multinom_MAMI5_OU_coverge <- sapply(list_multinom_MAMI5_OU_coverge, sum)
    CR_multinom_MAMI5_OU_pred <- mean(list_multinom_MAMI5_OU_coverge)
    sd_CR_multinom_MAMI5_OU_pred <- sd(list_multinom_MAMI5_OU_coverge)
  }
}

#nnet Performance of MI
{
  #Performance of UAMI80
  {
    list_nnet_UAMI80_RT_pred <- sapply(list_nnet_UAMI80_RT_pred, sum)
    mean_nnet_UAMI80_RT_pred <- mean(list_nnet_UAMI80_RT_pred)
    sd_nnet_UAMI80_RT_pred <- sd(list_nnet_UAMI80_RT_pred)
    list_nnet_UAMI80_RT_SE <- sapply(list_nnet_UAMI80_RT_SE, sum)
    mean_nnet_UAMI80_RT_SE <- mean(list_nnet_UAMI80_RT_SE)
    sd_nnet_UAMI80_RT_SE <- sd(list_nnet_UAMI80_RT_SE)
    CIlower_nnet_UAMI80_RT_pred <- mean_nnet_UAMI80_RT_pred - (2*mean_nnet_UAMI80_RT_SE)
    CIupper_nnet_UAMI80_RT_pred <- mean_nnet_UAMI80_RT_pred + (2*mean_nnet_UAMI80_RT_SE)
    nnet_UAMI80_RT_pred_max <- max(list_nnet_UAMI80_RT_pred) 
    nnet_UAMI80_RT_pred_min <- min(list_nnet_UAMI80_RT_pred)
    RB_nnet_UAMI80_RT_pred <- bias(RT_true, list_nnet_UAMI80_RT_pred)
    bias_RB_nnet_UAMI80_RT_pred <- list_nnet_UAMI80_RT_pred - RT_true
    sd_RB_nnet_UAMI80_RT_pred <- sd(bias_RB_nnet_UAMI80_RT_pred)    
    PB_nnet_UAMI80_RT_pred <- percent_bias(RT_true, list_nnet_UAMI80_RT_pred) *100
    RMSE_nnet_UAMI80_RT_pred <- rmse(RT_true, list_nnet_UAMI80_RT_pred)
    AW_nnet_UAMI80_RT_pred <- mean(sapply(list_nnet_UAMI80_RT_95width, sum))
    list_nnet_UAMI80_RT_coverge <- sapply(list_nnet_UAMI80_RT_coverge, sum)
    CR_nnet_UAMI80_RT_pred <- mean(list_nnet_UAMI80_RT_coverge)
    sd_CR_nnet_UAMI80_RT_pred <- sd(list_nnet_UAMI80_RT_coverge)
    
    list_nnet_UAMI80_UT_pred <- sapply(list_nnet_UAMI80_UT_pred, sum)
    mean_nnet_UAMI80_UT_pred <- mean(list_nnet_UAMI80_UT_pred)
    sd_nnet_UAMI80_UT_pred <- sd(list_nnet_UAMI80_UT_pred)
    list_nnet_UAMI80_UT_SE <- sapply(list_nnet_UAMI80_UT_SE, sum)
    mean_nnet_UAMI80_UT_SE <- mean(list_nnet_UAMI80_UT_SE)
    sd_nnet_UAMI80_UT_SE <- sd(list_nnet_UAMI80_UT_SE)
    CIlower_nnet_UAMI80_UT_pred <- mean_nnet_UAMI80_UT_pred - (2*mean_nnet_UAMI80_UT_SE)
    CIupper_nnet_UAMI80_UT_pred <- mean_nnet_UAMI80_UT_pred + (2*mean_nnet_UAMI80_UT_SE)
    nnet_UAMI80_UT_pred_max <- max(list_nnet_UAMI80_UT_pred) 
    nnet_UAMI80_UT_pred_min <- min(list_nnet_UAMI80_UT_pred)
    RB_nnet_UAMI80_UT_pred <- bias(UT_true, list_nnet_UAMI80_UT_pred)
    bias_RB_nnet_UAMI80_UT_pred <- list_nnet_UAMI80_UT_pred - UT_true
    sd_RB_nnet_UAMI80_UT_pred <- sd(bias_RB_nnet_UAMI80_UT_pred)    
    PB_nnet_UAMI80_UT_pred <- percent_bias(UT_true, list_nnet_UAMI80_UT_pred) *100
    RMSE_nnet_UAMI80_UT_pred <- rmse(UT_true, list_nnet_UAMI80_UT_pred)
    AW_nnet_UAMI80_UT_pred <- mean(sapply(list_nnet_UAMI80_UT_95width, sum))
    list_nnet_UAMI80_UT_coverge <- sapply(list_nnet_UAMI80_UT_coverge, sum)
    CR_nnet_UAMI80_UT_pred <- mean(list_nnet_UAMI80_UT_coverge)
    sd_CR_nnet_UAMI80_UT_pred <- sd(list_nnet_UAMI80_UT_coverge)
    
    list_nnet_UAMI80_SW_pred <- sapply(list_nnet_UAMI80_SW_pred, sum)
    mean_nnet_UAMI80_SW_pred <- mean(list_nnet_UAMI80_SW_pred)
    sd_nnet_UAMI80_SW_pred <- sd(list_nnet_UAMI80_SW_pred)
    list_nnet_UAMI80_SW_SE <- sapply(list_nnet_UAMI80_SW_SE, sum)
    mean_nnet_UAMI80_SW_SE <- mean(list_nnet_UAMI80_SW_SE)
    sd_nnet_UAMI80_SW_SE <- sd(list_nnet_UAMI80_SW_SE)
    CIlower_nnet_UAMI80_SW_pred <- mean_nnet_UAMI80_SW_pred - (2*mean_nnet_UAMI80_SW_SE)
    CIupper_nnet_UAMI80_SW_pred <- mean_nnet_UAMI80_SW_pred + (2*mean_nnet_UAMI80_SW_SE)
    nnet_UAMI80_SW_pred_max <- max(list_nnet_UAMI80_SW_pred) 
    nnet_UAMI80_SW_pred_min <- min(list_nnet_UAMI80_SW_pred)
    RB_nnet_UAMI80_SW_pred <- bias(SW_true, list_nnet_UAMI80_SW_pred)
    bias_RB_nnet_UAMI80_SW_pred <- list_nnet_UAMI80_SW_pred - SW_true
    sd_RB_nnet_UAMI80_SW_pred <- sd(bias_RB_nnet_UAMI80_SW_pred)    
    PB_nnet_UAMI80_SW_pred <- percent_bias(SW_true, list_nnet_UAMI80_SW_pred) *100
    RMSE_nnet_UAMI80_SW_pred <- rmse(SW_true, list_nnet_UAMI80_SW_pred)
    AW_nnet_UAMI80_SW_pred <- mean(sapply(list_nnet_UAMI80_SW_95width, sum))
    list_nnet_UAMI80_SW_coverge <- sapply(list_nnet_UAMI80_SW_coverge, sum)
    CR_nnet_UAMI80_SW_pred <- mean(list_nnet_UAMI80_SW_coverge)
    sd_CR_nnet_UAMI80_SW_pred <- sd(list_nnet_UAMI80_SW_coverge)
    
    list_nnet_UAMI80_OU_pred <- sapply(list_nnet_UAMI80_OU_pred, sum)
    mean_nnet_UAMI80_OU_pred <- mean(list_nnet_UAMI80_OU_pred)
    sd_nnet_UAMI80_OU_pred <- sd(list_nnet_UAMI80_OU_pred)
    list_nnet_UAMI80_OU_SE <- sapply(list_nnet_UAMI80_OU_SE, sum)
    mean_nnet_UAMI80_OU_SE <- mean(list_nnet_UAMI80_OU_SE)
    sd_nnet_UAMI80_OU_SE <- sd(list_nnet_UAMI80_OU_SE)
    CIlower_nnet_UAMI80_OU_pred <- mean_nnet_UAMI80_OU_pred - (2*mean_nnet_UAMI80_OU_SE)
    CIupper_nnet_UAMI80_OU_pred <- mean_nnet_UAMI80_OU_pred + (2*mean_nnet_UAMI80_OU_SE)
    nnet_UAMI80_OU_pred_max <- max(list_nnet_UAMI80_OU_pred) 
    nnet_UAMI80_OU_pred_min <- min(list_nnet_UAMI80_OU_pred)
    RB_nnet_UAMI80_OU_pred <- bias(OU_true, list_nnet_UAMI80_OU_pred)
    bias_RB_nnet_UAMI80_OU_pred <- list_nnet_UAMI80_OU_pred - OU_true
    sd_RB_nnet_UAMI80_OU_pred <- sd(bias_RB_nnet_UAMI80_OU_pred)    
    PB_nnet_UAMI80_OU_pred <- percent_bias(OU_true, list_nnet_UAMI80_OU_pred) *100
    RMSE_nnet_UAMI80_OU_pred <- rmse(OU_true, list_nnet_UAMI80_OU_pred)
    AW_nnet_UAMI80_OU_pred <- mean(sapply(list_nnet_UAMI80_OU_95width, sum))
    list_nnet_UAMI80_OU_coverge <- sapply(list_nnet_UAMI80_OU_coverge, sum)
    CR_nnet_UAMI80_OU_pred <- mean(list_nnet_UAMI80_OU_coverge)
    sd_CR_nnet_UAMI80_OU_pred <- sd(list_nnet_UAMI80_OU_coverge)
  }
  
  #Performance of UAMI50
  {
    list_nnet_UAMI50_RT_pred <- sapply(list_nnet_UAMI50_RT_pred, sum)
    mean_nnet_UAMI50_RT_pred <- mean(list_nnet_UAMI50_RT_pred)
    sd_nnet_UAMI50_RT_pred <- sd(list_nnet_UAMI50_RT_pred)
    list_nnet_UAMI50_RT_SE <- sapply(list_nnet_UAMI50_RT_SE, sum)
    mean_nnet_UAMI50_RT_SE <- mean(list_nnet_UAMI50_RT_SE)
    sd_nnet_UAMI50_RT_SE <- sd(list_nnet_UAMI50_RT_SE)
    CIlower_nnet_UAMI50_RT_pred <- mean_nnet_UAMI50_RT_pred - (2*mean_nnet_UAMI50_RT_SE)
    CIupper_nnet_UAMI50_RT_pred <- mean_nnet_UAMI50_RT_pred + (2*mean_nnet_UAMI50_RT_SE)
    nnet_UAMI50_RT_pred_max <- max(list_nnet_UAMI50_RT_pred) 
    nnet_UAMI50_RT_pred_min <- min(list_nnet_UAMI50_RT_pred)
    RB_nnet_UAMI50_RT_pred <- bias(RT_true, list_nnet_UAMI50_RT_pred)
    bias_RB_nnet_UAMI50_RT_pred <- list_nnet_UAMI50_RT_pred - RT_true
    sd_RB_nnet_UAMI50_RT_pred <- sd(bias_RB_nnet_UAMI50_RT_pred)    
    PB_nnet_UAMI50_RT_pred <- percent_bias(RT_true, list_nnet_UAMI50_RT_pred) *100
    RMSE_nnet_UAMI50_RT_pred <- rmse(RT_true, list_nnet_UAMI50_RT_pred)
    AW_nnet_UAMI50_RT_pred <- mean(sapply(list_nnet_UAMI50_RT_95width, sum))
    list_nnet_UAMI50_RT_coverge <- sapply(list_nnet_UAMI50_RT_coverge, sum)
    CR_nnet_UAMI50_RT_pred <- mean(list_nnet_UAMI50_RT_coverge)
    sd_CR_nnet_UAMI50_RT_pred <- sd(list_nnet_UAMI50_RT_coverge)
    
    list_nnet_UAMI50_UT_pred <- sapply(list_nnet_UAMI50_UT_pred, sum)
    mean_nnet_UAMI50_UT_pred <- mean(list_nnet_UAMI50_UT_pred)
    sd_nnet_UAMI50_UT_pred <- sd(list_nnet_UAMI50_UT_pred)
    list_nnet_UAMI50_UT_SE <- sapply(list_nnet_UAMI50_UT_SE, sum)
    mean_nnet_UAMI50_UT_SE <- mean(list_nnet_UAMI50_UT_SE)
    sd_nnet_UAMI50_UT_SE <- sd(list_nnet_UAMI50_UT_SE)
    CIlower_nnet_UAMI50_UT_pred <- mean_nnet_UAMI50_UT_pred - (2*mean_nnet_UAMI50_UT_SE)
    CIupper_nnet_UAMI50_UT_pred <- mean_nnet_UAMI50_UT_pred + (2*mean_nnet_UAMI50_UT_SE)
    nnet_UAMI50_UT_pred_max <- max(list_nnet_UAMI50_UT_pred) 
    nnet_UAMI50_UT_pred_min <- min(list_nnet_UAMI50_UT_pred)
    RB_nnet_UAMI50_UT_pred <- bias(UT_true, list_nnet_UAMI50_UT_pred)
    bias_RB_nnet_UAMI50_UT_pred <- list_nnet_UAMI50_UT_pred - UT_true
    sd_RB_nnet_UAMI50_UT_pred <- sd(bias_RB_nnet_UAMI50_UT_pred)    
    PB_nnet_UAMI50_UT_pred <- percent_bias(UT_true, list_nnet_UAMI50_UT_pred) *100
    RMSE_nnet_UAMI50_UT_pred <- rmse(UT_true, list_nnet_UAMI50_UT_pred)
    AW_nnet_UAMI50_UT_pred <- mean(sapply(list_nnet_UAMI50_UT_95width, sum))
    list_nnet_UAMI50_UT_coverge <- sapply(list_nnet_UAMI50_UT_coverge, sum)
    CR_nnet_UAMI50_UT_pred <- mean(list_nnet_UAMI50_UT_coverge)
    sd_CR_nnet_UAMI50_UT_pred <- sd(list_nnet_UAMI50_UT_coverge)
    
    list_nnet_UAMI50_SW_pred <- sapply(list_nnet_UAMI50_SW_pred, sum)
    mean_nnet_UAMI50_SW_pred <- mean(list_nnet_UAMI50_SW_pred)
    sd_nnet_UAMI50_SW_pred <- sd(list_nnet_UAMI50_SW_pred)
    list_nnet_UAMI50_SW_SE <- sapply(list_nnet_UAMI50_SW_SE, sum)
    mean_nnet_UAMI50_SW_SE <- mean(list_nnet_UAMI50_SW_SE)
    sd_nnet_UAMI50_SW_SE <- sd(list_nnet_UAMI50_SW_SE)
    CIlower_nnet_UAMI50_SW_pred <- mean_nnet_UAMI50_SW_pred - (2*mean_nnet_UAMI50_SW_SE)
    CIupper_nnet_UAMI50_SW_pred <- mean_nnet_UAMI50_SW_pred + (2*mean_nnet_UAMI50_SW_SE)
    nnet_UAMI50_SW_pred_max <- max(list_nnet_UAMI50_SW_pred) 
    nnet_UAMI50_SW_pred_min <- min(list_nnet_UAMI50_SW_pred)
    RB_nnet_UAMI50_SW_pred <- bias(SW_true, list_nnet_UAMI50_SW_pred)
    bias_RB_nnet_UAMI50_SW_pred <- list_nnet_UAMI50_SW_pred - SW_true
    sd_RB_nnet_UAMI50_SW_pred <- sd(bias_RB_nnet_UAMI50_SW_pred)    
    PB_nnet_UAMI50_SW_pred <- percent_bias(SW_true, list_nnet_UAMI50_SW_pred) *100
    RMSE_nnet_UAMI50_SW_pred <- rmse(SW_true, list_nnet_UAMI50_SW_pred)
    AW_nnet_UAMI50_SW_pred <- mean(sapply(list_nnet_UAMI50_SW_95width, sum))
    list_nnet_UAMI50_SW_coverge <- sapply(list_nnet_UAMI50_SW_coverge, sum)
    CR_nnet_UAMI50_SW_pred <- mean(list_nnet_UAMI50_SW_coverge)
    sd_CR_nnet_UAMI50_SW_pred <- sd(list_nnet_UAMI50_SW_coverge)
    
    list_nnet_UAMI50_OU_pred <- sapply(list_nnet_UAMI50_OU_pred, sum)
    mean_nnet_UAMI50_OU_pred <- mean(list_nnet_UAMI50_OU_pred)
    sd_nnet_UAMI50_OU_pred <- sd(list_nnet_UAMI50_OU_pred)
    list_nnet_UAMI50_OU_SE <- sapply(list_nnet_UAMI50_OU_SE, sum)
    mean_nnet_UAMI50_OU_SE <- mean(list_nnet_UAMI50_OU_SE)
    sd_nnet_UAMI50_OU_SE <- sd(list_nnet_UAMI50_OU_SE)
    CIlower_nnet_UAMI50_OU_pred <- mean_nnet_UAMI50_OU_pred - (2*mean_nnet_UAMI50_OU_SE)
    CIupper_nnet_UAMI50_OU_pred <- mean_nnet_UAMI50_OU_pred + (2*mean_nnet_UAMI50_OU_SE)
    nnet_UAMI50_OU_pred_max <- max(list_nnet_UAMI50_OU_pred) 
    nnet_UAMI50_OU_pred_min <- min(list_nnet_UAMI50_OU_pred)
    RB_nnet_UAMI50_OU_pred <- bias(OU_true, list_nnet_UAMI50_OU_pred)
    bias_RB_nnet_UAMI50_OU_pred <- list_nnet_UAMI50_OU_pred - OU_true
    sd_RB_nnet_UAMI50_OU_pred <- sd(bias_RB_nnet_UAMI50_OU_pred)    
    PB_nnet_UAMI50_OU_pred <- percent_bias(OU_true, list_nnet_UAMI50_OU_pred) *100
    RMSE_nnet_UAMI50_OU_pred <- rmse(OU_true, list_nnet_UAMI50_OU_pred)
    AW_nnet_UAMI50_OU_pred <- mean(sapply(list_nnet_UAMI50_OU_95width, sum))
    list_nnet_UAMI50_OU_coverge <- sapply(list_nnet_UAMI50_OU_coverge, sum)
    CR_nnet_UAMI50_OU_pred <- mean(list_nnet_UAMI50_OU_coverge)
    sd_CR_nnet_UAMI50_OU_pred <- sd(list_nnet_UAMI50_OU_coverge)
  }
  
  #Performance of UAMI20
  {
    list_nnet_UAMI20_RT_pred <- sapply(list_nnet_UAMI20_RT_pred, sum)
    mean_nnet_UAMI20_RT_pred <- mean(list_nnet_UAMI20_RT_pred)
    sd_nnet_UAMI20_RT_pred <- sd(list_nnet_UAMI20_RT_pred)
    list_nnet_UAMI20_RT_SE <- sapply(list_nnet_UAMI20_RT_SE, sum)
    mean_nnet_UAMI20_RT_SE <- mean(list_nnet_UAMI20_RT_SE)
    sd_nnet_UAMI20_RT_SE <- sd(list_nnet_UAMI20_RT_SE)
    CIlower_nnet_UAMI20_RT_pred <- mean_nnet_UAMI20_RT_pred - (2*mean_nnet_UAMI20_RT_SE)
    CIupper_nnet_UAMI20_RT_pred <- mean_nnet_UAMI20_RT_pred + (2*mean_nnet_UAMI20_RT_SE)
    nnet_UAMI20_RT_pred_max <- max(list_nnet_UAMI20_RT_pred) 
    nnet_UAMI20_RT_pred_min <- min(list_nnet_UAMI20_RT_pred)
    RB_nnet_UAMI20_RT_pred <- bias(RT_true, list_nnet_UAMI20_RT_pred)
    bias_RB_nnet_UAMI20_RT_pred <- list_nnet_UAMI20_RT_pred - RT_true
    sd_RB_nnet_UAMI20_RT_pred <- sd(bias_RB_nnet_UAMI20_RT_pred)    
    PB_nnet_UAMI20_RT_pred <- percent_bias(RT_true, list_nnet_UAMI20_RT_pred) *100
    RMSE_nnet_UAMI20_RT_pred <- rmse(RT_true, list_nnet_UAMI20_RT_pred)
    AW_nnet_UAMI20_RT_pred <- mean(sapply(list_nnet_UAMI20_RT_95width, sum))
    list_nnet_UAMI20_RT_coverge <- sapply(list_nnet_UAMI20_RT_coverge, sum)
    CR_nnet_UAMI20_RT_pred <- mean(list_nnet_UAMI20_RT_coverge)
    sd_CR_nnet_UAMI20_RT_pred <- sd(list_nnet_UAMI20_RT_coverge)
    
    list_nnet_UAMI20_UT_pred <- sapply(list_nnet_UAMI20_UT_pred, sum)
    mean_nnet_UAMI20_UT_pred <- mean(list_nnet_UAMI20_UT_pred)
    sd_nnet_UAMI20_UT_pred <- sd(list_nnet_UAMI20_UT_pred)
    list_nnet_UAMI20_UT_SE <- sapply(list_nnet_UAMI20_UT_SE, sum)
    mean_nnet_UAMI20_UT_SE <- mean(list_nnet_UAMI20_UT_SE)
    sd_nnet_UAMI20_UT_SE <- sd(list_nnet_UAMI20_UT_SE)
    CIlower_nnet_UAMI20_UT_pred <- mean_nnet_UAMI20_UT_pred - (2*mean_nnet_UAMI20_UT_SE)
    CIupper_nnet_UAMI20_UT_pred <- mean_nnet_UAMI20_UT_pred + (2*mean_nnet_UAMI20_UT_SE)
    nnet_UAMI20_UT_pred_max <- max(list_nnet_UAMI20_UT_pred) 
    nnet_UAMI20_UT_pred_min <- min(list_nnet_UAMI20_UT_pred)
    RB_nnet_UAMI20_UT_pred <- bias(UT_true, list_nnet_UAMI20_UT_pred)
    bias_RB_nnet_UAMI20_UT_pred <- list_nnet_UAMI20_UT_pred - UT_true
    sd_RB_nnet_UAMI20_UT_pred <- sd(bias_RB_nnet_UAMI20_UT_pred)    
    PB_nnet_UAMI20_UT_pred <- percent_bias(UT_true, list_nnet_UAMI20_UT_pred) *100
    RMSE_nnet_UAMI20_UT_pred <- rmse(UT_true, list_nnet_UAMI20_UT_pred)
    AW_nnet_UAMI20_UT_pred <- mean(sapply(list_nnet_UAMI20_UT_95width, sum))
    list_nnet_UAMI20_UT_coverge <- sapply(list_nnet_UAMI20_UT_coverge, sum)
    CR_nnet_UAMI20_UT_pred <- mean(list_nnet_UAMI20_UT_coverge)
    sd_CR_nnet_UAMI20_UT_pred <- sd(list_nnet_UAMI20_UT_coverge)
    
    list_nnet_UAMI20_SW_pred <- sapply(list_nnet_UAMI20_SW_pred, sum)
    mean_nnet_UAMI20_SW_pred <- mean(list_nnet_UAMI20_SW_pred)
    sd_nnet_UAMI20_SW_pred <- sd(list_nnet_UAMI20_SW_pred)
    list_nnet_UAMI20_SW_SE <- sapply(list_nnet_UAMI20_SW_SE, sum)
    mean_nnet_UAMI20_SW_SE <- mean(list_nnet_UAMI20_SW_SE)
    sd_nnet_UAMI20_SW_SE <- sd(list_nnet_UAMI20_SW_SE)
    CIlower_nnet_UAMI20_SW_pred <- mean_nnet_UAMI20_SW_pred - (2*mean_nnet_UAMI20_SW_SE)
    CIupper_nnet_UAMI20_SW_pred <- mean_nnet_UAMI20_SW_pred + (2*mean_nnet_UAMI20_SW_SE)
    nnet_UAMI20_SW_pred_max <- max(list_nnet_UAMI20_SW_pred) 
    nnet_UAMI20_SW_pred_min <- min(list_nnet_UAMI20_SW_pred)
    RB_nnet_UAMI20_SW_pred <- bias(SW_true, list_nnet_UAMI20_SW_pred)
    bias_RB_nnet_UAMI20_SW_pred <- list_nnet_UAMI20_SW_pred - SW_true
    sd_RB_nnet_UAMI20_SW_pred <- sd(bias_RB_nnet_UAMI20_SW_pred)    
    PB_nnet_UAMI20_SW_pred <- percent_bias(SW_true, list_nnet_UAMI20_SW_pred) *100
    RMSE_nnet_UAMI20_SW_pred <- rmse(SW_true, list_nnet_UAMI20_SW_pred)
    AW_nnet_UAMI20_SW_pred <- mean(sapply(list_nnet_UAMI20_SW_95width, sum))
    list_nnet_UAMI20_SW_coverge <- sapply(list_nnet_UAMI20_SW_coverge, sum)
    CR_nnet_UAMI20_SW_pred <- mean(list_nnet_UAMI20_SW_coverge)
    sd_CR_nnet_UAMI20_SW_pred <- sd(list_nnet_UAMI20_SW_coverge)
    
    list_nnet_UAMI20_OU_pred <- sapply(list_nnet_UAMI20_OU_pred, sum)
    mean_nnet_UAMI20_OU_pred <- mean(list_nnet_UAMI20_OU_pred)
    sd_nnet_UAMI20_OU_pred <- sd(list_nnet_UAMI20_OU_pred)
    list_nnet_UAMI20_OU_SE <- sapply(list_nnet_UAMI20_OU_SE, sum)
    mean_nnet_UAMI20_OU_SE <- mean(list_nnet_UAMI20_OU_SE)
    sd_nnet_UAMI20_OU_SE <- sd(list_nnet_UAMI20_OU_SE)
    CIlower_nnet_UAMI20_OU_pred <- mean_nnet_UAMI20_OU_pred - (2*mean_nnet_UAMI20_OU_SE)
    CIupper_nnet_UAMI20_OU_pred <- mean_nnet_UAMI20_OU_pred + (2*mean_nnet_UAMI20_OU_SE)
    nnet_UAMI20_OU_pred_max <- max(list_nnet_UAMI20_OU_pred) 
    nnet_UAMI20_OU_pred_min <- min(list_nnet_UAMI20_OU_pred)
    RB_nnet_UAMI20_OU_pred <- bias(OU_true, list_nnet_UAMI20_OU_pred)
    bias_RB_nnet_UAMI20_OU_pred <- list_nnet_UAMI20_OU_pred - OU_true
    sd_RB_nnet_UAMI20_OU_pred <- sd(bias_RB_nnet_UAMI20_OU_pred)    
    PB_nnet_UAMI20_OU_pred <- percent_bias(OU_true, list_nnet_UAMI20_OU_pred) *100
    RMSE_nnet_UAMI20_OU_pred <- rmse(OU_true, list_nnet_UAMI20_OU_pred)
    AW_nnet_UAMI20_OU_pred <- mean(sapply(list_nnet_UAMI20_OU_95width, sum))
    list_nnet_UAMI20_OU_coverge <- sapply(list_nnet_UAMI20_OU_coverge, sum)
    CR_nnet_UAMI20_OU_pred <- mean(list_nnet_UAMI20_OU_coverge)
    sd_CR_nnet_UAMI20_OU_pred <- sd(list_nnet_UAMI20_OU_coverge)
  }
  
  #Performance of UAMI5
  {
    list_nnet_UAMI5_RT_pred <- sapply(list_nnet_UAMI5_RT_pred, sum)
    mean_nnet_UAMI5_RT_pred <- mean(list_nnet_UAMI5_RT_pred)
    sd_nnet_UAMI5_RT_pred <- sd(list_nnet_UAMI5_RT_pred)
    list_nnet_UAMI5_RT_SE <- sapply(list_nnet_UAMI5_RT_SE, sum)
    mean_nnet_UAMI5_RT_SE <- mean(list_nnet_UAMI5_RT_SE)
    sd_nnet_UAMI5_RT_SE <- sd(list_nnet_UAMI5_RT_SE)
    CIlower_nnet_UAMI5_RT_pred <- mean_nnet_UAMI5_RT_pred - (2*mean_nnet_UAMI5_RT_SE)
    CIupper_nnet_UAMI5_RT_pred <- mean_nnet_UAMI5_RT_pred + (2*mean_nnet_UAMI5_RT_SE)
    nnet_UAMI5_RT_pred_max <- max(list_nnet_UAMI5_RT_pred) 
    nnet_UAMI5_RT_pred_min <- min(list_nnet_UAMI5_RT_pred)
    RB_nnet_UAMI5_RT_pred <- bias(RT_true, list_nnet_UAMI5_RT_pred)
    bias_RB_nnet_UAMI5_RT_pred <- list_nnet_UAMI5_RT_pred - RT_true
    sd_RB_nnet_UAMI5_RT_pred <- sd(bias_RB_nnet_UAMI5_RT_pred)    
    PB_nnet_UAMI5_RT_pred <- percent_bias(RT_true, list_nnet_UAMI5_RT_pred) *100
    RMSE_nnet_UAMI5_RT_pred <- rmse(RT_true, list_nnet_UAMI5_RT_pred)
    AW_nnet_UAMI5_RT_pred <- mean(sapply(list_nnet_UAMI5_RT_95width, sum))
    list_nnet_UAMI5_RT_coverge <- sapply(list_nnet_UAMI5_RT_coverge, sum)
    CR_nnet_UAMI5_RT_pred <- mean(list_nnet_UAMI5_RT_coverge)
    sd_CR_nnet_UAMI5_RT_pred <- sd(list_nnet_UAMI5_RT_coverge)
    
    list_nnet_UAMI5_UT_pred <- sapply(list_nnet_UAMI5_UT_pred, sum)
    mean_nnet_UAMI5_UT_pred <- mean(list_nnet_UAMI5_UT_pred)
    sd_nnet_UAMI5_UT_pred <- sd(list_nnet_UAMI5_UT_pred)
    list_nnet_UAMI5_UT_SE <- sapply(list_nnet_UAMI5_UT_SE, sum)
    mean_nnet_UAMI5_UT_SE <- mean(list_nnet_UAMI5_UT_SE)
    sd_nnet_UAMI5_UT_SE <- sd(list_nnet_UAMI5_UT_SE)
    CIlower_nnet_UAMI5_UT_pred <- mean_nnet_UAMI5_UT_pred - (2*mean_nnet_UAMI5_UT_SE)
    CIupper_nnet_UAMI5_UT_pred <- mean_nnet_UAMI5_UT_pred + (2*mean_nnet_UAMI5_UT_SE)
    nnet_UAMI5_UT_pred_max <- max(list_nnet_UAMI5_UT_pred) 
    nnet_UAMI5_UT_pred_min <- min(list_nnet_UAMI5_UT_pred)
    RB_nnet_UAMI5_UT_pred <- bias(UT_true, list_nnet_UAMI5_UT_pred)
    bias_RB_nnet_UAMI5_UT_pred <- list_nnet_UAMI5_UT_pred - UT_true
    sd_RB_nnet_UAMI5_UT_pred <- sd(bias_RB_nnet_UAMI5_UT_pred)    
    PB_nnet_UAMI5_UT_pred <- percent_bias(UT_true, list_nnet_UAMI5_UT_pred) *100
    RMSE_nnet_UAMI5_UT_pred <- rmse(UT_true, list_nnet_UAMI5_UT_pred)
    AW_nnet_UAMI5_UT_pred <- mean(sapply(list_nnet_UAMI5_UT_95width, sum))
    list_nnet_UAMI5_UT_coverge <- sapply(list_nnet_UAMI5_UT_coverge, sum)
    CR_nnet_UAMI5_UT_pred <- mean(list_nnet_UAMI5_UT_coverge)
    sd_CR_nnet_UAMI5_UT_pred <- sd(list_nnet_UAMI5_UT_coverge)
    
    list_nnet_UAMI5_SW_pred <- sapply(list_nnet_UAMI5_SW_pred, sum)
    mean_nnet_UAMI5_SW_pred <- mean(list_nnet_UAMI5_SW_pred)
    sd_nnet_UAMI5_SW_pred <- sd(list_nnet_UAMI5_SW_pred)
    list_nnet_UAMI5_SW_SE <- sapply(list_nnet_UAMI5_SW_SE, sum)
    mean_nnet_UAMI5_SW_SE <- mean(list_nnet_UAMI5_SW_SE)
    sd_nnet_UAMI5_SW_SE <- sd(list_nnet_UAMI5_SW_SE)
    CIlower_nnet_UAMI5_SW_pred <- mean_nnet_UAMI5_SW_pred - (2*mean_nnet_UAMI5_SW_SE)
    CIupper_nnet_UAMI5_SW_pred <- mean_nnet_UAMI5_SW_pred + (2*mean_nnet_UAMI5_SW_SE)
    nnet_UAMI5_SW_pred_max <- max(list_nnet_UAMI5_SW_pred) 
    nnet_UAMI5_SW_pred_min <- min(list_nnet_UAMI5_SW_pred)
    RB_nnet_UAMI5_SW_pred <- bias(SW_true, list_nnet_UAMI5_SW_pred)
    bias_RB_nnet_UAMI5_SW_pred <- list_nnet_UAMI5_SW_pred - SW_true
    sd_RB_nnet_UAMI5_SW_pred <- sd(bias_RB_nnet_UAMI5_SW_pred)    
    PB_nnet_UAMI5_SW_pred <- percent_bias(SW_true, list_nnet_UAMI5_SW_pred) *100
    RMSE_nnet_UAMI5_SW_pred <- rmse(SW_true, list_nnet_UAMI5_SW_pred)
    AW_nnet_UAMI5_SW_pred <- mean(sapply(list_nnet_UAMI5_SW_95width, sum))
    list_nnet_UAMI5_SW_coverge <- sapply(list_nnet_UAMI5_SW_coverge, sum)
    CR_nnet_UAMI5_SW_pred <- mean(list_nnet_UAMI5_SW_coverge)
    sd_CR_nnet_UAMI5_SW_pred <- sd(list_nnet_UAMI5_SW_coverge)
    
    list_nnet_UAMI5_OU_pred <- sapply(list_nnet_UAMI5_OU_pred, sum)
    mean_nnet_UAMI5_OU_pred <- mean(list_nnet_UAMI5_OU_pred)
    sd_nnet_UAMI5_OU_pred <- sd(list_nnet_UAMI5_OU_pred)
    list_nnet_UAMI5_OU_SE <- sapply(list_nnet_UAMI5_OU_SE, sum)
    mean_nnet_UAMI5_OU_SE <- mean(list_nnet_UAMI5_OU_SE)
    sd_nnet_UAMI5_OU_SE <- sd(list_nnet_UAMI5_OU_SE)
    CIlower_nnet_UAMI5_OU_pred <- mean_nnet_UAMI5_OU_pred - (2*mean_nnet_UAMI5_OU_SE)
    CIupper_nnet_UAMI5_OU_pred <- mean_nnet_UAMI5_OU_pred + (2*mean_nnet_UAMI5_OU_SE)
    nnet_UAMI5_OU_pred_max <- max(list_nnet_UAMI5_OU_pred) 
    nnet_UAMI5_OU_pred_min <- min(list_nnet_UAMI5_OU_pred)
    RB_nnet_UAMI5_OU_pred <- bias(OU_true, list_nnet_UAMI5_OU_pred)
    bias_RB_nnet_UAMI5_OU_pred <- list_nnet_UAMI5_OU_pred - OU_true
    sd_RB_nnet_UAMI5_OU_pred <- sd(bias_RB_nnet_UAMI5_OU_pred)    
    PB_nnet_UAMI5_OU_pred <- percent_bias(OU_true, list_nnet_UAMI5_OU_pred) *100
    RMSE_nnet_UAMI5_OU_pred <- rmse(OU_true, list_nnet_UAMI5_OU_pred)
    AW_nnet_UAMI5_OU_pred <- mean(sapply(list_nnet_UAMI5_OU_95width, sum))
    list_nnet_UAMI5_OU_coverge <- sapply(list_nnet_UAMI5_OU_coverge, sum)
    CR_nnet_UAMI5_OU_pred <- mean(list_nnet_UAMI5_OU_coverge)
    sd_CR_nnet_UAMI5_OU_pred <- sd(list_nnet_UAMI5_OU_coverge)
  }
  
  #Performance of MAMI80
  {
    list_nnet_MAMI80_RT_pred <- sapply(list_nnet_MAMI80_RT_pred, sum)
    mean_nnet_MAMI80_RT_pred <- mean(list_nnet_MAMI80_RT_pred)
    sd_nnet_MAMI80_RT_pred <- sd(list_nnet_MAMI80_RT_pred)
    list_nnet_MAMI80_RT_SE <- sapply(list_nnet_MAMI80_RT_SE, sum)
    mean_nnet_MAMI80_RT_SE <- mean(list_nnet_MAMI80_RT_SE)
    sd_nnet_MAMI80_RT_SE <- sd(list_nnet_MAMI80_RT_SE)
    CIlower_nnet_MAMI80_RT_pred <- mean_nnet_MAMI80_RT_pred - (2*mean_nnet_MAMI80_RT_SE)
    CIupper_nnet_MAMI80_RT_pred <- mean_nnet_MAMI80_RT_pred + (2*mean_nnet_MAMI80_RT_SE)
    nnet_MAMI80_RT_pred_max <- max(list_nnet_MAMI80_RT_pred) 
    nnet_MAMI80_RT_pred_min <- min(list_nnet_MAMI80_RT_pred)
    RB_nnet_MAMI80_RT_pred <- bias(RT_true, list_nnet_MAMI80_RT_pred)
    bias_RB_nnet_MAMI80_RT_pred <- list_nnet_MAMI80_RT_pred - RT_true
    sd_RB_nnet_MAMI80_RT_pred <- sd(bias_RB_nnet_MAMI80_RT_pred)    
    PB_nnet_MAMI80_RT_pred <- percent_bias(RT_true, list_nnet_MAMI80_RT_pred) *100
    RMSE_nnet_MAMI80_RT_pred <- rmse(RT_true, list_nnet_MAMI80_RT_pred)
    AW_nnet_MAMI80_RT_pred <- mean(sapply(list_nnet_MAMI80_RT_95width, sum))
    list_nnet_MAMI80_RT_coverge <- sapply(list_nnet_MAMI80_RT_coverge, sum)
    CR_nnet_MAMI80_RT_pred <- mean(list_nnet_MAMI80_RT_coverge)
    sd_CR_nnet_MAMI80_RT_pred <- sd(list_nnet_MAMI80_RT_coverge)
    
    list_nnet_MAMI80_UT_pred <- sapply(list_nnet_MAMI80_UT_pred, sum)
    mean_nnet_MAMI80_UT_pred <- mean(list_nnet_MAMI80_UT_pred)
    sd_nnet_MAMI80_UT_pred <- sd(list_nnet_MAMI80_UT_pred)
    list_nnet_MAMI80_UT_SE <- sapply(list_nnet_MAMI80_UT_SE, sum)
    mean_nnet_MAMI80_UT_SE <- mean(list_nnet_MAMI80_UT_SE)
    sd_nnet_MAMI80_UT_SE <- sd(list_nnet_MAMI80_UT_SE)
    CIlower_nnet_MAMI80_UT_pred <- mean_nnet_MAMI80_UT_pred - (2*mean_nnet_MAMI80_UT_SE)
    CIupper_nnet_MAMI80_UT_pred <- mean_nnet_MAMI80_UT_pred + (2*mean_nnet_MAMI80_UT_SE)
    nnet_MAMI80_UT_pred_max <- max(list_nnet_MAMI80_UT_pred) 
    nnet_MAMI80_UT_pred_min <- min(list_nnet_MAMI80_UT_pred)
    RB_nnet_MAMI80_UT_pred <- bias(UT_true, list_nnet_MAMI80_UT_pred)
    bias_RB_nnet_MAMI80_UT_pred <- list_nnet_MAMI80_UT_pred - UT_true
    sd_RB_nnet_MAMI80_UT_pred <- sd(bias_RB_nnet_MAMI80_UT_pred)    
    PB_nnet_MAMI80_UT_pred <- percent_bias(UT_true, list_nnet_MAMI80_UT_pred) *100
    RMSE_nnet_MAMI80_UT_pred <- rmse(UT_true, list_nnet_MAMI80_UT_pred)
    AW_nnet_MAMI80_UT_pred <- mean(sapply(list_nnet_MAMI80_UT_95width, sum))
    list_nnet_MAMI80_UT_coverge <- sapply(list_nnet_MAMI80_UT_coverge, sum)
    CR_nnet_MAMI80_UT_pred <- mean(list_nnet_MAMI80_UT_coverge)
    sd_CR_nnet_MAMI80_UT_pred <- sd(list_nnet_MAMI80_UT_coverge)
    
    list_nnet_MAMI80_SW_pred <- sapply(list_nnet_MAMI80_SW_pred, sum)
    mean_nnet_MAMI80_SW_pred <- mean(list_nnet_MAMI80_SW_pred)
    sd_nnet_MAMI80_SW_pred <- sd(list_nnet_MAMI80_SW_pred)
    list_nnet_MAMI80_SW_SE <- sapply(list_nnet_MAMI80_SW_SE, sum)
    mean_nnet_MAMI80_SW_SE <- mean(list_nnet_MAMI80_SW_SE)
    sd_nnet_MAMI80_SW_SE <- sd(list_nnet_MAMI80_SW_SE)
    CIlower_nnet_MAMI80_SW_pred <- mean_nnet_MAMI80_SW_pred - (2*mean_nnet_MAMI80_SW_SE)
    CIupper_nnet_MAMI80_SW_pred <- mean_nnet_MAMI80_SW_pred + (2*mean_nnet_MAMI80_SW_SE)
    nnet_MAMI80_SW_pred_max <- max(list_nnet_MAMI80_SW_pred) 
    nnet_MAMI80_SW_pred_min <- min(list_nnet_MAMI80_SW_pred)
    RB_nnet_MAMI80_SW_pred <- bias(SW_true, list_nnet_MAMI80_SW_pred)
    bias_RB_nnet_MAMI80_SW_pred <- list_nnet_MAMI80_SW_pred - SW_true
    sd_RB_nnet_MAMI80_SW_pred <- sd(bias_RB_nnet_MAMI80_SW_pred)    
    PB_nnet_MAMI80_SW_pred <- percent_bias(SW_true, list_nnet_MAMI80_SW_pred) *100
    RMSE_nnet_MAMI80_SW_pred <- rmse(SW_true, list_nnet_MAMI80_SW_pred)
    AW_nnet_MAMI80_SW_pred <- mean(sapply(list_nnet_MAMI80_SW_95width, sum))
    list_nnet_MAMI80_SW_coverge <- sapply(list_nnet_MAMI80_SW_coverge, sum)
    CR_nnet_MAMI80_SW_pred <- mean(list_nnet_MAMI80_SW_coverge)
    sd_CR_nnet_MAMI80_SW_pred <- sd(list_nnet_MAMI80_SW_coverge)
    
    list_nnet_MAMI80_OU_pred <- sapply(list_nnet_MAMI80_OU_pred, sum)
    mean_nnet_MAMI80_OU_pred <- mean(list_nnet_MAMI80_OU_pred)
    sd_nnet_MAMI80_OU_pred <- sd(list_nnet_MAMI80_OU_pred)
    list_nnet_MAMI80_OU_SE <- sapply(list_nnet_MAMI80_OU_SE, sum)
    mean_nnet_MAMI80_OU_SE <- mean(list_nnet_MAMI80_OU_SE)
    sd_nnet_MAMI80_OU_SE <- sd(list_nnet_MAMI80_OU_SE)
    CIlower_nnet_MAMI80_OU_pred <- mean_nnet_MAMI80_OU_pred - (2*mean_nnet_MAMI80_OU_SE)
    CIupper_nnet_MAMI80_OU_pred <- mean_nnet_MAMI80_OU_pred + (2*mean_nnet_MAMI80_OU_SE)
    nnet_MAMI80_OU_pred_max <- max(list_nnet_MAMI80_OU_pred) 
    nnet_MAMI80_OU_pred_min <- min(list_nnet_MAMI80_OU_pred)
    RB_nnet_MAMI80_OU_pred <- bias(OU_true, list_nnet_MAMI80_OU_pred)
    bias_RB_nnet_MAMI80_OU_pred <- list_nnet_MAMI80_OU_pred - OU_true
    sd_RB_nnet_MAMI80_OU_pred <- sd(bias_RB_nnet_MAMI80_OU_pred)    
    PB_nnet_MAMI80_OU_pred <- percent_bias(OU_true, list_nnet_MAMI80_OU_pred) *100
    RMSE_nnet_MAMI80_OU_pred <- rmse(OU_true, list_nnet_MAMI80_OU_pred)
    AW_nnet_MAMI80_OU_pred <- mean(sapply(list_nnet_MAMI80_OU_95width, sum))
    list_nnet_MAMI80_OU_coverge <- sapply(list_nnet_MAMI80_OU_coverge, sum)
    CR_nnet_MAMI80_OU_pred <- mean(list_nnet_MAMI80_OU_coverge)
    sd_CR_nnet_MAMI80_OU_pred <- sd(list_nnet_MAMI80_OU_coverge)
  }
  
  #Performance of MAMI50
  {
    list_nnet_MAMI50_RT_pred <- sapply(list_nnet_MAMI50_RT_pred, sum)
    mean_nnet_MAMI50_RT_pred <- mean(list_nnet_MAMI50_RT_pred)
    sd_nnet_MAMI50_RT_pred <- sd(list_nnet_MAMI50_RT_pred)
    list_nnet_MAMI50_RT_SE <- sapply(list_nnet_MAMI50_RT_SE, sum)
    mean_nnet_MAMI50_RT_SE <- mean(list_nnet_MAMI50_RT_SE)
    sd_nnet_MAMI50_RT_SE <- sd(list_nnet_MAMI50_RT_SE)
    CIlower_nnet_MAMI50_RT_pred <- mean_nnet_MAMI50_RT_pred - (2*mean_nnet_MAMI50_RT_SE)
    CIupper_nnet_MAMI50_RT_pred <- mean_nnet_MAMI50_RT_pred + (2*mean_nnet_MAMI50_RT_SE)
    nnet_MAMI50_RT_pred_max <- max(list_nnet_MAMI50_RT_pred) 
    nnet_MAMI50_RT_pred_min <- min(list_nnet_MAMI50_RT_pred)
    RB_nnet_MAMI50_RT_pred <- bias(RT_true, list_nnet_MAMI50_RT_pred)
    bias_RB_nnet_MAMI50_RT_pred <- list_nnet_MAMI50_RT_pred - RT_true
    sd_RB_nnet_MAMI50_RT_pred <- sd(bias_RB_nnet_MAMI50_RT_pred)    
    PB_nnet_MAMI50_RT_pred <- percent_bias(RT_true, list_nnet_MAMI50_RT_pred) *100
    RMSE_nnet_MAMI50_RT_pred <- rmse(RT_true, list_nnet_MAMI50_RT_pred)
    AW_nnet_MAMI50_RT_pred <- mean(sapply(list_nnet_MAMI50_RT_95width, sum))
    list_nnet_MAMI50_RT_coverge <- sapply(list_nnet_MAMI50_RT_coverge, sum)
    CR_nnet_MAMI50_RT_pred <- mean(list_nnet_MAMI50_RT_coverge)
    sd_CR_nnet_MAMI50_RT_pred <- sd(list_nnet_MAMI50_RT_coverge)
    
    list_nnet_MAMI50_UT_pred <- sapply(list_nnet_MAMI50_UT_pred, sum)
    mean_nnet_MAMI50_UT_pred <- mean(list_nnet_MAMI50_UT_pred)
    sd_nnet_MAMI50_UT_pred <- sd(list_nnet_MAMI50_UT_pred)
    list_nnet_MAMI50_UT_SE <- sapply(list_nnet_MAMI50_UT_SE, sum)
    mean_nnet_MAMI50_UT_SE <- mean(list_nnet_MAMI50_UT_SE)
    sd_nnet_MAMI50_UT_SE <- sd(list_nnet_MAMI50_UT_SE)
    CIlower_nnet_MAMI50_UT_pred <- mean_nnet_MAMI50_UT_pred - (2*mean_nnet_MAMI50_UT_SE)
    CIupper_nnet_MAMI50_UT_pred <- mean_nnet_MAMI50_UT_pred + (2*mean_nnet_MAMI50_UT_SE)
    nnet_MAMI50_UT_pred_max <- max(list_nnet_MAMI50_UT_pred) 
    nnet_MAMI50_UT_pred_min <- min(list_nnet_MAMI50_UT_pred)
    RB_nnet_MAMI50_UT_pred <- bias(UT_true, list_nnet_MAMI50_UT_pred)
    bias_RB_nnet_MAMI50_UT_pred <- list_nnet_MAMI50_UT_pred - UT_true
    sd_RB_nnet_MAMI50_UT_pred <- sd(bias_RB_nnet_MAMI50_UT_pred)    
    PB_nnet_MAMI50_UT_pred <- percent_bias(UT_true, list_nnet_MAMI50_UT_pred) *100
    RMSE_nnet_MAMI50_UT_pred <- rmse(UT_true, list_nnet_MAMI50_UT_pred)
    AW_nnet_MAMI50_UT_pred <- mean(sapply(list_nnet_MAMI50_UT_95width, sum))
    list_nnet_MAMI50_UT_coverge <- sapply(list_nnet_MAMI50_UT_coverge, sum)
    CR_nnet_MAMI50_UT_pred <- mean(list_nnet_MAMI50_UT_coverge)
    sd_CR_nnet_MAMI50_UT_pred <- sd(list_nnet_MAMI50_UT_coverge)
    
    list_nnet_MAMI50_SW_pred <- sapply(list_nnet_MAMI50_SW_pred, sum)
    mean_nnet_MAMI50_SW_pred <- mean(list_nnet_MAMI50_SW_pred)
    sd_nnet_MAMI50_SW_pred <- sd(list_nnet_MAMI50_SW_pred)
    list_nnet_MAMI50_SW_SE <- sapply(list_nnet_MAMI50_SW_SE, sum)
    mean_nnet_MAMI50_SW_SE <- mean(list_nnet_MAMI50_SW_SE)
    sd_nnet_MAMI50_SW_SE <- sd(list_nnet_MAMI50_SW_SE)
    CIlower_nnet_MAMI50_SW_pred <- mean_nnet_MAMI50_SW_pred - (2*mean_nnet_MAMI50_SW_SE)
    CIupper_nnet_MAMI50_SW_pred <- mean_nnet_MAMI50_SW_pred + (2*mean_nnet_MAMI50_SW_SE)
    nnet_MAMI50_SW_pred_max <- max(list_nnet_MAMI50_SW_pred) 
    nnet_MAMI50_SW_pred_min <- min(list_nnet_MAMI50_SW_pred)
    RB_nnet_MAMI50_SW_pred <- bias(SW_true, list_nnet_MAMI50_SW_pred)
    bias_RB_nnet_MAMI50_SW_pred <- list_nnet_MAMI50_SW_pred - SW_true
    sd_RB_nnet_MAMI50_SW_pred <- sd(bias_RB_nnet_MAMI50_SW_pred)    
    PB_nnet_MAMI50_SW_pred <- percent_bias(SW_true, list_nnet_MAMI50_SW_pred) *100
    RMSE_nnet_MAMI50_SW_pred <- rmse(SW_true, list_nnet_MAMI50_SW_pred)
    AW_nnet_MAMI50_SW_pred <- mean(sapply(list_nnet_MAMI50_SW_95width, sum))
    list_nnet_MAMI50_SW_coverge <- sapply(list_nnet_MAMI50_SW_coverge, sum)
    CR_nnet_MAMI50_SW_pred <- mean(list_nnet_MAMI50_SW_coverge)
    sd_CR_nnet_MAMI50_SW_pred <- sd(list_nnet_MAMI50_SW_coverge)
    
    list_nnet_MAMI50_OU_pred <- sapply(list_nnet_MAMI50_OU_pred, sum)
    mean_nnet_MAMI50_OU_pred <- mean(list_nnet_MAMI50_OU_pred)
    sd_nnet_MAMI50_OU_pred <- sd(list_nnet_MAMI50_OU_pred)
    list_nnet_MAMI50_OU_SE <- sapply(list_nnet_MAMI50_OU_SE, sum)
    mean_nnet_MAMI50_OU_SE <- mean(list_nnet_MAMI50_OU_SE)
    sd_nnet_MAMI50_OU_SE <- sd(list_nnet_MAMI50_OU_SE)
    CIlower_nnet_MAMI50_OU_pred <- mean_nnet_MAMI50_OU_pred - (2*mean_nnet_MAMI50_OU_SE)
    CIupper_nnet_MAMI50_OU_pred <- mean_nnet_MAMI50_OU_pred + (2*mean_nnet_MAMI50_OU_SE)
    nnet_MAMI50_OU_pred_max <- max(list_nnet_MAMI50_OU_pred) 
    nnet_MAMI50_OU_pred_min <- min(list_nnet_MAMI50_OU_pred)
    RB_nnet_MAMI50_OU_pred <- bias(OU_true, list_nnet_MAMI50_OU_pred)
    bias_RB_nnet_MAMI50_OU_pred <- list_nnet_MAMI50_OU_pred - OU_true
    sd_RB_nnet_MAMI50_OU_pred <- sd(bias_RB_nnet_MAMI50_OU_pred)    
    PB_nnet_MAMI50_OU_pred <- percent_bias(OU_true, list_nnet_MAMI50_OU_pred) *100
    RMSE_nnet_MAMI50_OU_pred <- rmse(OU_true, list_nnet_MAMI50_OU_pred)
    AW_nnet_MAMI50_OU_pred <- mean(sapply(list_nnet_MAMI50_OU_95width, sum))
    list_nnet_MAMI50_OU_coverge <- sapply(list_nnet_MAMI50_OU_coverge, sum)
    CR_nnet_MAMI50_OU_pred <- mean(list_nnet_MAMI50_OU_coverge)
    sd_CR_nnet_MAMI50_OU_pred <- sd(list_nnet_MAMI50_OU_coverge)
  }
  
  #Performance of MAMI20
  {
    list_nnet_MAMI20_RT_pred <- sapply(list_nnet_MAMI20_RT_pred, sum)
    mean_nnet_MAMI20_RT_pred <- mean(list_nnet_MAMI20_RT_pred)
    sd_nnet_MAMI20_RT_pred <- sd(list_nnet_MAMI20_RT_pred)
    list_nnet_MAMI20_RT_SE <- sapply(list_nnet_MAMI20_RT_SE, sum)
    mean_nnet_MAMI20_RT_SE <- mean(list_nnet_MAMI20_RT_SE)
    sd_nnet_MAMI20_RT_SE <- sd(list_nnet_MAMI20_RT_SE)
    CIlower_nnet_MAMI20_RT_pred <- mean_nnet_MAMI20_RT_pred - (2*mean_nnet_MAMI20_RT_SE)
    CIupper_nnet_MAMI20_RT_pred <- mean_nnet_MAMI20_RT_pred + (2*mean_nnet_MAMI20_RT_SE)
    nnet_MAMI20_RT_pred_max <- max(list_nnet_MAMI20_RT_pred) 
    nnet_MAMI20_RT_pred_min <- min(list_nnet_MAMI20_RT_pred)
    RB_nnet_MAMI20_RT_pred <- bias(RT_true, list_nnet_MAMI20_RT_pred)
    bias_RB_nnet_MAMI20_RT_pred <- list_nnet_MAMI20_RT_pred - RT_true
    sd_RB_nnet_MAMI20_RT_pred <- sd(bias_RB_nnet_MAMI20_RT_pred)    
    PB_nnet_MAMI20_RT_pred <- percent_bias(RT_true, list_nnet_MAMI20_RT_pred) *100
    RMSE_nnet_MAMI20_RT_pred <- rmse(RT_true, list_nnet_MAMI20_RT_pred)
    AW_nnet_MAMI20_RT_pred <- mean(sapply(list_nnet_MAMI20_RT_95width, sum))
    list_nnet_MAMI20_RT_coverge <- sapply(list_nnet_MAMI20_RT_coverge, sum)
    CR_nnet_MAMI20_RT_pred <- mean(list_nnet_MAMI20_RT_coverge)
    sd_CR_nnet_MAMI20_RT_pred <- sd(list_nnet_MAMI20_RT_coverge)
    
    list_nnet_MAMI20_UT_pred <- sapply(list_nnet_MAMI20_UT_pred, sum)
    mean_nnet_MAMI20_UT_pred <- mean(list_nnet_MAMI20_UT_pred)
    sd_nnet_MAMI20_UT_pred <- sd(list_nnet_MAMI20_UT_pred)
    list_nnet_MAMI20_UT_SE <- sapply(list_nnet_MAMI20_UT_SE, sum)
    mean_nnet_MAMI20_UT_SE <- mean(list_nnet_MAMI20_UT_SE)
    sd_nnet_MAMI20_UT_SE <- sd(list_nnet_MAMI20_UT_SE)
    CIlower_nnet_MAMI20_UT_pred <- mean_nnet_MAMI20_UT_pred - (2*mean_nnet_MAMI20_UT_SE)
    CIupper_nnet_MAMI20_UT_pred <- mean_nnet_MAMI20_UT_pred + (2*mean_nnet_MAMI20_UT_SE)
    nnet_MAMI20_UT_pred_max <- max(list_nnet_MAMI20_UT_pred) 
    nnet_MAMI20_UT_pred_min <- min(list_nnet_MAMI20_UT_pred)
    RB_nnet_MAMI20_UT_pred <- bias(UT_true, list_nnet_MAMI20_UT_pred)
    bias_RB_nnet_MAMI20_UT_pred <- list_nnet_MAMI20_UT_pred - UT_true
    sd_RB_nnet_MAMI20_UT_pred <- sd(bias_RB_nnet_MAMI20_UT_pred)    
    PB_nnet_MAMI20_UT_pred <- percent_bias(UT_true, list_nnet_MAMI20_UT_pred) *100
    RMSE_nnet_MAMI20_UT_pred <- rmse(UT_true, list_nnet_MAMI20_UT_pred)
    AW_nnet_MAMI20_UT_pred <- mean(sapply(list_nnet_MAMI20_UT_95width, sum))
    list_nnet_MAMI20_UT_coverge <- sapply(list_nnet_MAMI20_UT_coverge, sum)
    CR_nnet_MAMI20_UT_pred <- mean(list_nnet_MAMI20_UT_coverge)
    sd_CR_nnet_MAMI20_UT_pred <- sd(list_nnet_MAMI20_UT_coverge)
    
    list_nnet_MAMI20_SW_pred <- sapply(list_nnet_MAMI20_SW_pred, sum)
    mean_nnet_MAMI20_SW_pred <- mean(list_nnet_MAMI20_SW_pred)
    sd_nnet_MAMI20_SW_pred <- sd(list_nnet_MAMI20_SW_pred)
    list_nnet_MAMI20_SW_SE <- sapply(list_nnet_MAMI20_SW_SE, sum)
    mean_nnet_MAMI20_SW_SE <- mean(list_nnet_MAMI20_SW_SE)
    sd_nnet_MAMI20_SW_SE <- sd(list_nnet_MAMI20_SW_SE)
    CIlower_nnet_MAMI20_SW_pred <- mean_nnet_MAMI20_SW_pred - (2*mean_nnet_MAMI20_SW_SE)
    CIupper_nnet_MAMI20_SW_pred <- mean_nnet_MAMI20_SW_pred + (2*mean_nnet_MAMI20_SW_SE)
    nnet_MAMI20_SW_pred_max <- max(list_nnet_MAMI20_SW_pred) 
    nnet_MAMI20_SW_pred_min <- min(list_nnet_MAMI20_SW_pred)
    RB_nnet_MAMI20_SW_pred <- bias(SW_true, list_nnet_MAMI20_SW_pred)
    bias_RB_nnet_MAMI20_SW_pred <- list_nnet_MAMI20_SW_pred - SW_true
    sd_RB_nnet_MAMI20_SW_pred <- sd(bias_RB_nnet_MAMI20_SW_pred)    
    PB_nnet_MAMI20_SW_pred <- percent_bias(SW_true, list_nnet_MAMI20_SW_pred) *100
    RMSE_nnet_MAMI20_SW_pred <- rmse(SW_true, list_nnet_MAMI20_SW_pred)
    AW_nnet_MAMI20_SW_pred <- mean(sapply(list_nnet_MAMI20_SW_95width, sum))
    list_nnet_MAMI20_SW_coverge <- sapply(list_nnet_MAMI20_SW_coverge, sum)
    CR_nnet_MAMI20_SW_pred <- mean(list_nnet_MAMI20_SW_coverge)
    sd_CR_nnet_MAMI20_SW_pred <- sd(list_nnet_MAMI20_SW_coverge)
    
    list_nnet_MAMI20_OU_pred <- sapply(list_nnet_MAMI20_OU_pred, sum)
    mean_nnet_MAMI20_OU_pred <- mean(list_nnet_MAMI20_OU_pred)
    sd_nnet_MAMI20_OU_pred <- sd(list_nnet_MAMI20_OU_pred)
    list_nnet_MAMI20_OU_SE <- sapply(list_nnet_MAMI20_OU_SE, sum)
    mean_nnet_MAMI20_OU_SE <- mean(list_nnet_MAMI20_OU_SE)
    sd_nnet_MAMI20_OU_SE <- sd(list_nnet_MAMI20_OU_SE)
    CIlower_nnet_MAMI20_OU_pred <- mean_nnet_MAMI20_OU_pred - (2*mean_nnet_MAMI20_OU_SE)
    CIupper_nnet_MAMI20_OU_pred <- mean_nnet_MAMI20_OU_pred + (2*mean_nnet_MAMI20_OU_SE)
    nnet_MAMI20_OU_pred_max <- max(list_nnet_MAMI20_OU_pred) 
    nnet_MAMI20_OU_pred_min <- min(list_nnet_MAMI20_OU_pred)
    RB_nnet_MAMI20_OU_pred <- bias(OU_true, list_nnet_MAMI20_OU_pred)
    bias_RB_nnet_MAMI20_OU_pred <- list_nnet_MAMI20_OU_pred - OU_true
    sd_RB_nnet_MAMI20_OU_pred <- sd(bias_RB_nnet_MAMI20_OU_pred)    
    PB_nnet_MAMI20_OU_pred <- percent_bias(OU_true, list_nnet_MAMI20_OU_pred) *100
    RMSE_nnet_MAMI20_OU_pred <- rmse(OU_true, list_nnet_MAMI20_OU_pred)
    AW_nnet_MAMI20_OU_pred <- mean(sapply(list_nnet_MAMI20_OU_95width, sum))
    list_nnet_MAMI20_OU_coverge <- sapply(list_nnet_MAMI20_OU_coverge, sum)
    CR_nnet_MAMI20_OU_pred <- mean(list_nnet_MAMI20_OU_coverge)
    sd_CR_nnet_MAMI20_OU_pred <- sd(list_nnet_MAMI20_OU_coverge)
  }
  
  #Performance of MAMI5
  {
    list_nnet_MAMI5_RT_pred <- sapply(list_nnet_MAMI5_RT_pred, sum)
    mean_nnet_MAMI5_RT_pred <- mean(list_nnet_MAMI5_RT_pred)
    sd_nnet_MAMI5_RT_pred <- sd(list_nnet_MAMI5_RT_pred)
    list_nnet_MAMI5_RT_SE <- sapply(list_nnet_MAMI5_RT_SE, sum)
    mean_nnet_MAMI5_RT_SE <- mean(list_nnet_MAMI5_RT_SE)
    sd_nnet_MAMI5_RT_SE <- sd(list_nnet_MAMI5_RT_SE)
    CIlower_nnet_MAMI5_RT_pred <- mean_nnet_MAMI5_RT_pred - (2*mean_nnet_MAMI5_RT_SE)
    CIupper_nnet_MAMI5_RT_pred <- mean_nnet_MAMI5_RT_pred + (2*mean_nnet_MAMI5_RT_SE)
    nnet_MAMI5_RT_pred_max <- max(list_nnet_MAMI5_RT_pred) 
    nnet_MAMI5_RT_pred_min <- min(list_nnet_MAMI5_RT_pred)
    RB_nnet_MAMI5_RT_pred <- bias(RT_true, list_nnet_MAMI5_RT_pred)
    bias_RB_nnet_MAMI5_RT_pred <- list_nnet_MAMI5_RT_pred - RT_true
    sd_RB_nnet_MAMI5_RT_pred <- sd(bias_RB_nnet_MAMI5_RT_pred)    
    PB_nnet_MAMI5_RT_pred <- percent_bias(RT_true, list_nnet_MAMI5_RT_pred) *100
    RMSE_nnet_MAMI5_RT_pred <- rmse(RT_true, list_nnet_MAMI5_RT_pred)
    AW_nnet_MAMI5_RT_pred <- mean(sapply(list_nnet_MAMI5_RT_95width, sum))
    list_nnet_MAMI5_RT_coverge <- sapply(list_nnet_MAMI5_RT_coverge, sum)
    CR_nnet_MAMI5_RT_pred <- mean(list_nnet_MAMI5_RT_coverge)
    sd_CR_nnet_MAMI5_RT_pred <- sd(list_nnet_MAMI5_RT_coverge)
    
    list_nnet_MAMI5_UT_pred <- sapply(list_nnet_MAMI5_UT_pred, sum)
    mean_nnet_MAMI5_UT_pred <- mean(list_nnet_MAMI5_UT_pred)
    sd_nnet_MAMI5_UT_pred <- sd(list_nnet_MAMI5_UT_pred)
    list_nnet_MAMI5_UT_SE <- sapply(list_nnet_MAMI5_UT_SE, sum)
    mean_nnet_MAMI5_UT_SE <- mean(list_nnet_MAMI5_UT_SE)
    sd_nnet_MAMI5_UT_SE <- sd(list_nnet_MAMI5_UT_SE)
    CIlower_nnet_MAMI5_UT_pred <- mean_nnet_MAMI5_UT_pred - (2*mean_nnet_MAMI5_UT_SE)
    CIupper_nnet_MAMI5_UT_pred <- mean_nnet_MAMI5_UT_pred + (2*mean_nnet_MAMI5_UT_SE)
    nnet_MAMI5_UT_pred_max <- max(list_nnet_MAMI5_UT_pred) 
    nnet_MAMI5_UT_pred_min <- min(list_nnet_MAMI5_UT_pred)
    RB_nnet_MAMI5_UT_pred <- bias(UT_true, list_nnet_MAMI5_UT_pred)
    bias_RB_nnet_MAMI5_UT_pred <- list_nnet_MAMI5_UT_pred - UT_true
    sd_RB_nnet_MAMI5_UT_pred <- sd(bias_RB_nnet_MAMI5_UT_pred)    
    PB_nnet_MAMI5_UT_pred <- percent_bias(UT_true, list_nnet_MAMI5_UT_pred) *100
    RMSE_nnet_MAMI5_UT_pred <- rmse(UT_true, list_nnet_MAMI5_UT_pred)
    AW_nnet_MAMI5_UT_pred <- mean(sapply(list_nnet_MAMI5_UT_95width, sum))
    list_nnet_MAMI5_UT_coverge <- sapply(list_nnet_MAMI5_UT_coverge, sum)
    CR_nnet_MAMI5_UT_pred <- mean(list_nnet_MAMI5_UT_coverge)
    sd_CR_nnet_MAMI5_UT_pred <- sd(list_nnet_MAMI5_UT_coverge)
    
    list_nnet_MAMI5_SW_pred <- sapply(list_nnet_MAMI5_SW_pred, sum)
    mean_nnet_MAMI5_SW_pred <- mean(list_nnet_MAMI5_SW_pred)
    sd_nnet_MAMI5_SW_pred <- sd(list_nnet_MAMI5_SW_pred)
    list_nnet_MAMI5_SW_SE <- sapply(list_nnet_MAMI5_SW_SE, sum)
    mean_nnet_MAMI5_SW_SE <- mean(list_nnet_MAMI5_SW_SE)
    sd_nnet_MAMI5_SW_SE <- sd(list_nnet_MAMI5_SW_SE)
    CIlower_nnet_MAMI5_SW_pred <- mean_nnet_MAMI5_SW_pred - (2*mean_nnet_MAMI5_SW_SE)
    CIupper_nnet_MAMI5_SW_pred <- mean_nnet_MAMI5_SW_pred + (2*mean_nnet_MAMI5_SW_SE)
    nnet_MAMI5_SW_pred_max <- max(list_nnet_MAMI5_SW_pred) 
    nnet_MAMI5_SW_pred_min <- min(list_nnet_MAMI5_SW_pred)
    RB_nnet_MAMI5_SW_pred <- bias(SW_true, list_nnet_MAMI5_SW_pred)
    bias_RB_nnet_MAMI5_SW_pred <- list_nnet_MAMI5_SW_pred - SW_true
    sd_RB_nnet_MAMI5_SW_pred <- sd(bias_RB_nnet_MAMI5_SW_pred)    
    PB_nnet_MAMI5_SW_pred <- percent_bias(SW_true, list_nnet_MAMI5_SW_pred) *100
    RMSE_nnet_MAMI5_SW_pred <- rmse(SW_true, list_nnet_MAMI5_SW_pred)
    AW_nnet_MAMI5_SW_pred <- mean(sapply(list_nnet_MAMI5_SW_95width, sum))
    list_nnet_MAMI5_SW_coverge <- sapply(list_nnet_MAMI5_SW_coverge, sum)
    CR_nnet_MAMI5_SW_pred <- mean(list_nnet_MAMI5_SW_coverge)
    sd_CR_nnet_MAMI5_SW_pred <- sd(list_nnet_MAMI5_SW_coverge)
    
    list_nnet_MAMI5_OU_pred <- sapply(list_nnet_MAMI5_OU_pred, sum)
    mean_nnet_MAMI5_OU_pred <- mean(list_nnet_MAMI5_OU_pred)
    sd_nnet_MAMI5_OU_pred <- sd(list_nnet_MAMI5_OU_pred)
    list_nnet_MAMI5_OU_SE <- sapply(list_nnet_MAMI5_OU_SE, sum)
    mean_nnet_MAMI5_OU_SE <- mean(list_nnet_MAMI5_OU_SE)
    sd_nnet_MAMI5_OU_SE <- sd(list_nnet_MAMI5_OU_SE)
    CIlower_nnet_MAMI5_OU_pred <- mean_nnet_MAMI5_OU_pred - (2*mean_nnet_MAMI5_OU_SE)
    CIupper_nnet_MAMI5_OU_pred <- mean_nnet_MAMI5_OU_pred + (2*mean_nnet_MAMI5_OU_SE)
    nnet_MAMI5_OU_pred_max <- max(list_nnet_MAMI5_OU_pred) 
    nnet_MAMI5_OU_pred_min <- min(list_nnet_MAMI5_OU_pred)
    RB_nnet_MAMI5_OU_pred <- bias(OU_true, list_nnet_MAMI5_OU_pred)
    bias_RB_nnet_MAMI5_OU_pred <- list_nnet_MAMI5_OU_pred - OU_true
    sd_RB_nnet_MAMI5_OU_pred <- sd(bias_RB_nnet_MAMI5_OU_pred)    
    PB_nnet_MAMI5_OU_pred <- percent_bias(OU_true, list_nnet_MAMI5_OU_pred) *100
    RMSE_nnet_MAMI5_OU_pred <- rmse(OU_true, list_nnet_MAMI5_OU_pred)
    AW_nnet_MAMI5_OU_pred <- mean(sapply(list_nnet_MAMI5_OU_95width, sum))
    list_nnet_MAMI5_OU_coverge <- sapply(list_nnet_MAMI5_OU_coverge, sum)
    CR_nnet_MAMI5_OU_pred <- mean(list_nnet_MAMI5_OU_coverge)
    sd_CR_nnet_MAMI5_OU_pred <- sd(list_nnet_MAMI5_OU_coverge)
  }
}

print(c("Indication Proportion of Simulated Datasets", paste("RT/ENT:", round(RT_true,3)),paste("Urogenital tract:", round(UT_true,3)), paste("Skin and wounds", round(SW_true,3)), paste("Other and unknown body systems", round(OU_true,3))))

#benchmark print
{
  print(c("RT Benchmark Proportion of UA80",paste("mean:", round(mean_UA_80_benchmark_RT,3)),paste("mean_sd:", round(sd_UA_80_benchmark_RT,3)),paste("SE:", round(UA_80_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_UA_80_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_UA_80_benchmark_RT,3)),paste("95CI_upper", round(CIupper_UA_80_benchmark_RT,3)),paste("max:", round(UA_80_benchmark_RT_max,3)),paste("min:", round(UA_80_benchmark_RT_min,3)),paste("RB", round(RB_UA_80_benchmark_RT,3)),paste("RB_sd", round(sd_RB_UA_80_benchmark_RT,3)),paste("PB", round(PB_UA_80_benchmark_RT,3)),paste("CR", round(CR_UA_80_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_UA_80_benchmark_RT,3)) ,paste("AW", round(AW_UA_80_benchmark_RT,3)),paste("RMSE", round(RMSE_UA_80_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of UA80",paste("mean:", round(mean_UA_80_benchmark_UT,3)),paste("mean_sd:", round(sd_UA_80_benchmark_UT,3)),paste("SE:", round(UA_80_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_UA_80_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_UA_80_benchmark_UT,3)),paste("95CI_upper", round(CIupper_UA_80_benchmark_UT,3)),paste("max:", round(UA_80_benchmark_UT_max,3)),paste("min:", round(UA_80_benchmark_UT_min,3)),paste("RB", round(RB_UA_80_benchmark_UT,3)),paste("RB_sd", round(sd_RB_UA_80_benchmark_UT,3)),paste("PB", round(PB_UA_80_benchmark_UT,3)),paste("CR", round(CR_UA_80_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_UA_80_benchmark_UT,3)) ,paste("AW", round(AW_UA_80_benchmark_UT,3)),paste("RMSE", round(RMSE_UA_80_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of UA80",paste("mean:", round(mean_UA_80_benchmark_SW,3)),paste("mean_sd:", round(sd_UA_80_benchmark_SW,3)),paste("SE:", round(UA_80_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_UA_80_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_UA_80_benchmark_SW,3)),paste("95CI_upper", round(CIupper_UA_80_benchmark_SW,3)),paste("max:", round(UA_80_benchmark_SW_max,3)),paste("min:", round(UA_80_benchmark_SW_min,3)),paste("RB", round(RB_UA_80_benchmark_SW,3)),paste("RB_sd", round(sd_RB_UA_80_benchmark_SW,3)),paste("PB", round(PB_UA_80_benchmark_SW,3)),paste("CR", round(CR_UA_80_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_UA_80_benchmark_SW,3)) ,paste("AW", round(AW_UA_80_benchmark_SW,3)),paste("RMSE", round(RMSE_UA_80_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of UA80",paste("mean:", round(mean_UA_80_benchmark_OU,3)),paste("mean_sd:", round(sd_UA_80_benchmark_OU,3)),paste("SE:", round(UA_80_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_UA_80_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_UA_80_benchmark_OU,3)),paste("95CI_upper", round(CIupper_UA_80_benchmark_OU,3)),paste("max:", round(UA_80_benchmark_OU_max,3)),paste("min:", round(UA_80_benchmark_OU_min,3)),paste("RB", round(RB_UA_80_benchmark_OU,3)),paste("RB_sd", round(sd_RB_UA_80_benchmark_OU,3)),paste("PB", round(PB_UA_80_benchmark_OU,3)),paste("CR", round(CR_UA_80_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_UA_80_benchmark_OU,3)) ,paste("AW", round(AW_UA_80_benchmark_OU,3)),paste("RMSE", round(RMSE_UA_80_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of UA50",paste("mean:", round(mean_UA_50_benchmark_RT,3)),paste("mean_sd:", round(sd_UA_50_benchmark_RT,3)),paste("SE:", round(UA_50_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_UA_50_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_UA_50_benchmark_RT,3)),paste("95CI_upper", round(CIupper_UA_50_benchmark_RT,3)),paste("max:", round(UA_50_benchmark_RT_max,3)),paste("min:", round(UA_50_benchmark_RT_min,3)),paste("RB", round(RB_UA_50_benchmark_RT,3)),paste("RB_sd", round(sd_RB_UA_50_benchmark_RT,3)),paste("PB", round(PB_UA_50_benchmark_RT,3)),paste("CR", round(CR_UA_50_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_UA_50_benchmark_RT,3)) ,paste("AW", round(AW_UA_50_benchmark_RT,3)),paste("RMSE", round(RMSE_UA_50_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of UA50",paste("mean:", round(mean_UA_50_benchmark_UT,3)),paste("mean_sd:", round(sd_UA_50_benchmark_UT,3)),paste("SE:", round(UA_50_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_UA_50_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_UA_50_benchmark_UT,3)),paste("95CI_upper", round(CIupper_UA_50_benchmark_UT,3)),paste("max:", round(UA_50_benchmark_UT_max,3)),paste("min:", round(UA_50_benchmark_UT_min,3)),paste("RB", round(RB_UA_50_benchmark_UT,3)),paste("RB_sd", round(sd_RB_UA_50_benchmark_UT,3)),paste("PB", round(PB_UA_50_benchmark_UT,3)),paste("CR", round(CR_UA_50_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_UA_50_benchmark_UT,3)) ,paste("AW", round(AW_UA_50_benchmark_UT,3)),paste("RMSE", round(RMSE_UA_50_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of UA50",paste("mean:", round(mean_UA_50_benchmark_SW,3)),paste("mean_sd:", round(sd_UA_50_benchmark_SW,3)),paste("SE:", round(UA_50_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_UA_50_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_UA_50_benchmark_SW,3)),paste("95CI_upper", round(CIupper_UA_50_benchmark_SW,3)),paste("max:", round(UA_50_benchmark_SW_max,3)),paste("min:", round(UA_50_benchmark_SW_min,3)),paste("RB", round(RB_UA_50_benchmark_SW,3)),paste("RB_sd", round(sd_RB_UA_50_benchmark_SW,3)),paste("PB", round(PB_UA_50_benchmark_SW,3)),paste("CR", round(CR_UA_50_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_UA_50_benchmark_SW,3)) ,paste("AW", round(AW_UA_50_benchmark_SW,3)),paste("RMSE", round(RMSE_UA_50_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of UA50",paste("mean:", round(mean_UA_50_benchmark_OU,3)),paste("mean_sd:", round(sd_UA_50_benchmark_OU,3)),paste("SE:", round(UA_50_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_UA_50_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_UA_50_benchmark_OU,3)),paste("95CI_upper", round(CIupper_UA_50_benchmark_OU,3)),paste("max:", round(UA_50_benchmark_OU_max,3)),paste("min:", round(UA_50_benchmark_OU_min,3)),paste("RB", round(RB_UA_50_benchmark_OU,3)),paste("RB_sd", round(sd_RB_UA_50_benchmark_OU,3)),paste("PB", round(PB_UA_50_benchmark_OU,3)),paste("CR", round(CR_UA_50_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_UA_50_benchmark_OU,3)) ,paste("AW", round(AW_UA_50_benchmark_OU,3)),paste("RMSE", round(RMSE_UA_50_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of UA20",paste("mean:", round(mean_UA_20_benchmark_RT,3)),paste("mean_sd:", round(sd_UA_20_benchmark_RT,3)),paste("SE:", round(UA_20_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_UA_20_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_UA_20_benchmark_RT,3)),paste("95CI_upper", round(CIupper_UA_20_benchmark_RT,3)),paste("max:", round(UA_20_benchmark_RT_max,3)),paste("min:", round(UA_20_benchmark_RT_min,3)),paste("RB", round(RB_UA_20_benchmark_RT,3)),paste("RB_sd", round(sd_RB_UA_20_benchmark_RT,3)),paste("PB", round(PB_UA_20_benchmark_RT,3)),paste("CR", round(CR_UA_20_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_UA_20_benchmark_RT,3)) ,paste("AW", round(AW_UA_20_benchmark_RT,3)),paste("RMSE", round(RMSE_UA_20_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of UA20",paste("mean:", round(mean_UA_20_benchmark_UT,3)),paste("mean_sd:", round(sd_UA_20_benchmark_UT,3)),paste("SE:", round(UA_20_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_UA_20_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_UA_20_benchmark_UT,3)),paste("95CI_upper", round(CIupper_UA_20_benchmark_UT,3)),paste("max:", round(UA_20_benchmark_UT_max,3)),paste("min:", round(UA_20_benchmark_UT_min,3)),paste("RB", round(RB_UA_20_benchmark_UT,3)),paste("RB_sd", round(sd_RB_UA_20_benchmark_UT,3)),paste("PB", round(PB_UA_20_benchmark_UT,3)),paste("CR", round(CR_UA_20_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_UA_20_benchmark_UT,3)) ,paste("AW", round(AW_UA_20_benchmark_UT,3)),paste("RMSE", round(RMSE_UA_20_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of UA20",paste("mean:", round(mean_UA_20_benchmark_SW,3)),paste("mean_sd:", round(sd_UA_20_benchmark_SW,3)),paste("SE:", round(UA_20_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_UA_20_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_UA_20_benchmark_SW,3)),paste("95CI_upper", round(CIupper_UA_20_benchmark_SW,3)),paste("max:", round(UA_20_benchmark_SW_max,3)),paste("min:", round(UA_20_benchmark_SW_min,3)),paste("RB", round(RB_UA_20_benchmark_SW,3)),paste("RB_sd", round(sd_RB_UA_20_benchmark_SW,3)),paste("PB", round(PB_UA_20_benchmark_SW,3)),paste("CR", round(CR_UA_20_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_UA_20_benchmark_SW,3)) ,paste("AW", round(AW_UA_20_benchmark_SW,3)),paste("RMSE", round(RMSE_UA_20_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of UA20",paste("mean:", round(mean_UA_20_benchmark_OU,3)),paste("mean_sd:", round(sd_UA_20_benchmark_OU,3)),paste("SE:", round(UA_20_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_UA_20_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_UA_20_benchmark_OU,3)),paste("95CI_upper", round(CIupper_UA_20_benchmark_OU,3)),paste("max:", round(UA_20_benchmark_OU_max,3)),paste("min:", round(UA_20_benchmark_OU_min,3)),paste("RB", round(RB_UA_20_benchmark_OU,3)),paste("RB_sd", round(sd_RB_UA_20_benchmark_OU,3)),paste("PB", round(PB_UA_20_benchmark_OU,3)),paste("CR", round(CR_UA_20_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_UA_20_benchmark_OU,3)) ,paste("AW", round(AW_UA_20_benchmark_OU,3)),paste("RMSE", round(RMSE_UA_20_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of UA5",paste("mean:", round(mean_UA_5_benchmark_RT,3)),paste("mean_sd:", round(sd_UA_5_benchmark_RT,3)),paste("SE:", round(UA_5_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_UA_5_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_UA_5_benchmark_RT,3)),paste("95CI_upper", round(CIupper_UA_5_benchmark_RT,3)),paste("max:", round(UA_5_benchmark_RT_max,3)),paste("min:", round(UA_5_benchmark_RT_min,3)),paste("RB", round(RB_UA_5_benchmark_RT,3)),paste("RB_sd", round(sd_RB_UA_5_benchmark_RT,3)),paste("PB", round(PB_UA_5_benchmark_RT,3)),paste("CR", round(CR_UA_5_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_UA_5_benchmark_RT,3)) ,paste("AW", round(AW_UA_5_benchmark_RT,3)),paste("RMSE", round(RMSE_UA_5_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of UA5",paste("mean:", round(mean_UA_5_benchmark_UT,3)),paste("mean_sd:", round(sd_UA_5_benchmark_UT,3)),paste("SE:", round(UA_5_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_UA_5_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_UA_5_benchmark_UT,3)),paste("95CI_upper", round(CIupper_UA_5_benchmark_UT,3)),paste("max:", round(UA_5_benchmark_UT_max,3)),paste("min:", round(UA_5_benchmark_UT_min,3)),paste("RB", round(RB_UA_5_benchmark_UT,3)),paste("RB_sd", round(sd_RB_UA_5_benchmark_UT,3)),paste("PB", round(PB_UA_5_benchmark_UT,3)),paste("CR", round(CR_UA_5_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_UA_5_benchmark_UT,3)) ,paste("AW", round(AW_UA_5_benchmark_UT,3)),paste("RMSE", round(RMSE_UA_5_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of UA5",paste("mean:", round(mean_UA_5_benchmark_SW,3)),paste("mean_sd:", round(sd_UA_5_benchmark_SW,3)),paste("SE:", round(UA_5_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_UA_5_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_UA_5_benchmark_SW,3)),paste("95CI_upper", round(CIupper_UA_5_benchmark_SW,3)),paste("max:", round(UA_5_benchmark_SW_max,3)),paste("min:", round(UA_5_benchmark_SW_min,3)),paste("RB", round(RB_UA_5_benchmark_SW,3)),paste("RB_sd", round(sd_RB_UA_5_benchmark_SW,3)),paste("PB", round(PB_UA_5_benchmark_SW,3)),paste("CR", round(CR_UA_5_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_UA_5_benchmark_SW,3)) ,paste("AW", round(AW_UA_5_benchmark_SW,3)),paste("RMSE", round(RMSE_UA_5_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of UA5",paste("mean:", round(mean_UA_5_benchmark_OU,3)),paste("mean_sd:", round(sd_UA_5_benchmark_OU,3)),paste("SE:", round(UA_5_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_UA_5_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_UA_5_benchmark_OU,3)),paste("95CI_upper", round(CIupper_UA_5_benchmark_OU,3)),paste("max:", round(UA_5_benchmark_OU_max,3)),paste("min:", round(UA_5_benchmark_OU_min,3)),paste("RB", round(RB_UA_5_benchmark_OU,3)),paste("RB_sd", round(sd_RB_UA_5_benchmark_OU,3)),paste("PB", round(PB_UA_5_benchmark_OU,3)),paste("CR", round(CR_UA_5_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_UA_5_benchmark_OU,3)) ,paste("AW", round(AW_UA_5_benchmark_OU,3)),paste("RMSE", round(RMSE_UA_5_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of MA80",paste("mean:", round(mean_MA_80_benchmark_RT,3)),paste("mean_sd:", round(sd_MA_80_benchmark_RT,3)),paste("SE:", round(MA_80_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_MA_80_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_MA_80_benchmark_RT,3)),paste("95CI_upper", round(CIupper_MA_80_benchmark_RT,3)),paste("max:", round(MA_80_benchmark_RT_max,3)),paste("min:", round(MA_80_benchmark_RT_min,3)),paste("RB", round(RB_MA_80_benchmark_RT,3)),paste("RB_sd", round(sd_RB_MA_80_benchmark_RT,3)),paste("PB", round(PB_MA_80_benchmark_RT,3)),paste("CR", round(CR_MA_80_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_MA_80_benchmark_RT,3)) ,paste("AW", round(AW_MA_80_benchmark_RT,3)),paste("RMSE", round(RMSE_MA_80_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of MA80",paste("mean:", round(mean_MA_80_benchmark_UT,3)),paste("mean_sd:", round(sd_MA_80_benchmark_UT,3)),paste("SE:", round(MA_80_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_MA_80_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_MA_80_benchmark_UT,3)),paste("95CI_upper", round(CIupper_MA_80_benchmark_UT,3)),paste("max:", round(MA_80_benchmark_UT_max,3)),paste("min:", round(MA_80_benchmark_UT_min,3)),paste("RB", round(RB_MA_80_benchmark_UT,3)),paste("RB_sd", round(sd_RB_MA_80_benchmark_UT,3)),paste("PB", round(PB_MA_80_benchmark_UT,3)),paste("CR", round(CR_MA_80_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_MA_80_benchmark_UT,3)) ,paste("AW", round(AW_MA_80_benchmark_UT,3)),paste("RMSE", round(RMSE_MA_80_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of MA80",paste("mean:", round(mean_MA_80_benchmark_SW,3)),paste("mean_sd:", round(sd_MA_80_benchmark_SW,3)),paste("SE:", round(MA_80_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_MA_80_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_MA_80_benchmark_SW,3)),paste("95CI_upper", round(CIupper_MA_80_benchmark_SW,3)),paste("max:", round(MA_80_benchmark_SW_max,3)),paste("min:", round(MA_80_benchmark_SW_min,3)),paste("RB", round(RB_MA_80_benchmark_SW,3)),paste("RB_sd", round(sd_RB_MA_80_benchmark_SW,3)),paste("PB", round(PB_MA_80_benchmark_SW,3)),paste("CR", round(CR_MA_80_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_MA_80_benchmark_SW,3)) ,paste("AW", round(AW_MA_80_benchmark_SW,3)),paste("RMSE", round(RMSE_MA_80_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of MA80",paste("mean:", round(mean_MA_80_benchmark_OU,3)),paste("mean_sd:", round(sd_MA_80_benchmark_OU,3)),paste("SE:", round(MA_80_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_MA_80_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_MA_80_benchmark_OU,3)),paste("95CI_upper", round(CIupper_MA_80_benchmark_OU,3)),paste("max:", round(MA_80_benchmark_OU_max,3)),paste("min:", round(MA_80_benchmark_OU_min,3)),paste("RB", round(RB_MA_80_benchmark_OU,3)),paste("RB_sd", round(sd_RB_MA_80_benchmark_OU,3)),paste("PB", round(PB_MA_80_benchmark_OU,3)),paste("CR", round(CR_MA_80_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_MA_80_benchmark_OU,3)) ,paste("AW", round(AW_MA_80_benchmark_OU,3)),paste("RMSE", round(RMSE_MA_80_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of MA50",paste("mean:", round(mean_MA_50_benchmark_RT,3)),paste("mean_sd:", round(sd_MA_50_benchmark_RT,3)),paste("SE:", round(MA_50_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_MA_50_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_MA_50_benchmark_RT,3)),paste("95CI_upper", round(CIupper_MA_50_benchmark_RT,3)),paste("max:", round(MA_50_benchmark_RT_max,3)),paste("min:", round(MA_50_benchmark_RT_min,3)),paste("RB", round(RB_MA_50_benchmark_RT,3)),paste("RB_sd", round(sd_RB_MA_50_benchmark_RT,3)),paste("PB", round(PB_MA_50_benchmark_RT,3)),paste("CR", round(CR_MA_50_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_MA_50_benchmark_RT,3)) ,paste("AW", round(AW_MA_50_benchmark_RT,3)),paste("RMSE", round(RMSE_MA_50_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of MA50",paste("mean:", round(mean_MA_50_benchmark_UT,3)),paste("mean_sd:", round(sd_MA_50_benchmark_UT,3)),paste("SE:", round(MA_50_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_MA_50_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_MA_50_benchmark_UT,3)),paste("95CI_upper", round(CIupper_MA_50_benchmark_UT,3)),paste("max:", round(MA_50_benchmark_UT_max,3)),paste("min:", round(MA_50_benchmark_UT_min,3)),paste("RB", round(RB_MA_50_benchmark_UT,3)),paste("RB_sd", round(sd_RB_MA_50_benchmark_UT,3)),paste("PB", round(PB_MA_50_benchmark_UT,3)),paste("CR", round(CR_MA_50_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_MA_50_benchmark_UT,3)) ,paste("AW", round(AW_MA_50_benchmark_UT,3)),paste("RMSE", round(RMSE_MA_50_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of MA50",paste("mean:", round(mean_MA_50_benchmark_SW,3)),paste("mean_sd:", round(sd_MA_50_benchmark_SW,3)),paste("SE:", round(MA_50_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_MA_50_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_MA_50_benchmark_SW,3)),paste("95CI_upper", round(CIupper_MA_50_benchmark_SW,3)),paste("max:", round(MA_50_benchmark_SW_max,3)),paste("min:", round(MA_50_benchmark_SW_min,3)),paste("RB", round(RB_MA_50_benchmark_SW,3)),paste("RB_sd", round(sd_RB_MA_50_benchmark_SW,3)),paste("PB", round(PB_MA_50_benchmark_SW,3)),paste("CR", round(CR_MA_50_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_MA_50_benchmark_SW,3)) ,paste("AW", round(AW_MA_50_benchmark_SW,3)),paste("RMSE", round(RMSE_MA_50_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of MA50",paste("mean:", round(mean_MA_50_benchmark_OU,3)),paste("mean_sd:", round(sd_MA_50_benchmark_OU,3)),paste("SE:", round(MA_50_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_MA_50_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_MA_50_benchmark_OU,3)),paste("95CI_upper", round(CIupper_MA_50_benchmark_OU,3)),paste("max:", round(MA_50_benchmark_OU_max,3)),paste("min:", round(MA_50_benchmark_OU_min,3)),paste("RB", round(RB_MA_50_benchmark_OU,3)),paste("RB_sd", round(sd_RB_MA_50_benchmark_OU,3)),paste("PB", round(PB_MA_50_benchmark_OU,3)),paste("CR", round(CR_MA_50_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_MA_50_benchmark_OU,3)) ,paste("AW", round(AW_MA_50_benchmark_OU,3)),paste("RMSE", round(RMSE_MA_50_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of MA20",paste("mean:", round(mean_MA_20_benchmark_RT,3)),paste("mean_sd:", round(sd_MA_20_benchmark_RT,3)),paste("SE:", round(MA_20_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_MA_20_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_MA_20_benchmark_RT,3)),paste("95CI_upper", round(CIupper_MA_20_benchmark_RT,3)),paste("max:", round(MA_20_benchmark_RT_max,3)),paste("min:", round(MA_20_benchmark_RT_min,3)),paste("RB", round(RB_MA_20_benchmark_RT,3)),paste("RB_sd", round(sd_RB_MA_20_benchmark_RT,3)),paste("PB", round(PB_MA_20_benchmark_RT,3)),paste("CR", round(CR_MA_20_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_MA_20_benchmark_RT,3)) ,paste("AW", round(AW_MA_20_benchmark_RT,3)),paste("RMSE", round(RMSE_MA_20_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of MA20",paste("mean:", round(mean_MA_20_benchmark_UT,3)),paste("mean_sd:", round(sd_MA_20_benchmark_UT,3)),paste("SE:", round(MA_20_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_MA_20_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_MA_20_benchmark_UT,3)),paste("95CI_upper", round(CIupper_MA_20_benchmark_UT,3)),paste("max:", round(MA_20_benchmark_UT_max,3)),paste("min:", round(MA_20_benchmark_UT_min,3)),paste("RB", round(RB_MA_20_benchmark_UT,3)),paste("RB_sd", round(sd_RB_MA_20_benchmark_UT,3)),paste("PB", round(PB_MA_20_benchmark_UT,3)),paste("CR", round(CR_MA_20_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_MA_20_benchmark_UT,3)) ,paste("AW", round(AW_MA_20_benchmark_UT,3)),paste("RMSE", round(RMSE_MA_20_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of MA20",paste("mean:", round(mean_MA_20_benchmark_SW,3)),paste("mean_sd:", round(sd_MA_20_benchmark_SW,3)),paste("SE:", round(MA_20_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_MA_20_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_MA_20_benchmark_SW,3)),paste("95CI_upper", round(CIupper_MA_20_benchmark_SW,3)),paste("max:", round(MA_20_benchmark_SW_max,3)),paste("min:", round(MA_20_benchmark_SW_min,3)),paste("RB", round(RB_MA_20_benchmark_SW,3)),paste("RB_sd", round(sd_RB_MA_20_benchmark_SW,3)),paste("PB", round(PB_MA_20_benchmark_SW,3)),paste("CR", round(CR_MA_20_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_MA_20_benchmark_SW,3)) ,paste("AW", round(AW_MA_20_benchmark_SW,3)),paste("RMSE", round(RMSE_MA_20_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of MA20",paste("mean:", round(mean_MA_20_benchmark_OU,3)),paste("mean_sd:", round(sd_MA_20_benchmark_OU,3)),paste("SE:", round(MA_20_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_MA_20_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_MA_20_benchmark_OU,3)),paste("95CI_upper", round(CIupper_MA_20_benchmark_OU,3)),paste("max:", round(MA_20_benchmark_OU_max,3)),paste("min:", round(MA_20_benchmark_OU_min,3)),paste("RB", round(RB_MA_20_benchmark_OU,3)),paste("RB_sd", round(sd_RB_MA_20_benchmark_OU,3)),paste("PB", round(PB_MA_20_benchmark_OU,3)),paste("CR", round(CR_MA_20_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_MA_20_benchmark_OU,3)) ,paste("AW", round(AW_MA_20_benchmark_OU,3)),paste("RMSE", round(RMSE_MA_20_benchmark_OU,3))))
  print(c("RT Benchmark Proportion of MA5",paste("mean:", round(mean_MA_5_benchmark_RT,3)),paste("mean_sd:", round(sd_MA_5_benchmark_RT,3)),paste("SE:", round(MA_5_benchmark_RT_SE,3)),paste("SE_sd:", round(sd_MA_5_benchmark_RT_SE,3)),paste("95CI_lower", round(CIlower_MA_5_benchmark_RT,3)),paste("95CI_upper", round(CIupper_MA_5_benchmark_RT,3)),paste("max:", round(MA_5_benchmark_RT_max,3)),paste("min:", round(MA_5_benchmark_RT_min,3)),paste("RB", round(RB_MA_5_benchmark_RT,3)),paste("RB_sd", round(sd_RB_MA_5_benchmark_RT,3)),paste("PB", round(PB_MA_5_benchmark_RT,3)),paste("CR", round(CR_MA_5_benchmark_RT,3)) ,paste("CR_sd", round(sd_CR_MA_5_benchmark_RT,3)) ,paste("AW", round(AW_MA_5_benchmark_RT,3)),paste("RMSE", round(RMSE_MA_5_benchmark_RT,3))))
  print(c("UT Benchmark Proportion of MA5",paste("mean:", round(mean_MA_5_benchmark_UT,3)),paste("mean_sd:", round(sd_MA_5_benchmark_UT,3)),paste("SE:", round(MA_5_benchmark_UT_SE,3)),paste("SE_sd:", round(sd_MA_5_benchmark_UT_SE,3)),paste("95CI_lower", round(CIlower_MA_5_benchmark_UT,3)),paste("95CI_upper", round(CIupper_MA_5_benchmark_UT,3)),paste("max:", round(MA_5_benchmark_UT_max,3)),paste("min:", round(MA_5_benchmark_UT_min,3)),paste("RB", round(RB_MA_5_benchmark_UT,3)),paste("RB_sd", round(sd_RB_MA_5_benchmark_UT,3)),paste("PB", round(PB_MA_5_benchmark_UT,3)),paste("CR", round(CR_MA_5_benchmark_UT,3)) ,paste("CR_sd", round(sd_CR_MA_5_benchmark_UT,3)) ,paste("AW", round(AW_MA_5_benchmark_UT,3)),paste("RMSE", round(RMSE_MA_5_benchmark_UT,3))))
  print(c("SW Benchmark Proportion of MA5",paste("mean:", round(mean_MA_5_benchmark_SW,3)),paste("mean_sd:", round(sd_MA_5_benchmark_SW,3)),paste("SE:", round(MA_5_benchmark_SW_SE,3)),paste("SE_sd:", round(sd_MA_5_benchmark_SW_SE,3)),paste("95CI_lower", round(CIlower_MA_5_benchmark_SW,3)),paste("95CI_upper", round(CIupper_MA_5_benchmark_SW,3)),paste("max:", round(MA_5_benchmark_SW_max,3)),paste("min:", round(MA_5_benchmark_SW_min,3)),paste("RB", round(RB_MA_5_benchmark_SW,3)),paste("RB_sd", round(sd_RB_MA_5_benchmark_SW,3)),paste("PB", round(PB_MA_5_benchmark_SW,3)),paste("CR", round(CR_MA_5_benchmark_SW,3)) ,paste("CR_sd", round(sd_CR_MA_5_benchmark_SW,3)) ,paste("AW", round(AW_MA_5_benchmark_SW,3)),paste("RMSE", round(RMSE_MA_5_benchmark_SW,3))))
  print(c("OU Benchmark Proportion of MA5",paste("mean:", round(mean_MA_5_benchmark_OU,3)),paste("mean_sd:", round(sd_MA_5_benchmark_OU,3)),paste("SE:", round(MA_5_benchmark_OU_SE,3)),paste("SE_sd:", round(sd_MA_5_benchmark_OU_SE,3)),paste("95CI_lower", round(CIlower_MA_5_benchmark_OU,3)),paste("95CI_upper", round(CIupper_MA_5_benchmark_OU,3)),paste("max:", round(MA_5_benchmark_OU_max,3)),paste("min:", round(MA_5_benchmark_OU_min,3)),paste("RB", round(RB_MA_5_benchmark_OU,3)),paste("RB_sd", round(sd_RB_MA_5_benchmark_OU,3)),paste("PB", round(PB_MA_5_benchmark_OU,3)),paste("CR", round(CR_MA_5_benchmark_OU,3)) ,paste("CR_sd", round(sd_CR_MA_5_benchmark_OU,3)) ,paste("AW", round(AW_MA_5_benchmark_OU,3)),paste("RMSE", round(RMSE_MA_5_benchmark_OU,3))))
}

#mice SI print
{
  print(c("RT UASI80 mice imputation",paste("mean:", round(mean_mice_UASI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_UASI80_RT_pred,3)),paste("SE:", round(mean_mice_UASI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_UASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI80_RT_pred,3)),paste("max:", round(mice_UASI80_RT_pred_max,3)),paste("min:", round(mice_UASI80_RT_pred_min,3)),paste("RB", round(RB_mice_UASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_RT_pred,3)),paste("PB", round(PB_mice_UASI80_RT_pred,3)),paste("CR", round(CR_mice_UASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI80_RT_pred,3)) ,paste("AW", round(AW_mice_UASI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_UASI80_RT_pred,3))))
  print(c("UT UASI80 mice imputation",paste("mean:", round(mean_mice_UASI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_UASI80_UT_pred,3)),paste("SE:", round(mean_mice_UASI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_UASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI80_UT_pred,3)),paste("max:", round(mice_UASI80_UT_pred_max,3)),paste("min:", round(mice_UASI80_UT_pred_min,3)),paste("RB", round(RB_mice_UASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_UT_pred,3)),paste("PB", round(PB_mice_UASI80_UT_pred,3)),paste("CR", round(CR_mice_UASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI80_UT_pred,3)) ,paste("AW", round(AW_mice_UASI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_UASI80_UT_pred,3))))
  print(c("SW UASI80 mice imputation",paste("mean:", round(mean_mice_UASI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_UASI80_SW_pred,3)),paste("SE:", round(mean_mice_UASI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_UASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI80_SW_pred,3)),paste("max:", round(mice_UASI80_SW_pred_max,3)),paste("min:", round(mice_UASI80_SW_pred_min,3)),paste("RB", round(RB_mice_UASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_SW_pred,3)),paste("PB", round(PB_mice_UASI80_SW_pred,3)),paste("CR", round(CR_mice_UASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI80_SW_pred,3)) ,paste("AW", round(AW_mice_UASI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_UASI80_SW_pred,3))))
  print(c("OU UASI80 mice imputation",paste("mean:", round(mean_mice_UASI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_UASI80_OU_pred,3)),paste("SE:", round(mean_mice_UASI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_UASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI80_OU_pred,3)),paste("max:", round(mice_UASI80_OU_pred_max,3)),paste("min:", round(mice_UASI80_OU_pred_min,3)),paste("RB", round(RB_mice_UASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_OU_pred,3)),paste("PB", round(PB_mice_UASI80_OU_pred,3)),paste("CR", round(CR_mice_UASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI80_OU_pred,3)) ,paste("AW", round(AW_mice_UASI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_UASI80_OU_pred,3))))
  
  print(c("RT UASI50 mice imputation",paste("mean:", round(mean_mice_UASI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_UASI50_RT_pred,3)),paste("SE:", round(mean_mice_UASI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_UASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI50_RT_pred,3)),paste("max:", round(mice_UASI50_RT_pred_max,3)),paste("min:", round(mice_UASI50_RT_pred_min,3)),paste("RB", round(RB_mice_UASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_RT_pred,3)),paste("PB", round(PB_mice_UASI50_RT_pred,3)),paste("CR", round(CR_mice_UASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI50_RT_pred,3)) ,paste("AW", round(AW_mice_UASI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_UASI50_RT_pred,3))))
  print(c("UT UASI50 mice imputation",paste("mean:", round(mean_mice_UASI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_UASI50_UT_pred,3)),paste("SE:", round(mean_mice_UASI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_UASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI50_UT_pred,3)),paste("max:", round(mice_UASI50_UT_pred_max,3)),paste("min:", round(mice_UASI50_UT_pred_min,3)),paste("RB", round(RB_mice_UASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_UT_pred,3)),paste("PB", round(PB_mice_UASI50_UT_pred,3)),paste("CR", round(CR_mice_UASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI50_UT_pred,3)) ,paste("AW", round(AW_mice_UASI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_UASI50_UT_pred,3))))
  print(c("SW UASI50 mice imputation",paste("mean:", round(mean_mice_UASI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_UASI50_SW_pred,3)),paste("SE:", round(mean_mice_UASI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_UASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI50_SW_pred,3)),paste("max:", round(mice_UASI50_SW_pred_max,3)),paste("min:", round(mice_UASI50_SW_pred_min,3)),paste("RB", round(RB_mice_UASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_SW_pred,3)),paste("PB", round(PB_mice_UASI50_SW_pred,3)),paste("CR", round(CR_mice_UASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI50_SW_pred,3)) ,paste("AW", round(AW_mice_UASI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_UASI50_SW_pred,3))))
  print(c("OU UASI50 mice imputation",paste("mean:", round(mean_mice_UASI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_UASI50_OU_pred,3)),paste("SE:", round(mean_mice_UASI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_UASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI50_OU_pred,3)),paste("max:", round(mice_UASI50_OU_pred_max,3)),paste("min:", round(mice_UASI50_OU_pred_min,3)),paste("RB", round(RB_mice_UASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_OU_pred,3)),paste("PB", round(PB_mice_UASI50_OU_pred,3)),paste("CR", round(CR_mice_UASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI50_OU_pred,3)) ,paste("AW", round(AW_mice_UASI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_UASI50_OU_pred,3))))
  
  print(c("RT UASI20 mice imputation",paste("mean:", round(mean_mice_UASI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_UASI20_RT_pred,3)),paste("SE:", round(mean_mice_UASI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_UASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI20_RT_pred,3)),paste("max:", round(mice_UASI20_RT_pred_max,3)),paste("min:", round(mice_UASI20_RT_pred_min,3)),paste("RB", round(RB_mice_UASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_RT_pred,3)),paste("PB", round(PB_mice_UASI20_RT_pred,3)),paste("CR", round(CR_mice_UASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI20_RT_pred,3)) ,paste("AW", round(AW_mice_UASI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_UASI20_RT_pred,3))))
  print(c("UT UASI20 mice imputation",paste("mean:", round(mean_mice_UASI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_UASI20_UT_pred,3)),paste("SE:", round(mean_mice_UASI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_UASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI20_UT_pred,3)),paste("max:", round(mice_UASI20_UT_pred_max,3)),paste("min:", round(mice_UASI20_UT_pred_min,3)),paste("RB", round(RB_mice_UASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_UT_pred,3)),paste("PB", round(PB_mice_UASI20_UT_pred,3)),paste("CR", round(CR_mice_UASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI20_UT_pred,3)) ,paste("AW", round(AW_mice_UASI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_UASI20_UT_pred,3))))
  print(c("SW UASI20 mice imputation",paste("mean:", round(mean_mice_UASI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_UASI20_SW_pred,3)),paste("SE:", round(mean_mice_UASI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_UASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI20_SW_pred,3)),paste("max:", round(mice_UASI20_SW_pred_max,3)),paste("min:", round(mice_UASI20_SW_pred_min,3)),paste("RB", round(RB_mice_UASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_SW_pred,3)),paste("PB", round(PB_mice_UASI20_SW_pred,3)),paste("CR", round(CR_mice_UASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI20_SW_pred,3)) ,paste("AW", round(AW_mice_UASI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_UASI20_SW_pred,3))))
  print(c("OU UASI20 mice imputation",paste("mean:", round(mean_mice_UASI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_UASI20_OU_pred,3)),paste("SE:", round(mean_mice_UASI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_UASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI20_OU_pred,3)),paste("max:", round(mice_UASI20_OU_pred_max,3)),paste("min:", round(mice_UASI20_OU_pred_min,3)),paste("RB", round(RB_mice_UASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_OU_pred,3)),paste("PB", round(PB_mice_UASI20_OU_pred,3)),paste("CR", round(CR_mice_UASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI20_OU_pred,3)) ,paste("AW", round(AW_mice_UASI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_UASI20_OU_pred,3))))
  
  print(c("RT UASI5 mice imputation",paste("mean:", round(mean_mice_UASI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_UASI5_RT_pred,3)),paste("SE:", round(mean_mice_UASI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_UASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI5_RT_pred,3)),paste("max:", round(mice_UASI5_RT_pred_max,3)),paste("min:", round(mice_UASI5_RT_pred_min,3)),paste("RB", round(RB_mice_UASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_RT_pred,3)),paste("PB", round(PB_mice_UASI5_RT_pred,3)),paste("CR", round(CR_mice_UASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI5_RT_pred,3)) ,paste("AW", round(AW_mice_UASI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_UASI5_RT_pred,3))))
  print(c("UT UASI5 mice imputation",paste("mean:", round(mean_mice_UASI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_UASI5_UT_pred,3)),paste("SE:", round(mean_mice_UASI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_UASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI5_UT_pred,3)),paste("max:", round(mice_UASI5_UT_pred_max,3)),paste("min:", round(mice_UASI5_UT_pred_min,3)),paste("RB", round(RB_mice_UASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_UT_pred,3)),paste("PB", round(PB_mice_UASI5_UT_pred,3)),paste("CR", round(CR_mice_UASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI5_UT_pred,3)) ,paste("AW", round(AW_mice_UASI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_UASI5_UT_pred,3))))
  print(c("SW UASI5 mice imputation",paste("mean:", round(mean_mice_UASI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_UASI5_SW_pred,3)),paste("SE:", round(mean_mice_UASI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_UASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI5_SW_pred,3)),paste("max:", round(mice_UASI5_SW_pred_max,3)),paste("min:", round(mice_UASI5_SW_pred_min,3)),paste("RB", round(RB_mice_UASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_SW_pred,3)),paste("PB", round(PB_mice_UASI5_SW_pred,3)),paste("CR", round(CR_mice_UASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI5_SW_pred,3)) ,paste("AW", round(AW_mice_UASI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_UASI5_SW_pred,3))))
  print(c("OU UASI5 mice imputation",paste("mean:", round(mean_mice_UASI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_UASI5_OU_pred,3)),paste("SE:", round(mean_mice_UASI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_UASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UASI5_OU_pred,3)),paste("max:", round(mice_UASI5_OU_pred_max,3)),paste("min:", round(mice_UASI5_OU_pred_min,3)),paste("RB", round(RB_mice_UASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_OU_pred,3)),paste("PB", round(PB_mice_UASI5_OU_pred,3)),paste("CR", round(CR_mice_UASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UASI5_OU_pred,3)) ,paste("AW", round(AW_mice_UASI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_UASI5_OU_pred,3))))
  
  print(c("RT MASI80 mice imputation",paste("mean:", round(mean_mice_MASI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_MASI80_RT_pred,3)),paste("SE:", round(mean_mice_MASI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_MASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI80_RT_pred,3)),paste("max:", round(mice_MASI80_RT_pred_max,3)),paste("min:", round(mice_MASI80_RT_pred_min,3)),paste("RB", round(RB_mice_MASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_RT_pred,3)),paste("PB", round(PB_mice_MASI80_RT_pred,3)),paste("CR", round(CR_mice_MASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI80_RT_pred,3)) ,paste("AW", round(AW_mice_MASI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_MASI80_RT_pred,3))))
  print(c("UT MASI80 mice imputation",paste("mean:", round(mean_mice_MASI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_MASI80_UT_pred,3)),paste("SE:", round(mean_mice_MASI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_MASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI80_UT_pred,3)),paste("max:", round(mice_MASI80_UT_pred_max,3)),paste("min:", round(mice_MASI80_UT_pred_min,3)),paste("RB", round(RB_mice_MASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_UT_pred,3)),paste("PB", round(PB_mice_MASI80_UT_pred,3)),paste("CR", round(CR_mice_MASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI80_UT_pred,3)) ,paste("AW", round(AW_mice_MASI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_MASI80_UT_pred,3))))
  print(c("SW MASI80 mice imputation",paste("mean:", round(mean_mice_MASI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_MASI80_SW_pred,3)),paste("SE:", round(mean_mice_MASI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_MASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI80_SW_pred,3)),paste("max:", round(mice_MASI80_SW_pred_max,3)),paste("min:", round(mice_MASI80_SW_pred_min,3)),paste("RB", round(RB_mice_MASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_SW_pred,3)),paste("PB", round(PB_mice_MASI80_SW_pred,3)),paste("CR", round(CR_mice_MASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI80_SW_pred,3)) ,paste("AW", round(AW_mice_MASI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_MASI80_SW_pred,3))))
  print(c("OU MASI80 mice imputation",paste("mean:", round(mean_mice_MASI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_MASI80_OU_pred,3)),paste("SE:", round(mean_mice_MASI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_MASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI80_OU_pred,3)),paste("max:", round(mice_MASI80_OU_pred_max,3)),paste("min:", round(mice_MASI80_OU_pred_min,3)),paste("RB", round(RB_mice_MASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_OU_pred,3)),paste("PB", round(PB_mice_MASI80_OU_pred,3)),paste("CR", round(CR_mice_MASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI80_OU_pred,3)) ,paste("AW", round(AW_mice_MASI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_MASI80_OU_pred,3))))
  
  print(c("RT MASI50 mice imputation",paste("mean:", round(mean_mice_MASI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_MASI50_RT_pred,3)),paste("SE:", round(mean_mice_MASI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_MASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI50_RT_pred,3)),paste("max:", round(mice_MASI50_RT_pred_max,3)),paste("min:", round(mice_MASI50_RT_pred_min,3)),paste("RB", round(RB_mice_MASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_RT_pred,3)),paste("PB", round(PB_mice_MASI50_RT_pred,3)),paste("CR", round(CR_mice_MASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI50_RT_pred,3)) ,paste("AW", round(AW_mice_MASI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_MASI50_RT_pred,3))))
  print(c("UT MASI50 mice imputation",paste("mean:", round(mean_mice_MASI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_MASI50_UT_pred,3)),paste("SE:", round(mean_mice_MASI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_MASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI50_UT_pred,3)),paste("max:", round(mice_MASI50_UT_pred_max,3)),paste("min:", round(mice_MASI50_UT_pred_min,3)),paste("RB", round(RB_mice_MASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_UT_pred,3)),paste("PB", round(PB_mice_MASI50_UT_pred,3)),paste("CR", round(CR_mice_MASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI50_UT_pred,3)) ,paste("AW", round(AW_mice_MASI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_MASI50_UT_pred,3))))
  print(c("SW MASI50 mice imputation",paste("mean:", round(mean_mice_MASI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_MASI50_SW_pred,3)),paste("SE:", round(mean_mice_MASI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_MASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI50_SW_pred,3)),paste("max:", round(mice_MASI50_SW_pred_max,3)),paste("min:", round(mice_MASI50_SW_pred_min,3)),paste("RB", round(RB_mice_MASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_SW_pred,3)),paste("PB", round(PB_mice_MASI50_SW_pred,3)),paste("CR", round(CR_mice_MASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI50_SW_pred,3)) ,paste("AW", round(AW_mice_MASI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_MASI50_SW_pred,3))))
  print(c("OU MASI50 mice imputation",paste("mean:", round(mean_mice_MASI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_MASI50_OU_pred,3)),paste("SE:", round(mean_mice_MASI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_MASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI50_OU_pred,3)),paste("max:", round(mice_MASI50_OU_pred_max,3)),paste("min:", round(mice_MASI50_OU_pred_min,3)),paste("RB", round(RB_mice_MASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_OU_pred,3)),paste("PB", round(PB_mice_MASI50_OU_pred,3)),paste("CR", round(CR_mice_MASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI50_OU_pred,3)) ,paste("AW", round(AW_mice_MASI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_MASI50_OU_pred,3))))
  
  print(c("RT MASI20 mice imputation",paste("mean:", round(mean_mice_MASI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_MASI20_RT_pred,3)),paste("SE:", round(mean_mice_MASI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_MASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI20_RT_pred,3)),paste("max:", round(mice_MASI20_RT_pred_max,3)),paste("min:", round(mice_MASI20_RT_pred_min,3)),paste("RB", round(RB_mice_MASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_RT_pred,3)),paste("PB", round(PB_mice_MASI20_RT_pred,3)),paste("CR", round(CR_mice_MASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI20_RT_pred,3)) ,paste("AW", round(AW_mice_MASI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_MASI20_RT_pred,3))))
  print(c("UT MASI20 mice imputation",paste("mean:", round(mean_mice_MASI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_MASI20_UT_pred,3)),paste("SE:", round(mean_mice_MASI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_MASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI20_UT_pred,3)),paste("max:", round(mice_MASI20_UT_pred_max,3)),paste("min:", round(mice_MASI20_UT_pred_min,3)),paste("RB", round(RB_mice_MASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_UT_pred,3)),paste("PB", round(PB_mice_MASI20_UT_pred,3)),paste("CR", round(CR_mice_MASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI20_UT_pred,3)) ,paste("AW", round(AW_mice_MASI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_MASI20_UT_pred,3))))
  print(c("SW MASI20 mice imputation",paste("mean:", round(mean_mice_MASI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_MASI20_SW_pred,3)),paste("SE:", round(mean_mice_MASI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_MASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI20_SW_pred,3)),paste("max:", round(mice_MASI20_SW_pred_max,3)),paste("min:", round(mice_MASI20_SW_pred_min,3)),paste("RB", round(RB_mice_MASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_SW_pred,3)),paste("PB", round(PB_mice_MASI20_SW_pred,3)),paste("CR", round(CR_mice_MASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI20_SW_pred,3)) ,paste("AW", round(AW_mice_MASI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_MASI20_SW_pred,3))))
  print(c("OU MASI20 mice imputation",paste("mean:", round(mean_mice_MASI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_MASI20_OU_pred,3)),paste("SE:", round(mean_mice_MASI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_MASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI20_OU_pred,3)),paste("max:", round(mice_MASI20_OU_pred_max,3)),paste("min:", round(mice_MASI20_OU_pred_min,3)),paste("RB", round(RB_mice_MASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_OU_pred,3)),paste("PB", round(PB_mice_MASI20_OU_pred,3)),paste("CR", round(CR_mice_MASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI20_OU_pred,3)) ,paste("AW", round(AW_mice_MASI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_MASI20_OU_pred,3))))
  
  print(c("RT MASI5 mice imputation",paste("mean:", round(mean_mice_MASI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_MASI5_RT_pred,3)),paste("SE:", round(mean_mice_MASI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_MASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI5_RT_pred,3)),paste("max:", round(mice_MASI5_RT_pred_max,3)),paste("min:", round(mice_MASI5_RT_pred_min,3)),paste("RB", round(RB_mice_MASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_RT_pred,3)),paste("PB", round(PB_mice_MASI5_RT_pred,3)),paste("CR", round(CR_mice_MASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI5_RT_pred,3)) ,paste("AW", round(AW_mice_MASI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_MASI5_RT_pred,3))))
  print(c("UT MASI5 mice imputation",paste("mean:", round(mean_mice_MASI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_MASI5_UT_pred,3)),paste("SE:", round(mean_mice_MASI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_MASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI5_UT_pred,3)),paste("max:", round(mice_MASI5_UT_pred_max,3)),paste("min:", round(mice_MASI5_UT_pred_min,3)),paste("RB", round(RB_mice_MASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_UT_pred,3)),paste("PB", round(PB_mice_MASI5_UT_pred,3)),paste("CR", round(CR_mice_MASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI5_UT_pred,3)) ,paste("AW", round(AW_mice_MASI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_MASI5_UT_pred,3))))
  print(c("SW MASI5 mice imputation",paste("mean:", round(mean_mice_MASI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_MASI5_SW_pred,3)),paste("SE:", round(mean_mice_MASI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_MASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI5_SW_pred,3)),paste("max:", round(mice_MASI5_SW_pred_max,3)),paste("min:", round(mice_MASI5_SW_pred_min,3)),paste("RB", round(RB_mice_MASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_SW_pred,3)),paste("PB", round(PB_mice_MASI5_SW_pred,3)),paste("CR", round(CR_mice_MASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI5_SW_pred,3)) ,paste("AW", round(AW_mice_MASI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_MASI5_SW_pred,3))))
  print(c("OU MASI5 mice imputation",paste("mean:", round(mean_mice_MASI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_MASI5_OU_pred,3)),paste("SE:", round(mean_mice_MASI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_MASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MASI5_OU_pred,3)),paste("max:", round(mice_MASI5_OU_pred_max,3)),paste("min:", round(mice_MASI5_OU_pred_min,3)),paste("RB", round(RB_mice_MASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_OU_pred,3)),paste("PB", round(PB_mice_MASI5_OU_pred,3)),paste("CR", round(CR_mice_MASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MASI5_OU_pred,3)) ,paste("AW", round(AW_mice_MASI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_MASI5_OU_pred,3))))
}

#multinom SI print
{
  print(c("RT UASI80 multinom imputation",paste("mean:", round(mean_multinom_UASI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI80_RT_pred,3)),paste("SE:", round(mean_multinom_UASI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI80_RT_pred,3)),paste("max:", round(multinom_UASI80_RT_pred_max,3)),paste("min:", round(multinom_UASI80_RT_pred_min,3)),paste("RB", round(RB_multinom_UASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_RT_pred,3)),paste("PB", round(PB_multinom_UASI80_RT_pred,3)),paste("CR", round(CR_multinom_UASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI80_RT_pred,3)) ,paste("AW", round(AW_multinom_UASI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI80_RT_pred,3))))
  print(c("UT UASI80 multinom imputation",paste("mean:", round(mean_multinom_UASI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI80_UT_pred,3)),paste("SE:", round(mean_multinom_UASI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI80_UT_pred,3)),paste("max:", round(multinom_UASI80_UT_pred_max,3)),paste("min:", round(multinom_UASI80_UT_pred_min,3)),paste("RB", round(RB_multinom_UASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_UT_pred,3)),paste("PB", round(PB_multinom_UASI80_UT_pred,3)),paste("CR", round(CR_multinom_UASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI80_UT_pred,3)) ,paste("AW", round(AW_multinom_UASI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI80_UT_pred,3))))
  print(c("SW UASI80 multinom imputation",paste("mean:", round(mean_multinom_UASI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UASI80_SW_pred,3)),paste("SE:", round(mean_multinom_UASI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI80_SW_pred,3)),paste("max:", round(multinom_UASI80_SW_pred_max,3)),paste("min:", round(multinom_UASI80_SW_pred_min,3)),paste("RB", round(RB_multinom_UASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_SW_pred,3)),paste("PB", round(PB_multinom_UASI80_SW_pred,3)),paste("CR", round(CR_multinom_UASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI80_SW_pred,3)) ,paste("AW", round(AW_multinom_UASI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UASI80_SW_pred,3))))
  print(c("OU UASI80 multinom imputation",paste("mean:", round(mean_multinom_UASI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UASI80_OU_pred,3)),paste("SE:", round(mean_multinom_UASI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI80_OU_pred,3)),paste("max:", round(multinom_UASI80_OU_pred_max,3)),paste("min:", round(multinom_UASI80_OU_pred_min,3)),paste("RB", round(RB_multinom_UASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_OU_pred,3)),paste("PB", round(PB_multinom_UASI80_OU_pred,3)),paste("CR", round(CR_multinom_UASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI80_OU_pred,3)) ,paste("AW", round(AW_multinom_UASI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UASI80_OU_pred,3))))
  
  print(c("RT UASI50 multinom imputation",paste("mean:", round(mean_multinom_UASI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI50_RT_pred,3)),paste("SE:", round(mean_multinom_UASI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI50_RT_pred,3)),paste("max:", round(multinom_UASI50_RT_pred_max,3)),paste("min:", round(multinom_UASI50_RT_pred_min,3)),paste("RB", round(RB_multinom_UASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_RT_pred,3)),paste("PB", round(PB_multinom_UASI50_RT_pred,3)),paste("CR", round(CR_multinom_UASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI50_RT_pred,3)) ,paste("AW", round(AW_multinom_UASI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI50_RT_pred,3))))
  print(c("UT UASI50 multinom imputation",paste("mean:", round(mean_multinom_UASI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI50_UT_pred,3)),paste("SE:", round(mean_multinom_UASI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI50_UT_pred,3)),paste("max:", round(multinom_UASI50_UT_pred_max,3)),paste("min:", round(multinom_UASI50_UT_pred_min,3)),paste("RB", round(RB_multinom_UASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_UT_pred,3)),paste("PB", round(PB_multinom_UASI50_UT_pred,3)),paste("CR", round(CR_multinom_UASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI50_UT_pred,3)) ,paste("AW", round(AW_multinom_UASI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI50_UT_pred,3))))
  print(c("SW UASI50 multinom imputation",paste("mean:", round(mean_multinom_UASI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UASI50_SW_pred,3)),paste("SE:", round(mean_multinom_UASI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI50_SW_pred,3)),paste("max:", round(multinom_UASI50_SW_pred_max,3)),paste("min:", round(multinom_UASI50_SW_pred_min,3)),paste("RB", round(RB_multinom_UASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_SW_pred,3)),paste("PB", round(PB_multinom_UASI50_SW_pred,3)),paste("CR", round(CR_multinom_UASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI50_SW_pred,3)) ,paste("AW", round(AW_multinom_UASI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UASI50_SW_pred,3))))
  print(c("OU UASI50 multinom imputation",paste("mean:", round(mean_multinom_UASI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UASI50_OU_pred,3)),paste("SE:", round(mean_multinom_UASI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI50_OU_pred,3)),paste("max:", round(multinom_UASI50_OU_pred_max,3)),paste("min:", round(multinom_UASI50_OU_pred_min,3)),paste("RB", round(RB_multinom_UASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_OU_pred,3)),paste("PB", round(PB_multinom_UASI50_OU_pred,3)),paste("CR", round(CR_multinom_UASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI50_OU_pred,3)) ,paste("AW", round(AW_multinom_UASI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UASI50_OU_pred,3))))
  
  print(c("RT UASI20 multinom imputation",paste("mean:", round(mean_multinom_UASI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI20_RT_pred,3)),paste("SE:", round(mean_multinom_UASI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI20_RT_pred,3)),paste("max:", round(multinom_UASI20_RT_pred_max,3)),paste("min:", round(multinom_UASI20_RT_pred_min,3)),paste("RB", round(RB_multinom_UASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_RT_pred,3)),paste("PB", round(PB_multinom_UASI20_RT_pred,3)),paste("CR", round(CR_multinom_UASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI20_RT_pred,3)) ,paste("AW", round(AW_multinom_UASI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI20_RT_pred,3))))
  print(c("UT UASI20 multinom imputation",paste("mean:", round(mean_multinom_UASI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI20_UT_pred,3)),paste("SE:", round(mean_multinom_UASI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI20_UT_pred,3)),paste("max:", round(multinom_UASI20_UT_pred_max,3)),paste("min:", round(multinom_UASI20_UT_pred_min,3)),paste("RB", round(RB_multinom_UASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_UT_pred,3)),paste("PB", round(PB_multinom_UASI20_UT_pred,3)),paste("CR", round(CR_multinom_UASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI20_UT_pred,3)) ,paste("AW", round(AW_multinom_UASI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI20_UT_pred,3))))
  print(c("SW UASI20 multinom imputation",paste("mean:", round(mean_multinom_UASI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UASI20_SW_pred,3)),paste("SE:", round(mean_multinom_UASI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI20_SW_pred,3)),paste("max:", round(multinom_UASI20_SW_pred_max,3)),paste("min:", round(multinom_UASI20_SW_pred_min,3)),paste("RB", round(RB_multinom_UASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_SW_pred,3)),paste("PB", round(PB_multinom_UASI20_SW_pred,3)),paste("CR", round(CR_multinom_UASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI20_SW_pred,3)) ,paste("AW", round(AW_multinom_UASI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UASI20_SW_pred,3))))
  print(c("OU UASI20 multinom imputation",paste("mean:", round(mean_multinom_UASI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UASI20_OU_pred,3)),paste("SE:", round(mean_multinom_UASI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI20_OU_pred,3)),paste("max:", round(multinom_UASI20_OU_pred_max,3)),paste("min:", round(multinom_UASI20_OU_pred_min,3)),paste("RB", round(RB_multinom_UASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_OU_pred,3)),paste("PB", round(PB_multinom_UASI20_OU_pred,3)),paste("CR", round(CR_multinom_UASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI20_OU_pred,3)) ,paste("AW", round(AW_multinom_UASI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UASI20_OU_pred,3))))
  
  print(c("RT UASI5 multinom imputation",paste("mean:", round(mean_multinom_UASI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI5_RT_pred,3)),paste("SE:", round(mean_multinom_UASI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI5_RT_pred,3)),paste("max:", round(multinom_UASI5_RT_pred_max,3)),paste("min:", round(multinom_UASI5_RT_pred_min,3)),paste("RB", round(RB_multinom_UASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_RT_pred,3)),paste("PB", round(PB_multinom_UASI5_RT_pred,3)),paste("CR", round(CR_multinom_UASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI5_RT_pred,3)) ,paste("AW", round(AW_multinom_UASI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI5_RT_pred,3))))
  print(c("UT UASI5 multinom imputation",paste("mean:", round(mean_multinom_UASI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UASI5_UT_pred,3)),paste("SE:", round(mean_multinom_UASI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI5_UT_pred,3)),paste("max:", round(multinom_UASI5_UT_pred_max,3)),paste("min:", round(multinom_UASI5_UT_pred_min,3)),paste("RB", round(RB_multinom_UASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_UT_pred,3)),paste("PB", round(PB_multinom_UASI5_UT_pred,3)),paste("CR", round(CR_multinom_UASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI5_UT_pred,3)) ,paste("AW", round(AW_multinom_UASI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UASI5_UT_pred,3))))
  print(c("SW UASI5 multinom imputation",paste("mean:", round(mean_multinom_UASI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UASI5_SW_pred,3)),paste("SE:", round(mean_multinom_UASI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI5_SW_pred,3)),paste("max:", round(multinom_UASI5_SW_pred_max,3)),paste("min:", round(multinom_UASI5_SW_pred_min,3)),paste("RB", round(RB_multinom_UASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_SW_pred,3)),paste("PB", round(PB_multinom_UASI5_SW_pred,3)),paste("CR", round(CR_multinom_UASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI5_SW_pred,3)) ,paste("AW", round(AW_multinom_UASI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UASI5_SW_pred,3))))
  print(c("OU UASI5 multinom imputation",paste("mean:", round(mean_multinom_UASI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UASI5_OU_pred,3)),paste("SE:", round(mean_multinom_UASI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UASI5_OU_pred,3)),paste("max:", round(multinom_UASI5_OU_pred_max,3)),paste("min:", round(multinom_UASI5_OU_pred_min,3)),paste("RB", round(RB_multinom_UASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_OU_pred,3)),paste("PB", round(PB_multinom_UASI5_OU_pred,3)),paste("CR", round(CR_multinom_UASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UASI5_OU_pred,3)) ,paste("AW", round(AW_multinom_UASI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UASI5_OU_pred,3))))
  
  print(c("RT MASI80 multinom imputation",paste("mean:", round(mean_multinom_MASI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI80_RT_pred,3)),paste("SE:", round(mean_multinom_MASI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI80_RT_pred,3)),paste("max:", round(multinom_MASI80_RT_pred_max,3)),paste("min:", round(multinom_MASI80_RT_pred_min,3)),paste("RB", round(RB_multinom_MASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_RT_pred,3)),paste("PB", round(PB_multinom_MASI80_RT_pred,3)),paste("CR", round(CR_multinom_MASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI80_RT_pred,3)) ,paste("AW", round(AW_multinom_MASI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI80_RT_pred,3))))
  print(c("UT MASI80 multinom imputation",paste("mean:", round(mean_multinom_MASI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI80_UT_pred,3)),paste("SE:", round(mean_multinom_MASI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI80_UT_pred,3)),paste("max:", round(multinom_MASI80_UT_pred_max,3)),paste("min:", round(multinom_MASI80_UT_pred_min,3)),paste("RB", round(RB_multinom_MASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_UT_pred,3)),paste("PB", round(PB_multinom_MASI80_UT_pred,3)),paste("CR", round(CR_multinom_MASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI80_UT_pred,3)) ,paste("AW", round(AW_multinom_MASI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI80_UT_pred,3))))
  print(c("SW MASI80 multinom imputation",paste("mean:", round(mean_multinom_MASI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MASI80_SW_pred,3)),paste("SE:", round(mean_multinom_MASI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI80_SW_pred,3)),paste("max:", round(multinom_MASI80_SW_pred_max,3)),paste("min:", round(multinom_MASI80_SW_pred_min,3)),paste("RB", round(RB_multinom_MASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_SW_pred,3)),paste("PB", round(PB_multinom_MASI80_SW_pred,3)),paste("CR", round(CR_multinom_MASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI80_SW_pred,3)) ,paste("AW", round(AW_multinom_MASI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MASI80_SW_pred,3))))
  print(c("OU MASI80 multinom imputation",paste("mean:", round(mean_multinom_MASI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MASI80_OU_pred,3)),paste("SE:", round(mean_multinom_MASI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI80_OU_pred,3)),paste("max:", round(multinom_MASI80_OU_pred_max,3)),paste("min:", round(multinom_MASI80_OU_pred_min,3)),paste("RB", round(RB_multinom_MASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_OU_pred,3)),paste("PB", round(PB_multinom_MASI80_OU_pred,3)),paste("CR", round(CR_multinom_MASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI80_OU_pred,3)) ,paste("AW", round(AW_multinom_MASI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MASI80_OU_pred,3))))
  
  print(c("RT MASI50 multinom imputation",paste("mean:", round(mean_multinom_MASI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI50_RT_pred,3)),paste("SE:", round(mean_multinom_MASI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI50_RT_pred,3)),paste("max:", round(multinom_MASI50_RT_pred_max,3)),paste("min:", round(multinom_MASI50_RT_pred_min,3)),paste("RB", round(RB_multinom_MASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_RT_pred,3)),paste("PB", round(PB_multinom_MASI50_RT_pred,3)),paste("CR", round(CR_multinom_MASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI50_RT_pred,3)) ,paste("AW", round(AW_multinom_MASI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI50_RT_pred,3))))
  print(c("UT MASI50 multinom imputation",paste("mean:", round(mean_multinom_MASI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI50_UT_pred,3)),paste("SE:", round(mean_multinom_MASI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI50_UT_pred,3)),paste("max:", round(multinom_MASI50_UT_pred_max,3)),paste("min:", round(multinom_MASI50_UT_pred_min,3)),paste("RB", round(RB_multinom_MASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_UT_pred,3)),paste("PB", round(PB_multinom_MASI50_UT_pred,3)),paste("CR", round(CR_multinom_MASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI50_UT_pred,3)) ,paste("AW", round(AW_multinom_MASI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI50_UT_pred,3))))
  print(c("SW MASI50 multinom imputation",paste("mean:", round(mean_multinom_MASI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MASI50_SW_pred,3)),paste("SE:", round(mean_multinom_MASI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI50_SW_pred,3)),paste("max:", round(multinom_MASI50_SW_pred_max,3)),paste("min:", round(multinom_MASI50_SW_pred_min,3)),paste("RB", round(RB_multinom_MASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_SW_pred,3)),paste("PB", round(PB_multinom_MASI50_SW_pred,3)),paste("CR", round(CR_multinom_MASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI50_SW_pred,3)) ,paste("AW", round(AW_multinom_MASI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MASI50_SW_pred,3))))
  print(c("OU MASI50 multinom imputation",paste("mean:", round(mean_multinom_MASI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MASI50_OU_pred,3)),paste("SE:", round(mean_multinom_MASI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI50_OU_pred,3)),paste("max:", round(multinom_MASI50_OU_pred_max,3)),paste("min:", round(multinom_MASI50_OU_pred_min,3)),paste("RB", round(RB_multinom_MASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_OU_pred,3)),paste("PB", round(PB_multinom_MASI50_OU_pred,3)),paste("CR", round(CR_multinom_MASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI50_OU_pred,3)) ,paste("AW", round(AW_multinom_MASI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MASI50_OU_pred,3))))
  
  print(c("RT MASI20 multinom imputation",paste("mean:", round(mean_multinom_MASI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI20_RT_pred,3)),paste("SE:", round(mean_multinom_MASI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI20_RT_pred,3)),paste("max:", round(multinom_MASI20_RT_pred_max,3)),paste("min:", round(multinom_MASI20_RT_pred_min,3)),paste("RB", round(RB_multinom_MASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_RT_pred,3)),paste("PB", round(PB_multinom_MASI20_RT_pred,3)),paste("CR", round(CR_multinom_MASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI20_RT_pred,3)) ,paste("AW", round(AW_multinom_MASI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI20_RT_pred,3))))
  print(c("UT MASI20 multinom imputation",paste("mean:", round(mean_multinom_MASI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI20_UT_pred,3)),paste("SE:", round(mean_multinom_MASI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI20_UT_pred,3)),paste("max:", round(multinom_MASI20_UT_pred_max,3)),paste("min:", round(multinom_MASI20_UT_pred_min,3)),paste("RB", round(RB_multinom_MASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_UT_pred,3)),paste("PB", round(PB_multinom_MASI20_UT_pred,3)),paste("CR", round(CR_multinom_MASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI20_UT_pred,3)) ,paste("AW", round(AW_multinom_MASI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI20_UT_pred,3))))
  print(c("SW MASI20 multinom imputation",paste("mean:", round(mean_multinom_MASI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MASI20_SW_pred,3)),paste("SE:", round(mean_multinom_MASI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI20_SW_pred,3)),paste("max:", round(multinom_MASI20_SW_pred_max,3)),paste("min:", round(multinom_MASI20_SW_pred_min,3)),paste("RB", round(RB_multinom_MASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_SW_pred,3)),paste("PB", round(PB_multinom_MASI20_SW_pred,3)),paste("CR", round(CR_multinom_MASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI20_SW_pred,3)) ,paste("AW", round(AW_multinom_MASI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MASI20_SW_pred,3))))
  print(c("OU MASI20 multinom imputation",paste("mean:", round(mean_multinom_MASI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MASI20_OU_pred,3)),paste("SE:", round(mean_multinom_MASI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI20_OU_pred,3)),paste("max:", round(multinom_MASI20_OU_pred_max,3)),paste("min:", round(multinom_MASI20_OU_pred_min,3)),paste("RB", round(RB_multinom_MASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_OU_pred,3)),paste("PB", round(PB_multinom_MASI20_OU_pred,3)),paste("CR", round(CR_multinom_MASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI20_OU_pred,3)) ,paste("AW", round(AW_multinom_MASI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MASI20_OU_pred,3))))
  
  print(c("RT MASI5 multinom imputation",paste("mean:", round(mean_multinom_MASI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI5_RT_pred,3)),paste("SE:", round(mean_multinom_MASI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI5_RT_pred,3)),paste("max:", round(multinom_MASI5_RT_pred_max,3)),paste("min:", round(multinom_MASI5_RT_pred_min,3)),paste("RB", round(RB_multinom_MASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_RT_pred,3)),paste("PB", round(PB_multinom_MASI5_RT_pred,3)),paste("CR", round(CR_multinom_MASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI5_RT_pred,3)) ,paste("AW", round(AW_multinom_MASI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI5_RT_pred,3))))
  print(c("UT MASI5 multinom imputation",paste("mean:", round(mean_multinom_MASI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MASI5_UT_pred,3)),paste("SE:", round(mean_multinom_MASI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI5_UT_pred,3)),paste("max:", round(multinom_MASI5_UT_pred_max,3)),paste("min:", round(multinom_MASI5_UT_pred_min,3)),paste("RB", round(RB_multinom_MASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_UT_pred,3)),paste("PB", round(PB_multinom_MASI5_UT_pred,3)),paste("CR", round(CR_multinom_MASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI5_UT_pred,3)) ,paste("AW", round(AW_multinom_MASI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MASI5_UT_pred,3))))
  print(c("SW MASI5 multinom imputation",paste("mean:", round(mean_multinom_MASI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MASI5_SW_pred,3)),paste("SE:", round(mean_multinom_MASI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI5_SW_pred,3)),paste("max:", round(multinom_MASI5_SW_pred_max,3)),paste("min:", round(multinom_MASI5_SW_pred_min,3)),paste("RB", round(RB_multinom_MASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_SW_pred,3)),paste("PB", round(PB_multinom_MASI5_SW_pred,3)),paste("CR", round(CR_multinom_MASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI5_SW_pred,3)) ,paste("AW", round(AW_multinom_MASI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MASI5_SW_pred,3))))
  print(c("OU MASI5 multinom imputation",paste("mean:", round(mean_multinom_MASI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MASI5_OU_pred,3)),paste("SE:", round(mean_multinom_MASI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MASI5_OU_pred,3)),paste("max:", round(multinom_MASI5_OU_pred_max,3)),paste("min:", round(multinom_MASI5_OU_pred_min,3)),paste("RB", round(RB_multinom_MASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_OU_pred,3)),paste("PB", round(PB_multinom_MASI5_OU_pred,3)),paste("CR", round(CR_multinom_MASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MASI5_OU_pred,3)) ,paste("AW", round(AW_multinom_MASI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MASI5_OU_pred,3))))
}

#nnet SI print
{
  print(c("RT UASI80 nnet imputation",paste("mean:", round(mean_nnet_UASI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI80_RT_pred,3)),paste("SE:", round(mean_nnet_UASI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI80_RT_pred,3)),paste("max:", round(nnet_UASI80_RT_pred_max,3)),paste("min:", round(nnet_UASI80_RT_pred_min,3)),paste("RB", round(RB_nnet_UASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_RT_pred,3)),paste("PB", round(PB_nnet_UASI80_RT_pred,3)),paste("CR", round(CR_nnet_UASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI80_RT_pred,3)) ,paste("AW", round(AW_nnet_UASI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI80_RT_pred,3))))
  print(c("UT UASI80 nnet imputation",paste("mean:", round(mean_nnet_UASI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI80_UT_pred,3)),paste("SE:", round(mean_nnet_UASI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI80_UT_pred,3)),paste("max:", round(nnet_UASI80_UT_pred_max,3)),paste("min:", round(nnet_UASI80_UT_pred_min,3)),paste("RB", round(RB_nnet_UASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_UT_pred,3)),paste("PB", round(PB_nnet_UASI80_UT_pred,3)),paste("CR", round(CR_nnet_UASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI80_UT_pred,3)) ,paste("AW", round(AW_nnet_UASI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI80_UT_pred,3))))
  print(c("SW UASI80 nnet imputation",paste("mean:", round(mean_nnet_UASI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UASI80_SW_pred,3)),paste("SE:", round(mean_nnet_UASI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI80_SW_pred,3)),paste("max:", round(nnet_UASI80_SW_pred_max,3)),paste("min:", round(nnet_UASI80_SW_pred_min,3)),paste("RB", round(RB_nnet_UASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_SW_pred,3)),paste("PB", round(PB_nnet_UASI80_SW_pred,3)),paste("CR", round(CR_nnet_UASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI80_SW_pred,3)) ,paste("AW", round(AW_nnet_UASI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UASI80_SW_pred,3))))
  print(c("OU UASI80 nnet imputation",paste("mean:", round(mean_nnet_UASI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UASI80_OU_pred,3)),paste("SE:", round(mean_nnet_UASI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI80_OU_pred,3)),paste("max:", round(nnet_UASI80_OU_pred_max,3)),paste("min:", round(nnet_UASI80_OU_pred_min,3)),paste("RB", round(RB_nnet_UASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_OU_pred,3)),paste("PB", round(PB_nnet_UASI80_OU_pred,3)),paste("CR", round(CR_nnet_UASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI80_OU_pred,3)) ,paste("AW", round(AW_nnet_UASI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UASI80_OU_pred,3))))
  
  print(c("RT UASI50 nnet imputation",paste("mean:", round(mean_nnet_UASI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI50_RT_pred,3)),paste("SE:", round(mean_nnet_UASI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI50_RT_pred,3)),paste("max:", round(nnet_UASI50_RT_pred_max,3)),paste("min:", round(nnet_UASI50_RT_pred_min,3)),paste("RB", round(RB_nnet_UASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_RT_pred,3)),paste("PB", round(PB_nnet_UASI50_RT_pred,3)),paste("CR", round(CR_nnet_UASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI50_RT_pred,3)) ,paste("AW", round(AW_nnet_UASI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI50_RT_pred,3))))
  print(c("UT UASI50 nnet imputation",paste("mean:", round(mean_nnet_UASI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI50_UT_pred,3)),paste("SE:", round(mean_nnet_UASI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI50_UT_pred,3)),paste("max:", round(nnet_UASI50_UT_pred_max,3)),paste("min:", round(nnet_UASI50_UT_pred_min,3)),paste("RB", round(RB_nnet_UASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_UT_pred,3)),paste("PB", round(PB_nnet_UASI50_UT_pred,3)),paste("CR", round(CR_nnet_UASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI50_UT_pred,3)) ,paste("AW", round(AW_nnet_UASI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI50_UT_pred,3))))
  print(c("SW UASI50 nnet imputation",paste("mean:", round(mean_nnet_UASI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UASI50_SW_pred,3)),paste("SE:", round(mean_nnet_UASI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI50_SW_pred,3)),paste("max:", round(nnet_UASI50_SW_pred_max,3)),paste("min:", round(nnet_UASI50_SW_pred_min,3)),paste("RB", round(RB_nnet_UASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_SW_pred,3)),paste("PB", round(PB_nnet_UASI50_SW_pred,3)),paste("CR", round(CR_nnet_UASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI50_SW_pred,3)) ,paste("AW", round(AW_nnet_UASI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UASI50_SW_pred,3))))
  print(c("OU UASI50 nnet imputation",paste("mean:", round(mean_nnet_UASI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UASI50_OU_pred,3)),paste("SE:", round(mean_nnet_UASI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI50_OU_pred,3)),paste("max:", round(nnet_UASI50_OU_pred_max,3)),paste("min:", round(nnet_UASI50_OU_pred_min,3)),paste("RB", round(RB_nnet_UASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_OU_pred,3)),paste("PB", round(PB_nnet_UASI50_OU_pred,3)),paste("CR", round(CR_nnet_UASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI50_OU_pred,3)) ,paste("AW", round(AW_nnet_UASI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UASI50_OU_pred,3))))
  
  print(c("RT UASI20 nnet imputation",paste("mean:", round(mean_nnet_UASI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI20_RT_pred,3)),paste("SE:", round(mean_nnet_UASI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI20_RT_pred,3)),paste("max:", round(nnet_UASI20_RT_pred_max,3)),paste("min:", round(nnet_UASI20_RT_pred_min,3)),paste("RB", round(RB_nnet_UASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_RT_pred,3)),paste("PB", round(PB_nnet_UASI20_RT_pred,3)),paste("CR", round(CR_nnet_UASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI20_RT_pred,3)) ,paste("AW", round(AW_nnet_UASI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI20_RT_pred,3))))
  print(c("UT UASI20 nnet imputation",paste("mean:", round(mean_nnet_UASI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI20_UT_pred,3)),paste("SE:", round(mean_nnet_UASI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI20_UT_pred,3)),paste("max:", round(nnet_UASI20_UT_pred_max,3)),paste("min:", round(nnet_UASI20_UT_pred_min,3)),paste("RB", round(RB_nnet_UASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_UT_pred,3)),paste("PB", round(PB_nnet_UASI20_UT_pred,3)),paste("CR", round(CR_nnet_UASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI20_UT_pred,3)) ,paste("AW", round(AW_nnet_UASI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI20_UT_pred,3))))
  print(c("SW UASI20 nnet imputation",paste("mean:", round(mean_nnet_UASI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UASI20_SW_pred,3)),paste("SE:", round(mean_nnet_UASI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI20_SW_pred,3)),paste("max:", round(nnet_UASI20_SW_pred_max,3)),paste("min:", round(nnet_UASI20_SW_pred_min,3)),paste("RB", round(RB_nnet_UASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_SW_pred,3)),paste("PB", round(PB_nnet_UASI20_SW_pred,3)),paste("CR", round(CR_nnet_UASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI20_SW_pred,3)) ,paste("AW", round(AW_nnet_UASI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UASI20_SW_pred,3))))
  print(c("OU UASI20 nnet imputation",paste("mean:", round(mean_nnet_UASI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UASI20_OU_pred,3)),paste("SE:", round(mean_nnet_UASI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI20_OU_pred,3)),paste("max:", round(nnet_UASI20_OU_pred_max,3)),paste("min:", round(nnet_UASI20_OU_pred_min,3)),paste("RB", round(RB_nnet_UASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_OU_pred,3)),paste("PB", round(PB_nnet_UASI20_OU_pred,3)),paste("CR", round(CR_nnet_UASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI20_OU_pred,3)) ,paste("AW", round(AW_nnet_UASI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UASI20_OU_pred,3))))
  
  print(c("RT UASI5 nnet imputation",paste("mean:", round(mean_nnet_UASI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI5_RT_pred,3)),paste("SE:", round(mean_nnet_UASI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI5_RT_pred,3)),paste("max:", round(nnet_UASI5_RT_pred_max,3)),paste("min:", round(nnet_UASI5_RT_pred_min,3)),paste("RB", round(RB_nnet_UASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_RT_pred,3)),paste("PB", round(PB_nnet_UASI5_RT_pred,3)),paste("CR", round(CR_nnet_UASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI5_RT_pred,3)) ,paste("AW", round(AW_nnet_UASI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI5_RT_pred,3))))
  print(c("UT UASI5 nnet imputation",paste("mean:", round(mean_nnet_UASI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UASI5_UT_pred,3)),paste("SE:", round(mean_nnet_UASI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI5_UT_pred,3)),paste("max:", round(nnet_UASI5_UT_pred_max,3)),paste("min:", round(nnet_UASI5_UT_pred_min,3)),paste("RB", round(RB_nnet_UASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_UT_pred,3)),paste("PB", round(PB_nnet_UASI5_UT_pred,3)),paste("CR", round(CR_nnet_UASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI5_UT_pred,3)) ,paste("AW", round(AW_nnet_UASI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UASI5_UT_pred,3))))
  print(c("SW UASI5 nnet imputation",paste("mean:", round(mean_nnet_UASI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UASI5_SW_pred,3)),paste("SE:", round(mean_nnet_UASI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI5_SW_pred,3)),paste("max:", round(nnet_UASI5_SW_pred_max,3)),paste("min:", round(nnet_UASI5_SW_pred_min,3)),paste("RB", round(RB_nnet_UASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_SW_pred,3)),paste("PB", round(PB_nnet_UASI5_SW_pred,3)),paste("CR", round(CR_nnet_UASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI5_SW_pred,3)) ,paste("AW", round(AW_nnet_UASI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UASI5_SW_pred,3))))
  print(c("OU UASI5 nnet imputation",paste("mean:", round(mean_nnet_UASI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UASI5_OU_pred,3)),paste("SE:", round(mean_nnet_UASI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UASI5_OU_pred,3)),paste("max:", round(nnet_UASI5_OU_pred_max,3)),paste("min:", round(nnet_UASI5_OU_pred_min,3)),paste("RB", round(RB_nnet_UASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_OU_pred,3)),paste("PB", round(PB_nnet_UASI5_OU_pred,3)),paste("CR", round(CR_nnet_UASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UASI5_OU_pred,3)) ,paste("AW", round(AW_nnet_UASI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UASI5_OU_pred,3))))
  
  print(c("RT MASI80 nnet imputation",paste("mean:", round(mean_nnet_MASI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI80_RT_pred,3)),paste("SE:", round(mean_nnet_MASI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI80_RT_pred,3)),paste("max:", round(nnet_MASI80_RT_pred_max,3)),paste("min:", round(nnet_MASI80_RT_pred_min,3)),paste("RB", round(RB_nnet_MASI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_RT_pred,3)),paste("PB", round(PB_nnet_MASI80_RT_pred,3)),paste("CR", round(CR_nnet_MASI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI80_RT_pred,3)) ,paste("AW", round(AW_nnet_MASI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI80_RT_pred,3))))
  print(c("UT MASI80 nnet imputation",paste("mean:", round(mean_nnet_MASI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI80_UT_pred,3)),paste("SE:", round(mean_nnet_MASI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI80_UT_pred,3)),paste("max:", round(nnet_MASI80_UT_pred_max,3)),paste("min:", round(nnet_MASI80_UT_pred_min,3)),paste("RB", round(RB_nnet_MASI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_UT_pred,3)),paste("PB", round(PB_nnet_MASI80_UT_pred,3)),paste("CR", round(CR_nnet_MASI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI80_UT_pred,3)) ,paste("AW", round(AW_nnet_MASI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI80_UT_pred,3))))
  print(c("SW MASI80 nnet imputation",paste("mean:", round(mean_nnet_MASI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MASI80_SW_pred,3)),paste("SE:", round(mean_nnet_MASI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MASI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI80_SW_pred,3)),paste("max:", round(nnet_MASI80_SW_pred_max,3)),paste("min:", round(nnet_MASI80_SW_pred_min,3)),paste("RB", round(RB_nnet_MASI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_SW_pred,3)),paste("PB", round(PB_nnet_MASI80_SW_pred,3)),paste("CR", round(CR_nnet_MASI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI80_SW_pred,3)) ,paste("AW", round(AW_nnet_MASI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MASI80_SW_pred,3))))
  print(c("OU MASI80 nnet imputation",paste("mean:", round(mean_nnet_MASI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MASI80_OU_pred,3)),paste("SE:", round(mean_nnet_MASI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MASI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI80_OU_pred,3)),paste("max:", round(nnet_MASI80_OU_pred_max,3)),paste("min:", round(nnet_MASI80_OU_pred_min,3)),paste("RB", round(RB_nnet_MASI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_OU_pred,3)),paste("PB", round(PB_nnet_MASI80_OU_pred,3)),paste("CR", round(CR_nnet_MASI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI80_OU_pred,3)) ,paste("AW", round(AW_nnet_MASI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MASI80_OU_pred,3))))
  
  print(c("RT MASI50 nnet imputation",paste("mean:", round(mean_nnet_MASI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI50_RT_pred,3)),paste("SE:", round(mean_nnet_MASI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI50_RT_pred,3)),paste("max:", round(nnet_MASI50_RT_pred_max,3)),paste("min:", round(nnet_MASI50_RT_pred_min,3)),paste("RB", round(RB_nnet_MASI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_RT_pred,3)),paste("PB", round(PB_nnet_MASI50_RT_pred,3)),paste("CR", round(CR_nnet_MASI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI50_RT_pred,3)) ,paste("AW", round(AW_nnet_MASI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI50_RT_pred,3))))
  print(c("UT MASI50 nnet imputation",paste("mean:", round(mean_nnet_MASI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI50_UT_pred,3)),paste("SE:", round(mean_nnet_MASI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI50_UT_pred,3)),paste("max:", round(nnet_MASI50_UT_pred_max,3)),paste("min:", round(nnet_MASI50_UT_pred_min,3)),paste("RB", round(RB_nnet_MASI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_UT_pred,3)),paste("PB", round(PB_nnet_MASI50_UT_pred,3)),paste("CR", round(CR_nnet_MASI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI50_UT_pred,3)) ,paste("AW", round(AW_nnet_MASI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI50_UT_pred,3))))
  print(c("SW MASI50 nnet imputation",paste("mean:", round(mean_nnet_MASI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MASI50_SW_pred,3)),paste("SE:", round(mean_nnet_MASI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MASI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI50_SW_pred,3)),paste("max:", round(nnet_MASI50_SW_pred_max,3)),paste("min:", round(nnet_MASI50_SW_pred_min,3)),paste("RB", round(RB_nnet_MASI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_SW_pred,3)),paste("PB", round(PB_nnet_MASI50_SW_pred,3)),paste("CR", round(CR_nnet_MASI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI50_SW_pred,3)) ,paste("AW", round(AW_nnet_MASI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MASI50_SW_pred,3))))
  print(c("OU MASI50 nnet imputation",paste("mean:", round(mean_nnet_MASI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MASI50_OU_pred,3)),paste("SE:", round(mean_nnet_MASI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MASI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI50_OU_pred,3)),paste("max:", round(nnet_MASI50_OU_pred_max,3)),paste("min:", round(nnet_MASI50_OU_pred_min,3)),paste("RB", round(RB_nnet_MASI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_OU_pred,3)),paste("PB", round(PB_nnet_MASI50_OU_pred,3)),paste("CR", round(CR_nnet_MASI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI50_OU_pred,3)) ,paste("AW", round(AW_nnet_MASI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MASI50_OU_pred,3))))
  
  print(c("RT MASI20 nnet imputation",paste("mean:", round(mean_nnet_MASI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI20_RT_pred,3)),paste("SE:", round(mean_nnet_MASI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI20_RT_pred,3)),paste("max:", round(nnet_MASI20_RT_pred_max,3)),paste("min:", round(nnet_MASI20_RT_pred_min,3)),paste("RB", round(RB_nnet_MASI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_RT_pred,3)),paste("PB", round(PB_nnet_MASI20_RT_pred,3)),paste("CR", round(CR_nnet_MASI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI20_RT_pred,3)) ,paste("AW", round(AW_nnet_MASI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI20_RT_pred,3))))
  print(c("UT MASI20 nnet imputation",paste("mean:", round(mean_nnet_MASI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI20_UT_pred,3)),paste("SE:", round(mean_nnet_MASI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI20_UT_pred,3)),paste("max:", round(nnet_MASI20_UT_pred_max,3)),paste("min:", round(nnet_MASI20_UT_pred_min,3)),paste("RB", round(RB_nnet_MASI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_UT_pred,3)),paste("PB", round(PB_nnet_MASI20_UT_pred,3)),paste("CR", round(CR_nnet_MASI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI20_UT_pred,3)) ,paste("AW", round(AW_nnet_MASI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI20_UT_pred,3))))
  print(c("SW MASI20 nnet imputation",paste("mean:", round(mean_nnet_MASI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MASI20_SW_pred,3)),paste("SE:", round(mean_nnet_MASI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MASI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI20_SW_pred,3)),paste("max:", round(nnet_MASI20_SW_pred_max,3)),paste("min:", round(nnet_MASI20_SW_pred_min,3)),paste("RB", round(RB_nnet_MASI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_SW_pred,3)),paste("PB", round(PB_nnet_MASI20_SW_pred,3)),paste("CR", round(CR_nnet_MASI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI20_SW_pred,3)) ,paste("AW", round(AW_nnet_MASI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MASI20_SW_pred,3))))
  print(c("OU MASI20 nnet imputation",paste("mean:", round(mean_nnet_MASI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MASI20_OU_pred,3)),paste("SE:", round(mean_nnet_MASI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MASI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI20_OU_pred,3)),paste("max:", round(nnet_MASI20_OU_pred_max,3)),paste("min:", round(nnet_MASI20_OU_pred_min,3)),paste("RB", round(RB_nnet_MASI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_OU_pred,3)),paste("PB", round(PB_nnet_MASI20_OU_pred,3)),paste("CR", round(CR_nnet_MASI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI20_OU_pred,3)) ,paste("AW", round(AW_nnet_MASI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MASI20_OU_pred,3))))
  
  print(c("RT MASI5 nnet imputation",paste("mean:", round(mean_nnet_MASI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI5_RT_pred,3)),paste("SE:", round(mean_nnet_MASI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI5_RT_pred,3)),paste("max:", round(nnet_MASI5_RT_pred_max,3)),paste("min:", round(nnet_MASI5_RT_pred_min,3)),paste("RB", round(RB_nnet_MASI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_RT_pred,3)),paste("PB", round(PB_nnet_MASI5_RT_pred,3)),paste("CR", round(CR_nnet_MASI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI5_RT_pred,3)) ,paste("AW", round(AW_nnet_MASI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI5_RT_pred,3))))
  print(c("UT MASI5 nnet imputation",paste("mean:", round(mean_nnet_MASI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MASI5_UT_pred,3)),paste("SE:", round(mean_nnet_MASI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MASI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI5_UT_pred,3)),paste("max:", round(nnet_MASI5_UT_pred_max,3)),paste("min:", round(nnet_MASI5_UT_pred_min,3)),paste("RB", round(RB_nnet_MASI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_UT_pred,3)),paste("PB", round(PB_nnet_MASI5_UT_pred,3)),paste("CR", round(CR_nnet_MASI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI5_UT_pred,3)) ,paste("AW", round(AW_nnet_MASI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MASI5_UT_pred,3))))
  print(c("SW MASI5 nnet imputation",paste("mean:", round(mean_nnet_MASI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MASI5_SW_pred,3)),paste("SE:", round(mean_nnet_MASI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MASI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI5_SW_pred,3)),paste("max:", round(nnet_MASI5_SW_pred_max,3)),paste("min:", round(nnet_MASI5_SW_pred_min,3)),paste("RB", round(RB_nnet_MASI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_SW_pred,3)),paste("PB", round(PB_nnet_MASI5_SW_pred,3)),paste("CR", round(CR_nnet_MASI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI5_SW_pred,3)) ,paste("AW", round(AW_nnet_MASI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MASI5_SW_pred,3))))
  print(c("OU MASI5 nnet imputation",paste("mean:", round(mean_nnet_MASI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MASI5_OU_pred,3)),paste("SE:", round(mean_nnet_MASI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MASI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MASI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MASI5_OU_pred,3)),paste("max:", round(nnet_MASI5_OU_pred_max,3)),paste("min:", round(nnet_MASI5_OU_pred_min,3)),paste("RB", round(RB_nnet_MASI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_OU_pred,3)),paste("PB", round(PB_nnet_MASI5_OU_pred,3)),paste("CR", round(CR_nnet_MASI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MASI5_OU_pred,3)) ,paste("AW", round(AW_nnet_MASI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MASI5_OU_pred,3))))
}

#mice MI print
{
  print(c("RT UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_RT_pred,3)),paste("SE:", round(mean_mice_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_RT_pred,3)),paste("max:", round(mice_UAMI80_RT_pred_max,3)),paste("min:", round(mice_UAMI80_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI80_RT_pred,3)),paste("PB", round(PB_mice_UAMI80_RT_pred,3)),paste("CR", round(CR_mice_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_UT_pred,3)),paste("SE:", round(mean_mice_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_UT_pred,3)),paste("max:", round(mice_UAMI80_UT_pred_max,3)),paste("min:", round(mice_UAMI80_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI80_UT_pred,3)),paste("PB", round(PB_mice_UAMI80_UT_pred,3)),paste("CR", round(CR_mice_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_SW_pred,3)),paste("SE:", round(mean_mice_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_SW_pred,3)),paste("max:", round(mice_UAMI80_SW_pred_max,3)),paste("min:", round(mice_UAMI80_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI80_SW_pred,3)),paste("PB", round(PB_mice_UAMI80_SW_pred,3)),paste("CR", round(CR_mice_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_OU_pred,3)),paste("SE:", round(mean_mice_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_OU_pred,3)),paste("max:", round(mice_UAMI80_OU_pred_max,3)),paste("min:", round(mice_UAMI80_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI80_OU_pred,3)),paste("PB", round(PB_mice_UAMI80_OU_pred,3)),paste("CR", round(CR_mice_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_RT_pred,3)),paste("SE:", round(mean_mice_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_RT_pred,3)),paste("max:", round(mice_UAMI50_RT_pred_max,3)),paste("min:", round(mice_UAMI50_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI50_RT_pred,3)),paste("PB", round(PB_mice_UAMI50_RT_pred,3)),paste("CR", round(CR_mice_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_UT_pred,3)),paste("SE:", round(mean_mice_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_UT_pred,3)),paste("max:", round(mice_UAMI50_UT_pred_max,3)),paste("min:", round(mice_UAMI50_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI50_UT_pred,3)),paste("PB", round(PB_mice_UAMI50_UT_pred,3)),paste("CR", round(CR_mice_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_SW_pred,3)),paste("SE:", round(mean_mice_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_SW_pred,3)),paste("max:", round(mice_UAMI50_SW_pred_max,3)),paste("min:", round(mice_UAMI50_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI50_SW_pred,3)),paste("PB", round(PB_mice_UAMI50_SW_pred,3)),paste("CR", round(CR_mice_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_OU_pred,3)),paste("SE:", round(mean_mice_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_OU_pred,3)),paste("max:", round(mice_UAMI50_OU_pred_max,3)),paste("min:", round(mice_UAMI50_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI50_OU_pred,3)),paste("PB", round(PB_mice_UAMI50_OU_pred,3)),paste("CR", round(CR_mice_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_RT_pred,3)),paste("SE:", round(mean_mice_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_RT_pred,3)),paste("max:", round(mice_UAMI20_RT_pred_max,3)),paste("min:", round(mice_UAMI20_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI20_RT_pred,3)),paste("PB", round(PB_mice_UAMI20_RT_pred,3)),paste("CR", round(CR_mice_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_UT_pred,3)),paste("SE:", round(mean_mice_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_UT_pred,3)),paste("max:", round(mice_UAMI20_UT_pred_max,3)),paste("min:", round(mice_UAMI20_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI20_UT_pred,3)),paste("PB", round(PB_mice_UAMI20_UT_pred,3)),paste("CR", round(CR_mice_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_SW_pred,3)),paste("SE:", round(mean_mice_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_SW_pred,3)),paste("max:", round(mice_UAMI20_SW_pred_max,3)),paste("min:", round(mice_UAMI20_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI20_SW_pred,3)),paste("PB", round(PB_mice_UAMI20_SW_pred,3)),paste("CR", round(CR_mice_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_OU_pred,3)),paste("SE:", round(mean_mice_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_OU_pred,3)),paste("max:", round(mice_UAMI20_OU_pred_max,3)),paste("min:", round(mice_UAMI20_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI20_OU_pred,3)),paste("PB", round(PB_mice_UAMI20_OU_pred,3)),paste("CR", round(CR_mice_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_RT_pred,3)),paste("SE:", round(mean_mice_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_RT_pred,3)),paste("max:", round(mice_UAMI5_RT_pred_max,3)),paste("min:", round(mice_UAMI5_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI5_RT_pred,3)),paste("PB", round(PB_mice_UAMI5_RT_pred,3)),paste("CR", round(CR_mice_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_UT_pred,3)),paste("SE:", round(mean_mice_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_UT_pred,3)),paste("max:", round(mice_UAMI5_UT_pred_max,3)),paste("min:", round(mice_UAMI5_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI5_UT_pred,3)),paste("PB", round(PB_mice_UAMI5_UT_pred,3)),paste("CR", round(CR_mice_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_SW_pred,3)),paste("SE:", round(mean_mice_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_SW_pred,3)),paste("max:", round(mice_UAMI5_SW_pred_max,3)),paste("min:", round(mice_UAMI5_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI5_SW_pred,3)),paste("PB", round(PB_mice_UAMI5_SW_pred,3)),paste("CR", round(CR_mice_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_OU_pred,3)),paste("SE:", round(mean_mice_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_OU_pred,3)),paste("max:", round(mice_UAMI5_OU_pred_max,3)),paste("min:", round(mice_UAMI5_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UAMI5_OU_pred,3)),paste("PB", round(PB_mice_UAMI5_OU_pred,3)),paste("CR", round(CR_mice_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_RT_pred,3)),paste("SE:", round(mean_mice_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_RT_pred,3)),paste("max:", round(mice_MAMI80_RT_pred_max,3)),paste("min:", round(mice_MAMI80_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI80_RT_pred,3)),paste("PB", round(PB_mice_MAMI80_RT_pred,3)),paste("CR", round(CR_mice_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_UT_pred,3)),paste("SE:", round(mean_mice_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_UT_pred,3)),paste("max:", round(mice_MAMI80_UT_pred_max,3)),paste("min:", round(mice_MAMI80_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI80_UT_pred,3)),paste("PB", round(PB_mice_MAMI80_UT_pred,3)),paste("CR", round(CR_mice_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_SW_pred,3)),paste("SE:", round(mean_mice_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_SW_pred,3)),paste("max:", round(mice_MAMI80_SW_pred_max,3)),paste("min:", round(mice_MAMI80_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI80_SW_pred,3)),paste("PB", round(PB_mice_MAMI80_SW_pred,3)),paste("CR", round(CR_mice_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_OU_pred,3)),paste("SE:", round(mean_mice_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_OU_pred,3)),paste("max:", round(mice_MAMI80_OU_pred_max,3)),paste("min:", round(mice_MAMI80_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI80_OU_pred,3)),paste("PB", round(PB_mice_MAMI80_OU_pred,3)),paste("CR", round(CR_mice_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_RT_pred,3)),paste("SE:", round(mean_mice_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_RT_pred,3)),paste("max:", round(mice_MAMI50_RT_pred_max,3)),paste("min:", round(mice_MAMI50_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI50_RT_pred,3)),paste("PB", round(PB_mice_MAMI50_RT_pred,3)),paste("CR", round(CR_mice_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_UT_pred,3)),paste("SE:", round(mean_mice_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_UT_pred,3)),paste("max:", round(mice_MAMI50_UT_pred_max,3)),paste("min:", round(mice_MAMI50_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI50_UT_pred,3)),paste("PB", round(PB_mice_MAMI50_UT_pred,3)),paste("CR", round(CR_mice_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_SW_pred,3)),paste("SE:", round(mean_mice_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_SW_pred,3)),paste("max:", round(mice_MAMI50_SW_pred_max,3)),paste("min:", round(mice_MAMI50_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI50_SW_pred,3)),paste("PB", round(PB_mice_MAMI50_SW_pred,3)),paste("CR", round(CR_mice_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_OU_pred,3)),paste("SE:", round(mean_mice_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_OU_pred,3)),paste("max:", round(mice_MAMI50_OU_pred_max,3)),paste("min:", round(mice_MAMI50_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI50_OU_pred,3)),paste("PB", round(PB_mice_MAMI50_OU_pred,3)),paste("CR", round(CR_mice_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_RT_pred,3)),paste("SE:", round(mean_mice_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_RT_pred,3)),paste("max:", round(mice_MAMI20_RT_pred_max,3)),paste("min:", round(mice_MAMI20_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI20_RT_pred,3)),paste("PB", round(PB_mice_MAMI20_RT_pred,3)),paste("CR", round(CR_mice_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_UT_pred,3)),paste("SE:", round(mean_mice_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_UT_pred,3)),paste("max:", round(mice_MAMI20_UT_pred_max,3)),paste("min:", round(mice_MAMI20_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI20_UT_pred,3)),paste("PB", round(PB_mice_MAMI20_UT_pred,3)),paste("CR", round(CR_mice_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_SW_pred,3)),paste("SE:", round(mean_mice_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_SW_pred,3)),paste("max:", round(mice_MAMI20_SW_pred_max,3)),paste("min:", round(mice_MAMI20_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI20_SW_pred,3)),paste("PB", round(PB_mice_MAMI20_SW_pred,3)),paste("CR", round(CR_mice_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_OU_pred,3)),paste("SE:", round(mean_mice_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_OU_pred,3)),paste("max:", round(mice_MAMI20_OU_pred_max,3)),paste("min:", round(mice_MAMI20_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI20_OU_pred,3)),paste("PB", round(PB_mice_MAMI20_OU_pred,3)),paste("CR", round(CR_mice_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_RT_pred,3)),paste("SE:", round(mean_mice_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_RT_pred,3)),paste("max:", round(mice_MAMI5_RT_pred_max,3)),paste("min:", round(mice_MAMI5_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI5_RT_pred,3)),paste("PB", round(PB_mice_MAMI5_RT_pred,3)),paste("CR", round(CR_mice_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_UT_pred,3)),paste("SE:", round(mean_mice_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_UT_pred,3)),paste("max:", round(mice_MAMI5_UT_pred_max,3)),paste("min:", round(mice_MAMI5_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI5_UT_pred,3)),paste("PB", round(PB_mice_MAMI5_UT_pred,3)),paste("CR", round(CR_mice_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_SW_pred,3)),paste("SE:", round(mean_mice_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_SW_pred,3)),paste("max:", round(mice_MAMI5_SW_pred_max,3)),paste("min:", round(mice_MAMI5_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI5_SW_pred,3)),paste("PB", round(PB_mice_MAMI5_SW_pred,3)),paste("CR", round(CR_mice_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_OU_pred,3)),paste("SE:", round(mean_mice_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_OU_pred,3)),paste("max:", round(mice_MAMI5_OU_pred_max,3)),paste("min:", round(mice_MAMI5_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MAMI5_OU_pred,3)),paste("PB", round(PB_mice_MAMI5_OU_pred,3)),paste("CR", round(CR_mice_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_OU_pred,3))))
}

#multinom MI print
{
  print(c("RT UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_RT_pred,3)),paste("max:", round(multinom_UAMI80_RT_pred_max,3)),paste("min:", round(multinom_UAMI80_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI80_RT_pred,3)),paste("PB", round(PB_multinom_UAMI80_RT_pred,3)),paste("CR", round(CR_multinom_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_UT_pred,3)),paste("max:", round(multinom_UAMI80_UT_pred_max,3)),paste("min:", round(multinom_UAMI80_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI80_UT_pred,3)),paste("PB", round(PB_multinom_UAMI80_UT_pred,3)),paste("CR", round(CR_multinom_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_SW_pred,3)),paste("max:", round(multinom_UAMI80_SW_pred_max,3)),paste("min:", round(multinom_UAMI80_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI80_SW_pred,3)),paste("PB", round(PB_multinom_UAMI80_SW_pred,3)),paste("CR", round(CR_multinom_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_OU_pred,3)),paste("max:", round(multinom_UAMI80_OU_pred_max,3)),paste("min:", round(multinom_UAMI80_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI80_OU_pred,3)),paste("PB", round(PB_multinom_UAMI80_OU_pred,3)),paste("CR", round(CR_multinom_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_RT_pred,3)),paste("max:", round(multinom_UAMI50_RT_pred_max,3)),paste("min:", round(multinom_UAMI50_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI50_RT_pred,3)),paste("PB", round(PB_multinom_UAMI50_RT_pred,3)),paste("CR", round(CR_multinom_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_UT_pred,3)),paste("max:", round(multinom_UAMI50_UT_pred_max,3)),paste("min:", round(multinom_UAMI50_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI50_UT_pred,3)),paste("PB", round(PB_multinom_UAMI50_UT_pred,3)),paste("CR", round(CR_multinom_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_SW_pred,3)),paste("max:", round(multinom_UAMI50_SW_pred_max,3)),paste("min:", round(multinom_UAMI50_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI50_SW_pred,3)),paste("PB", round(PB_multinom_UAMI50_SW_pred,3)),paste("CR", round(CR_multinom_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_OU_pred,3)),paste("max:", round(multinom_UAMI50_OU_pred_max,3)),paste("min:", round(multinom_UAMI50_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI50_OU_pred,3)),paste("PB", round(PB_multinom_UAMI50_OU_pred,3)),paste("CR", round(CR_multinom_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_RT_pred,3)),paste("max:", round(multinom_UAMI20_RT_pred_max,3)),paste("min:", round(multinom_UAMI20_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI20_RT_pred,3)),paste("PB", round(PB_multinom_UAMI20_RT_pred,3)),paste("CR", round(CR_multinom_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_UT_pred,3)),paste("max:", round(multinom_UAMI20_UT_pred_max,3)),paste("min:", round(multinom_UAMI20_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI20_UT_pred,3)),paste("PB", round(PB_multinom_UAMI20_UT_pred,3)),paste("CR", round(CR_multinom_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_SW_pred,3)),paste("max:", round(multinom_UAMI20_SW_pred_max,3)),paste("min:", round(multinom_UAMI20_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI20_SW_pred,3)),paste("PB", round(PB_multinom_UAMI20_SW_pred,3)),paste("CR", round(CR_multinom_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_OU_pred,3)),paste("max:", round(multinom_UAMI20_OU_pred_max,3)),paste("min:", round(multinom_UAMI20_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI20_OU_pred,3)),paste("PB", round(PB_multinom_UAMI20_OU_pred,3)),paste("CR", round(CR_multinom_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_RT_pred,3)),paste("max:", round(multinom_UAMI5_RT_pred_max,3)),paste("min:", round(multinom_UAMI5_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI5_RT_pred,3)),paste("PB", round(PB_multinom_UAMI5_RT_pred,3)),paste("CR", round(CR_multinom_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_UT_pred,3)),paste("max:", round(multinom_UAMI5_UT_pred_max,3)),paste("min:", round(multinom_UAMI5_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI5_UT_pred,3)),paste("PB", round(PB_multinom_UAMI5_UT_pred,3)),paste("CR", round(CR_multinom_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_SW_pred,3)),paste("max:", round(multinom_UAMI5_SW_pred_max,3)),paste("min:", round(multinom_UAMI5_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI5_SW_pred,3)),paste("PB", round(PB_multinom_UAMI5_SW_pred,3)),paste("CR", round(CR_multinom_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_OU_pred,3)),paste("max:", round(multinom_UAMI5_OU_pred_max,3)),paste("min:", round(multinom_UAMI5_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UAMI5_OU_pred,3)),paste("PB", round(PB_multinom_UAMI5_OU_pred,3)),paste("CR", round(CR_multinom_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_RT_pred,3)),paste("max:", round(multinom_MAMI80_RT_pred_max,3)),paste("min:", round(multinom_MAMI80_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI80_RT_pred,3)),paste("PB", round(PB_multinom_MAMI80_RT_pred,3)),paste("CR", round(CR_multinom_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_UT_pred,3)),paste("max:", round(multinom_MAMI80_UT_pred_max,3)),paste("min:", round(multinom_MAMI80_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI80_UT_pred,3)),paste("PB", round(PB_multinom_MAMI80_UT_pred,3)),paste("CR", round(CR_multinom_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_SW_pred,3)),paste("max:", round(multinom_MAMI80_SW_pred_max,3)),paste("min:", round(multinom_MAMI80_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI80_SW_pred,3)),paste("PB", round(PB_multinom_MAMI80_SW_pred,3)),paste("CR", round(CR_multinom_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_OU_pred,3)),paste("max:", round(multinom_MAMI80_OU_pred_max,3)),paste("min:", round(multinom_MAMI80_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI80_OU_pred,3)),paste("PB", round(PB_multinom_MAMI80_OU_pred,3)),paste("CR", round(CR_multinom_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_RT_pred,3)),paste("max:", round(multinom_MAMI50_RT_pred_max,3)),paste("min:", round(multinom_MAMI50_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI50_RT_pred,3)),paste("PB", round(PB_multinom_MAMI50_RT_pred,3)),paste("CR", round(CR_multinom_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_UT_pred,3)),paste("max:", round(multinom_MAMI50_UT_pred_max,3)),paste("min:", round(multinom_MAMI50_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI50_UT_pred,3)),paste("PB", round(PB_multinom_MAMI50_UT_pred,3)),paste("CR", round(CR_multinom_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_SW_pred,3)),paste("max:", round(multinom_MAMI50_SW_pred_max,3)),paste("min:", round(multinom_MAMI50_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI50_SW_pred,3)),paste("PB", round(PB_multinom_MAMI50_SW_pred,3)),paste("CR", round(CR_multinom_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_OU_pred,3)),paste("max:", round(multinom_MAMI50_OU_pred_max,3)),paste("min:", round(multinom_MAMI50_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI50_OU_pred,3)),paste("PB", round(PB_multinom_MAMI50_OU_pred,3)),paste("CR", round(CR_multinom_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_RT_pred,3)),paste("max:", round(multinom_MAMI20_RT_pred_max,3)),paste("min:", round(multinom_MAMI20_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI20_RT_pred,3)),paste("PB", round(PB_multinom_MAMI20_RT_pred,3)),paste("CR", round(CR_multinom_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_UT_pred,3)),paste("max:", round(multinom_MAMI20_UT_pred_max,3)),paste("min:", round(multinom_MAMI20_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI20_UT_pred,3)),paste("PB", round(PB_multinom_MAMI20_UT_pred,3)),paste("CR", round(CR_multinom_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_SW_pred,3)),paste("max:", round(multinom_MAMI20_SW_pred_max,3)),paste("min:", round(multinom_MAMI20_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI20_SW_pred,3)),paste("PB", round(PB_multinom_MAMI20_SW_pred,3)),paste("CR", round(CR_multinom_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_OU_pred,3)),paste("max:", round(multinom_MAMI20_OU_pred_max,3)),paste("min:", round(multinom_MAMI20_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI20_OU_pred,3)),paste("PB", round(PB_multinom_MAMI20_OU_pred,3)),paste("CR", round(CR_multinom_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_RT_pred,3)),paste("max:", round(multinom_MAMI5_RT_pred_max,3)),paste("min:", round(multinom_MAMI5_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI5_RT_pred,3)),paste("PB", round(PB_multinom_MAMI5_RT_pred,3)),paste("CR", round(CR_multinom_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_UT_pred,3)),paste("max:", round(multinom_MAMI5_UT_pred_max,3)),paste("min:", round(multinom_MAMI5_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI5_UT_pred,3)),paste("PB", round(PB_multinom_MAMI5_UT_pred,3)),paste("CR", round(CR_multinom_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_SW_pred,3)),paste("max:", round(multinom_MAMI5_SW_pred_max,3)),paste("min:", round(multinom_MAMI5_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI5_SW_pred,3)),paste("PB", round(PB_multinom_MAMI5_SW_pred,3)),paste("CR", round(CR_multinom_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_OU_pred,3)),paste("max:", round(multinom_MAMI5_OU_pred_max,3)),paste("min:", round(multinom_MAMI5_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MAMI5_OU_pred,3)),paste("PB", round(PB_multinom_MAMI5_OU_pred,3)),paste("CR", round(CR_multinom_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_OU_pred,3))))
}

#nnet MI print
{
  print(c("RT UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_RT_pred,3)),paste("max:", round(nnet_UAMI80_RT_pred_max,3)),paste("min:", round(nnet_UAMI80_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI80_RT_pred,3)),paste("PB", round(PB_nnet_UAMI80_RT_pred,3)),paste("CR", round(CR_nnet_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_UT_pred,3)),paste("max:", round(nnet_UAMI80_UT_pred_max,3)),paste("min:", round(nnet_UAMI80_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI80_UT_pred,3)),paste("PB", round(PB_nnet_UAMI80_UT_pred,3)),paste("CR", round(CR_nnet_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_SW_pred,3)),paste("max:", round(nnet_UAMI80_SW_pred_max,3)),paste("min:", round(nnet_UAMI80_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI80_SW_pred,3)),paste("PB", round(PB_nnet_UAMI80_SW_pred,3)),paste("CR", round(CR_nnet_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_OU_pred,3)),paste("max:", round(nnet_UAMI80_OU_pred_max,3)),paste("min:", round(nnet_UAMI80_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI80_OU_pred,3)),paste("PB", round(PB_nnet_UAMI80_OU_pred,3)),paste("CR", round(CR_nnet_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_RT_pred,3)),paste("max:", round(nnet_UAMI50_RT_pred_max,3)),paste("min:", round(nnet_UAMI50_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI50_RT_pred,3)),paste("PB", round(PB_nnet_UAMI50_RT_pred,3)),paste("CR", round(CR_nnet_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_UT_pred,3)),paste("max:", round(nnet_UAMI50_UT_pred_max,3)),paste("min:", round(nnet_UAMI50_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI50_UT_pred,3)),paste("PB", round(PB_nnet_UAMI50_UT_pred,3)),paste("CR", round(CR_nnet_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_SW_pred,3)),paste("max:", round(nnet_UAMI50_SW_pred_max,3)),paste("min:", round(nnet_UAMI50_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI50_SW_pred,3)),paste("PB", round(PB_nnet_UAMI50_SW_pred,3)),paste("CR", round(CR_nnet_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_OU_pred,3)),paste("max:", round(nnet_UAMI50_OU_pred_max,3)),paste("min:", round(nnet_UAMI50_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI50_OU_pred,3)),paste("PB", round(PB_nnet_UAMI50_OU_pred,3)),paste("CR", round(CR_nnet_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_RT_pred,3)),paste("max:", round(nnet_UAMI20_RT_pred_max,3)),paste("min:", round(nnet_UAMI20_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI20_RT_pred,3)),paste("PB", round(PB_nnet_UAMI20_RT_pred,3)),paste("CR", round(CR_nnet_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_UT_pred,3)),paste("max:", round(nnet_UAMI20_UT_pred_max,3)),paste("min:", round(nnet_UAMI20_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI20_UT_pred,3)),paste("PB", round(PB_nnet_UAMI20_UT_pred,3)),paste("CR", round(CR_nnet_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_SW_pred,3)),paste("max:", round(nnet_UAMI20_SW_pred_max,3)),paste("min:", round(nnet_UAMI20_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI20_SW_pred,3)),paste("PB", round(PB_nnet_UAMI20_SW_pred,3)),paste("CR", round(CR_nnet_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_OU_pred,3)),paste("max:", round(nnet_UAMI20_OU_pred_max,3)),paste("min:", round(nnet_UAMI20_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI20_OU_pred,3)),paste("PB", round(PB_nnet_UAMI20_OU_pred,3)),paste("CR", round(CR_nnet_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_RT_pred,3)),paste("max:", round(nnet_UAMI5_RT_pred_max,3)),paste("min:", round(nnet_UAMI5_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI5_RT_pred,3)),paste("PB", round(PB_nnet_UAMI5_RT_pred,3)),paste("CR", round(CR_nnet_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_UT_pred,3)),paste("max:", round(nnet_UAMI5_UT_pred_max,3)),paste("min:", round(nnet_UAMI5_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI5_UT_pred,3)),paste("PB", round(PB_nnet_UAMI5_UT_pred,3)),paste("CR", round(CR_nnet_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_SW_pred,3)),paste("max:", round(nnet_UAMI5_SW_pred_max,3)),paste("min:", round(nnet_UAMI5_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI5_SW_pred,3)),paste("PB", round(PB_nnet_UAMI5_SW_pred,3)),paste("CR", round(CR_nnet_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_OU_pred,3)),paste("max:", round(nnet_UAMI5_OU_pred_max,3)),paste("min:", round(nnet_UAMI5_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UAMI5_OU_pred,3)),paste("PB", round(PB_nnet_UAMI5_OU_pred,3)),paste("CR", round(CR_nnet_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_RT_pred,3)),paste("max:", round(nnet_MAMI80_RT_pred_max,3)),paste("min:", round(nnet_MAMI80_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI80_RT_pred,3)),paste("PB", round(PB_nnet_MAMI80_RT_pred,3)),paste("CR", round(CR_nnet_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_UT_pred,3)),paste("max:", round(nnet_MAMI80_UT_pred_max,3)),paste("min:", round(nnet_MAMI80_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI80_UT_pred,3)),paste("PB", round(PB_nnet_MAMI80_UT_pred,3)),paste("CR", round(CR_nnet_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_SW_pred,3)),paste("max:", round(nnet_MAMI80_SW_pred_max,3)),paste("min:", round(nnet_MAMI80_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI80_SW_pred,3)),paste("PB", round(PB_nnet_MAMI80_SW_pred,3)),paste("CR", round(CR_nnet_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_OU_pred,3)),paste("max:", round(nnet_MAMI80_OU_pred_max,3)),paste("min:", round(nnet_MAMI80_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI80_OU_pred,3)),paste("PB", round(PB_nnet_MAMI80_OU_pred,3)),paste("CR", round(CR_nnet_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_RT_pred,3)),paste("max:", round(nnet_MAMI50_RT_pred_max,3)),paste("min:", round(nnet_MAMI50_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI50_RT_pred,3)),paste("PB", round(PB_nnet_MAMI50_RT_pred,3)),paste("CR", round(CR_nnet_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_UT_pred,3)),paste("max:", round(nnet_MAMI50_UT_pred_max,3)),paste("min:", round(nnet_MAMI50_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI50_UT_pred,3)),paste("PB", round(PB_nnet_MAMI50_UT_pred,3)),paste("CR", round(CR_nnet_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_SW_pred,3)),paste("max:", round(nnet_MAMI50_SW_pred_max,3)),paste("min:", round(nnet_MAMI50_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI50_SW_pred,3)),paste("PB", round(PB_nnet_MAMI50_SW_pred,3)),paste("CR", round(CR_nnet_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_OU_pred,3)),paste("max:", round(nnet_MAMI50_OU_pred_max,3)),paste("min:", round(nnet_MAMI50_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI50_OU_pred,3)),paste("PB", round(PB_nnet_MAMI50_OU_pred,3)),paste("CR", round(CR_nnet_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_RT_pred,3)),paste("max:", round(nnet_MAMI20_RT_pred_max,3)),paste("min:", round(nnet_MAMI20_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI20_RT_pred,3)),paste("PB", round(PB_nnet_MAMI20_RT_pred,3)),paste("CR", round(CR_nnet_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_UT_pred,3)),paste("max:", round(nnet_MAMI20_UT_pred_max,3)),paste("min:", round(nnet_MAMI20_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI20_UT_pred,3)),paste("PB", round(PB_nnet_MAMI20_UT_pred,3)),paste("CR", round(CR_nnet_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_SW_pred,3)),paste("max:", round(nnet_MAMI20_SW_pred_max,3)),paste("min:", round(nnet_MAMI20_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI20_SW_pred,3)),paste("PB", round(PB_nnet_MAMI20_SW_pred,3)),paste("CR", round(CR_nnet_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_OU_pred,3)),paste("max:", round(nnet_MAMI20_OU_pred_max,3)),paste("min:", round(nnet_MAMI20_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI20_OU_pred,3)),paste("PB", round(PB_nnet_MAMI20_OU_pred,3)),paste("CR", round(CR_nnet_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_RT_pred,3)),paste("max:", round(nnet_MAMI5_RT_pred_max,3)),paste("min:", round(nnet_MAMI5_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI5_RT_pred,3)),paste("PB", round(PB_nnet_MAMI5_RT_pred,3)),paste("CR", round(CR_nnet_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_UT_pred,3)),paste("max:", round(nnet_MAMI5_UT_pred_max,3)),paste("min:", round(nnet_MAMI5_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI5_UT_pred,3)),paste("PB", round(PB_nnet_MAMI5_UT_pred,3)),paste("CR", round(CR_nnet_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_SW_pred,3)),paste("max:", round(nnet_MAMI5_SW_pred_max,3)),paste("min:", round(nnet_MAMI5_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI5_SW_pred,3)),paste("PB", round(PB_nnet_MAMI5_SW_pred,3)),paste("CR", round(CR_nnet_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_OU_pred,3)),paste("max:", round(nnet_MAMI5_OU_pred_max,3)),paste("min:", round(nnet_MAMI5_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MAMI5_OU_pred,3)),paste("PB", round(PB_nnet_MAMI5_OU_pred,3)),paste("CR", round(CR_nnet_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_OU_pred,3))))
}

proc.time() - ptm
