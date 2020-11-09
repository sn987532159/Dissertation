#install.packages("nnet")
#install.packages("VIM")
#install.packages('caret')
#install.packages('MLmetrics')
library(nnet)
library(VIM)
library(caret)
library(MLmetrics)

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

#nnet MI print
{
  print(c("RT UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_RT_pred,3)),paste("max:", round(nnet_UAMI80_RT_pred_max,3)),paste("min:", round(nnet_UAMI80_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_RT_pred,3)),paste("PB", round(PB_nnet_UAMI80_RT_pred,3)),paste("CR", round(CR_nnet_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_UT_pred,3)),paste("max:", round(nnet_UAMI80_UT_pred_max,3)),paste("min:", round(nnet_UAMI80_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_UT_pred,3)),paste("PB", round(PB_nnet_UAMI80_UT_pred,3)),paste("CR", round(CR_nnet_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_SW_pred,3)),paste("max:", round(nnet_UAMI80_SW_pred_max,3)),paste("min:", round(nnet_UAMI80_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_SW_pred,3)),paste("PB", round(PB_nnet_UAMI80_SW_pred,3)),paste("CR", round(CR_nnet_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 nnet imputation",paste("mean:", round(mean_nnet_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI80_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI80_OU_pred,3)),paste("max:", round(nnet_UAMI80_OU_pred_max,3)),paste("min:", round(nnet_UAMI80_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI80_OU_pred,3)),paste("PB", round(PB_nnet_UAMI80_OU_pred,3)),paste("CR", round(CR_nnet_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI80_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_RT_pred,3)),paste("max:", round(nnet_UAMI50_RT_pred_max,3)),paste("min:", round(nnet_UAMI50_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_RT_pred,3)),paste("PB", round(PB_nnet_UAMI50_RT_pred,3)),paste("CR", round(CR_nnet_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_UT_pred,3)),paste("max:", round(nnet_UAMI50_UT_pred_max,3)),paste("min:", round(nnet_UAMI50_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_UT_pred,3)),paste("PB", round(PB_nnet_UAMI50_UT_pred,3)),paste("CR", round(CR_nnet_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_SW_pred,3)),paste("max:", round(nnet_UAMI50_SW_pred_max,3)),paste("min:", round(nnet_UAMI50_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_SW_pred,3)),paste("PB", round(PB_nnet_UAMI50_SW_pred,3)),paste("CR", round(CR_nnet_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 nnet imputation",paste("mean:", round(mean_nnet_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI50_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI50_OU_pred,3)),paste("max:", round(nnet_UAMI50_OU_pred_max,3)),paste("min:", round(nnet_UAMI50_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI50_OU_pred,3)),paste("PB", round(PB_nnet_UAMI50_OU_pred,3)),paste("CR", round(CR_nnet_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI50_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_RT_pred,3)),paste("max:", round(nnet_UAMI20_RT_pred_max,3)),paste("min:", round(nnet_UAMI20_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_RT_pred,3)),paste("PB", round(PB_nnet_UAMI20_RT_pred,3)),paste("CR", round(CR_nnet_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_UT_pred,3)),paste("max:", round(nnet_UAMI20_UT_pred_max,3)),paste("min:", round(nnet_UAMI20_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_UT_pred,3)),paste("PB", round(PB_nnet_UAMI20_UT_pred,3)),paste("CR", round(CR_nnet_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_SW_pred,3)),paste("max:", round(nnet_UAMI20_SW_pred_max,3)),paste("min:", round(nnet_UAMI20_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_SW_pred,3)),paste("PB", round(PB_nnet_UAMI20_SW_pred,3)),paste("CR", round(CR_nnet_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 nnet imputation",paste("mean:", round(mean_nnet_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI20_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI20_OU_pred,3)),paste("max:", round(nnet_UAMI20_OU_pred_max,3)),paste("min:", round(nnet_UAMI20_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI20_OU_pred,3)),paste("PB", round(PB_nnet_UAMI20_OU_pred,3)),paste("CR", round(CR_nnet_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI20_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_RT_pred,3)),paste("SE:", round(mean_nnet_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_RT_pred,3)),paste("max:", round(nnet_UAMI5_RT_pred_max,3)),paste("min:", round(nnet_UAMI5_RT_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_RT_pred,3)),paste("PB", round(PB_nnet_UAMI5_RT_pred,3)),paste("CR", round(CR_nnet_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_RT_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_UT_pred,3)),paste("SE:", round(mean_nnet_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_UT_pred,3)),paste("max:", round(nnet_UAMI5_UT_pred_max,3)),paste("min:", round(nnet_UAMI5_UT_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_UT_pred,3)),paste("PB", round(PB_nnet_UAMI5_UT_pred,3)),paste("CR", round(CR_nnet_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_UT_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_SW_pred,3)),paste("SE:", round(mean_nnet_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_SW_pred,3)),paste("max:", round(nnet_UAMI5_SW_pred_max,3)),paste("min:", round(nnet_UAMI5_SW_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_SW_pred,3)),paste("PB", round(PB_nnet_UAMI5_SW_pred,3)),paste("CR", round(CR_nnet_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_SW_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 nnet imputation",paste("mean:", round(mean_nnet_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_UAMI5_OU_pred,3)),paste("SE:", round(mean_nnet_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_UAMI5_OU_pred,3)),paste("max:", round(nnet_UAMI5_OU_pred_max,3)),paste("min:", round(nnet_UAMI5_OU_pred_min,3)),paste("RB", round(RB_nnet_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_UASI5_OU_pred,3)),paste("PB", round(PB_nnet_UAMI5_OU_pred,3)),paste("CR", round(CR_nnet_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_UAMI5_OU_pred,3)) ,paste("AW", round(AW_nnet_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_RT_pred,3)),paste("max:", round(nnet_MAMI80_RT_pred_max,3)),paste("min:", round(nnet_MAMI80_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_RT_pred,3)),paste("PB", round(PB_nnet_MAMI80_RT_pred,3)),paste("CR", round(CR_nnet_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_UT_pred,3)),paste("max:", round(nnet_MAMI80_UT_pred_max,3)),paste("min:", round(nnet_MAMI80_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_UT_pred,3)),paste("PB", round(PB_nnet_MAMI80_UT_pred,3)),paste("CR", round(CR_nnet_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_SW_pred,3)),paste("max:", round(nnet_MAMI80_SW_pred_max,3)),paste("min:", round(nnet_MAMI80_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_SW_pred,3)),paste("PB", round(PB_nnet_MAMI80_SW_pred,3)),paste("CR", round(CR_nnet_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 nnet imputation",paste("mean:", round(mean_nnet_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI80_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI80_OU_pred,3)),paste("max:", round(nnet_MAMI80_OU_pred_max,3)),paste("min:", round(nnet_MAMI80_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI80_OU_pred,3)),paste("PB", round(PB_nnet_MAMI80_OU_pred,3)),paste("CR", round(CR_nnet_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI80_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_RT_pred,3)),paste("max:", round(nnet_MAMI50_RT_pred_max,3)),paste("min:", round(nnet_MAMI50_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_RT_pred,3)),paste("PB", round(PB_nnet_MAMI50_RT_pred,3)),paste("CR", round(CR_nnet_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_UT_pred,3)),paste("max:", round(nnet_MAMI50_UT_pred_max,3)),paste("min:", round(nnet_MAMI50_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_UT_pred,3)),paste("PB", round(PB_nnet_MAMI50_UT_pred,3)),paste("CR", round(CR_nnet_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_SW_pred,3)),paste("max:", round(nnet_MAMI50_SW_pred_max,3)),paste("min:", round(nnet_MAMI50_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_SW_pred,3)),paste("PB", round(PB_nnet_MAMI50_SW_pred,3)),paste("CR", round(CR_nnet_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 nnet imputation",paste("mean:", round(mean_nnet_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI50_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI50_OU_pred,3)),paste("max:", round(nnet_MAMI50_OU_pred_max,3)),paste("min:", round(nnet_MAMI50_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI50_OU_pred,3)),paste("PB", round(PB_nnet_MAMI50_OU_pred,3)),paste("CR", round(CR_nnet_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI50_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_RT_pred,3)),paste("max:", round(nnet_MAMI20_RT_pred_max,3)),paste("min:", round(nnet_MAMI20_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_RT_pred,3)),paste("PB", round(PB_nnet_MAMI20_RT_pred,3)),paste("CR", round(CR_nnet_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_UT_pred,3)),paste("max:", round(nnet_MAMI20_UT_pred_max,3)),paste("min:", round(nnet_MAMI20_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_UT_pred,3)),paste("PB", round(PB_nnet_MAMI20_UT_pred,3)),paste("CR", round(CR_nnet_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_SW_pred,3)),paste("max:", round(nnet_MAMI20_SW_pred_max,3)),paste("min:", round(nnet_MAMI20_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_SW_pred,3)),paste("PB", round(PB_nnet_MAMI20_SW_pred,3)),paste("CR", round(CR_nnet_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 nnet imputation",paste("mean:", round(mean_nnet_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI20_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI20_OU_pred,3)),paste("max:", round(nnet_MAMI20_OU_pred_max,3)),paste("min:", round(nnet_MAMI20_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI20_OU_pred,3)),paste("PB", round(PB_nnet_MAMI20_OU_pred,3)),paste("CR", round(CR_nnet_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI20_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_RT_pred,3)),paste("SE:", round(mean_nnet_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_RT_pred,3)),paste("max:", round(nnet_MAMI5_RT_pred_max,3)),paste("min:", round(nnet_MAMI5_RT_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_RT_pred,3)),paste("PB", round(PB_nnet_MAMI5_RT_pred,3)),paste("CR", round(CR_nnet_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_RT_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_UT_pred,3)),paste("SE:", round(mean_nnet_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_UT_pred,3)),paste("max:", round(nnet_MAMI5_UT_pred_max,3)),paste("min:", round(nnet_MAMI5_UT_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_UT_pred,3)),paste("PB", round(PB_nnet_MAMI5_UT_pred,3)),paste("CR", round(CR_nnet_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_UT_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_SW_pred,3)),paste("SE:", round(mean_nnet_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_SW_pred,3)),paste("max:", round(nnet_MAMI5_SW_pred_max,3)),paste("min:", round(nnet_MAMI5_SW_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_SW_pred,3)),paste("PB", round(PB_nnet_MAMI5_SW_pred,3)),paste("CR", round(CR_nnet_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_SW_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 nnet imputation",paste("mean:", round(mean_nnet_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_nnet_MAMI5_OU_pred,3)),paste("SE:", round(mean_nnet_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_nnet_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_nnet_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_nnet_MAMI5_OU_pred,3)),paste("max:", round(nnet_MAMI5_OU_pred_max,3)),paste("min:", round(nnet_MAMI5_OU_pred_min,3)),paste("RB", round(RB_nnet_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_nnet_MASI5_OU_pred,3)),paste("PB", round(PB_nnet_MAMI5_OU_pred,3)),paste("CR", round(CR_nnet_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_nnet_MAMI5_OU_pred,3)) ,paste("AW", round(AW_nnet_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_nnet_MAMI5_OU_pred,3))))
}
