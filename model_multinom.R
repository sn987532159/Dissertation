#install.packages("nnet")
#install.packages("VIM")
library(nnet)
library(VIM)

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

#multinom MI print
{
  print(c("RT UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_RT_pred,3)),paste("max:", round(multinom_UAMI80_RT_pred_max,3)),paste("min:", round(multinom_UAMI80_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_RT_pred,3)),paste("PB", round(PB_multinom_UAMI80_RT_pred,3)),paste("CR", round(CR_multinom_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_UT_pred,3)),paste("max:", round(multinom_UAMI80_UT_pred_max,3)),paste("min:", round(multinom_UAMI80_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_UT_pred,3)),paste("PB", round(PB_multinom_UAMI80_UT_pred,3)),paste("CR", round(CR_multinom_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_SW_pred,3)),paste("max:", round(multinom_UAMI80_SW_pred_max,3)),paste("min:", round(multinom_UAMI80_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_SW_pred,3)),paste("PB", round(PB_multinom_UAMI80_SW_pred,3)),paste("CR", round(CR_multinom_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 multinom imputation",paste("mean:", round(mean_multinom_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI80_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI80_OU_pred,3)),paste("max:", round(multinom_UAMI80_OU_pred_max,3)),paste("min:", round(multinom_UAMI80_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI80_OU_pred,3)),paste("PB", round(PB_multinom_UAMI80_OU_pred,3)),paste("CR", round(CR_multinom_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI80_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_RT_pred,3)),paste("max:", round(multinom_UAMI50_RT_pred_max,3)),paste("min:", round(multinom_UAMI50_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_RT_pred,3)),paste("PB", round(PB_multinom_UAMI50_RT_pred,3)),paste("CR", round(CR_multinom_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_UT_pred,3)),paste("max:", round(multinom_UAMI50_UT_pred_max,3)),paste("min:", round(multinom_UAMI50_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_UT_pred,3)),paste("PB", round(PB_multinom_UAMI50_UT_pred,3)),paste("CR", round(CR_multinom_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_SW_pred,3)),paste("max:", round(multinom_UAMI50_SW_pred_max,3)),paste("min:", round(multinom_UAMI50_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_SW_pred,3)),paste("PB", round(PB_multinom_UAMI50_SW_pred,3)),paste("CR", round(CR_multinom_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 multinom imputation",paste("mean:", round(mean_multinom_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI50_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI50_OU_pred,3)),paste("max:", round(multinom_UAMI50_OU_pred_max,3)),paste("min:", round(multinom_UAMI50_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI50_OU_pred,3)),paste("PB", round(PB_multinom_UAMI50_OU_pred,3)),paste("CR", round(CR_multinom_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI50_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_RT_pred,3)),paste("max:", round(multinom_UAMI20_RT_pred_max,3)),paste("min:", round(multinom_UAMI20_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_RT_pred,3)),paste("PB", round(PB_multinom_UAMI20_RT_pred,3)),paste("CR", round(CR_multinom_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_UT_pred,3)),paste("max:", round(multinom_UAMI20_UT_pred_max,3)),paste("min:", round(multinom_UAMI20_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_UT_pred,3)),paste("PB", round(PB_multinom_UAMI20_UT_pred,3)),paste("CR", round(CR_multinom_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_SW_pred,3)),paste("max:", round(multinom_UAMI20_SW_pred_max,3)),paste("min:", round(multinom_UAMI20_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_SW_pred,3)),paste("PB", round(PB_multinom_UAMI20_SW_pred,3)),paste("CR", round(CR_multinom_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 multinom imputation",paste("mean:", round(mean_multinom_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI20_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI20_OU_pred,3)),paste("max:", round(multinom_UAMI20_OU_pred_max,3)),paste("min:", round(multinom_UAMI20_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI20_OU_pred,3)),paste("PB", round(PB_multinom_UAMI20_OU_pred,3)),paste("CR", round(CR_multinom_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI20_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_RT_pred,3)),paste("SE:", round(mean_multinom_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_RT_pred,3)),paste("max:", round(multinom_UAMI5_RT_pred_max,3)),paste("min:", round(multinom_UAMI5_RT_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_RT_pred,3)),paste("PB", round(PB_multinom_UAMI5_RT_pred,3)),paste("CR", round(CR_multinom_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_RT_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_UT_pred,3)),paste("SE:", round(mean_multinom_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_UT_pred,3)),paste("max:", round(multinom_UAMI5_UT_pred_max,3)),paste("min:", round(multinom_UAMI5_UT_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_UT_pred,3)),paste("PB", round(PB_multinom_UAMI5_UT_pred,3)),paste("CR", round(CR_multinom_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_UT_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_SW_pred,3)),paste("SE:", round(mean_multinom_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_SW_pred,3)),paste("max:", round(multinom_UAMI5_SW_pred_max,3)),paste("min:", round(multinom_UAMI5_SW_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_SW_pred,3)),paste("PB", round(PB_multinom_UAMI5_SW_pred,3)),paste("CR", round(CR_multinom_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_SW_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 multinom imputation",paste("mean:", round(mean_multinom_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_UAMI5_OU_pred,3)),paste("SE:", round(mean_multinom_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_UAMI5_OU_pred,3)),paste("max:", round(multinom_UAMI5_OU_pred_max,3)),paste("min:", round(multinom_UAMI5_OU_pred_min,3)),paste("RB", round(RB_multinom_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_UASI5_OU_pred,3)),paste("PB", round(PB_multinom_UAMI5_OU_pred,3)),paste("CR", round(CR_multinom_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_UAMI5_OU_pred,3)) ,paste("AW", round(AW_multinom_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_RT_pred,3)),paste("max:", round(multinom_MAMI80_RT_pred_max,3)),paste("min:", round(multinom_MAMI80_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_RT_pred,3)),paste("PB", round(PB_multinom_MAMI80_RT_pred,3)),paste("CR", round(CR_multinom_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_UT_pred,3)),paste("max:", round(multinom_MAMI80_UT_pred_max,3)),paste("min:", round(multinom_MAMI80_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_UT_pred,3)),paste("PB", round(PB_multinom_MAMI80_UT_pred,3)),paste("CR", round(CR_multinom_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_SW_pred,3)),paste("max:", round(multinom_MAMI80_SW_pred_max,3)),paste("min:", round(multinom_MAMI80_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_SW_pred,3)),paste("PB", round(PB_multinom_MAMI80_SW_pred,3)),paste("CR", round(CR_multinom_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 multinom imputation",paste("mean:", round(mean_multinom_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI80_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI80_OU_pred,3)),paste("max:", round(multinom_MAMI80_OU_pred_max,3)),paste("min:", round(multinom_MAMI80_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI80_OU_pred,3)),paste("PB", round(PB_multinom_MAMI80_OU_pred,3)),paste("CR", round(CR_multinom_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI80_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_RT_pred,3)),paste("max:", round(multinom_MAMI50_RT_pred_max,3)),paste("min:", round(multinom_MAMI50_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_RT_pred,3)),paste("PB", round(PB_multinom_MAMI50_RT_pred,3)),paste("CR", round(CR_multinom_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_UT_pred,3)),paste("max:", round(multinom_MAMI50_UT_pred_max,3)),paste("min:", round(multinom_MAMI50_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_UT_pred,3)),paste("PB", round(PB_multinom_MAMI50_UT_pred,3)),paste("CR", round(CR_multinom_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_SW_pred,3)),paste("max:", round(multinom_MAMI50_SW_pred_max,3)),paste("min:", round(multinom_MAMI50_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_SW_pred,3)),paste("PB", round(PB_multinom_MAMI50_SW_pred,3)),paste("CR", round(CR_multinom_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 multinom imputation",paste("mean:", round(mean_multinom_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI50_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI50_OU_pred,3)),paste("max:", round(multinom_MAMI50_OU_pred_max,3)),paste("min:", round(multinom_MAMI50_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI50_OU_pred,3)),paste("PB", round(PB_multinom_MAMI50_OU_pred,3)),paste("CR", round(CR_multinom_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI50_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_RT_pred,3)),paste("max:", round(multinom_MAMI20_RT_pred_max,3)),paste("min:", round(multinom_MAMI20_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_RT_pred,3)),paste("PB", round(PB_multinom_MAMI20_RT_pred,3)),paste("CR", round(CR_multinom_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_UT_pred,3)),paste("max:", round(multinom_MAMI20_UT_pred_max,3)),paste("min:", round(multinom_MAMI20_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_UT_pred,3)),paste("PB", round(PB_multinom_MAMI20_UT_pred,3)),paste("CR", round(CR_multinom_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_SW_pred,3)),paste("max:", round(multinom_MAMI20_SW_pred_max,3)),paste("min:", round(multinom_MAMI20_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_SW_pred,3)),paste("PB", round(PB_multinom_MAMI20_SW_pred,3)),paste("CR", round(CR_multinom_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 multinom imputation",paste("mean:", round(mean_multinom_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI20_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI20_OU_pred,3)),paste("max:", round(multinom_MAMI20_OU_pred_max,3)),paste("min:", round(multinom_MAMI20_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI20_OU_pred,3)),paste("PB", round(PB_multinom_MAMI20_OU_pred,3)),paste("CR", round(CR_multinom_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI20_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_RT_pred,3)),paste("SE:", round(mean_multinom_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_RT_pred,3)),paste("max:", round(multinom_MAMI5_RT_pred_max,3)),paste("min:", round(multinom_MAMI5_RT_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_RT_pred,3)),paste("PB", round(PB_multinom_MAMI5_RT_pred,3)),paste("CR", round(CR_multinom_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_RT_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_UT_pred,3)),paste("SE:", round(mean_multinom_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_UT_pred,3)),paste("max:", round(multinom_MAMI5_UT_pred_max,3)),paste("min:", round(multinom_MAMI5_UT_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_UT_pred,3)),paste("PB", round(PB_multinom_MAMI5_UT_pred,3)),paste("CR", round(CR_multinom_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_UT_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_SW_pred,3)),paste("SE:", round(mean_multinom_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_SW_pred,3)),paste("max:", round(multinom_MAMI5_SW_pred_max,3)),paste("min:", round(multinom_MAMI5_SW_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_SW_pred,3)),paste("PB", round(PB_multinom_MAMI5_SW_pred,3)),paste("CR", round(CR_multinom_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_SW_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 multinom imputation",paste("mean:", round(mean_multinom_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_multinom_MAMI5_OU_pred,3)),paste("SE:", round(mean_multinom_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_multinom_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_multinom_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_multinom_MAMI5_OU_pred,3)),paste("max:", round(multinom_MAMI5_OU_pred_max,3)),paste("min:", round(multinom_MAMI5_OU_pred_min,3)),paste("RB", round(RB_multinom_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_multinom_MASI5_OU_pred,3)),paste("PB", round(PB_multinom_MAMI5_OU_pred,3)),paste("CR", round(CR_multinom_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_multinom_MAMI5_OU_pred,3)) ,paste("AW", round(AW_multinom_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_multinom_MAMI5_OU_pred,3))))
}
