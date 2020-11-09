library(mice)
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
}

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
      UAMI_50_mice_imp <- mice(UA_50, maxit = 10, m = 1, method = methods_UA_50, print = TRUE, seed = 19)
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
      UAMI_20_mice_imp <- mice(UA_20, maxit = 10, m = 1, method = methods_UA_20, print = TRUE, seed = 19)
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
      UAMI_5_mice_imp <- mice(UA_5, maxit = 10, m = 1, method = methods_UA_5, print = TRUE, seed = 19)
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
      MAMI_80_mice_imp <- mice(MA_80, maxit = 10, m = 1, method = methods_MA_80, print = TRUE, seed = 19)
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
      MAMI_50_mice_imp <- mice(MA_50, maxit = 10, m = 1, method = methods_MA_50, print = TRUE, seed = 19)
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
      MAMI_20_mice_imp <- mice(MA_20, maxit = 10, m = 1, method = methods_MA_20, print = TRUE, seed = 19)
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
      MAMI_5_mice_imp <- mice(MA_5, maxit = 10, m = 1, method = methods_MA_5, print = TRUE, seed = 19)
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

#mice MI print
{
  print(c("RT UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_RT_pred,3)),paste("SE:", round(mean_mice_UAMI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_RT_pred,3)),paste("max:", round(mice_UAMI80_RT_pred_max,3)),paste("min:", round(mice_UAMI80_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_RT_pred,3)),paste("PB", round(PB_mice_UAMI80_RT_pred,3)),paste("CR", round(CR_mice_UAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_RT_pred,3))))
  print(c("UT UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_UT_pred,3)),paste("SE:", round(mean_mice_UAMI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_UT_pred,3)),paste("max:", round(mice_UAMI80_UT_pred_max,3)),paste("min:", round(mice_UAMI80_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_UT_pred,3)),paste("PB", round(PB_mice_UAMI80_UT_pred,3)),paste("CR", round(CR_mice_UAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_UT_pred,3))))
  print(c("SW UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_SW_pred,3)),paste("SE:", round(mean_mice_UAMI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_SW_pred,3)),paste("max:", round(mice_UAMI80_SW_pred_max,3)),paste("min:", round(mice_UAMI80_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_SW_pred,3)),paste("PB", round(PB_mice_UAMI80_SW_pred,3)),paste("CR", round(CR_mice_UAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_SW_pred,3))))
  print(c("OU UAMI80 mice imputation",paste("mean:", round(mean_mice_UAMI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI80_OU_pred,3)),paste("SE:", round(mean_mice_UAMI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI80_OU_pred,3)),paste("max:", round(mice_UAMI80_OU_pred_max,3)),paste("min:", round(mice_UAMI80_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI80_OU_pred,3)),paste("PB", round(PB_mice_UAMI80_OU_pred,3)),paste("CR", round(CR_mice_UAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI80_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI80_OU_pred,3))))
  
  print(c("RT UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_RT_pred,3)),paste("SE:", round(mean_mice_UAMI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_RT_pred,3)),paste("max:", round(mice_UAMI50_RT_pred_max,3)),paste("min:", round(mice_UAMI50_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_RT_pred,3)),paste("PB", round(PB_mice_UAMI50_RT_pred,3)),paste("CR", round(CR_mice_UAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_RT_pred,3))))
  print(c("UT UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_UT_pred,3)),paste("SE:", round(mean_mice_UAMI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_UT_pred,3)),paste("max:", round(mice_UAMI50_UT_pred_max,3)),paste("min:", round(mice_UAMI50_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_UT_pred,3)),paste("PB", round(PB_mice_UAMI50_UT_pred,3)),paste("CR", round(CR_mice_UAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_UT_pred,3))))
  print(c("SW UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_SW_pred,3)),paste("SE:", round(mean_mice_UAMI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_SW_pred,3)),paste("max:", round(mice_UAMI50_SW_pred_max,3)),paste("min:", round(mice_UAMI50_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_SW_pred,3)),paste("PB", round(PB_mice_UAMI50_SW_pred,3)),paste("CR", round(CR_mice_UAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_SW_pred,3))))
  print(c("OU UAMI50 mice imputation",paste("mean:", round(mean_mice_UAMI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI50_OU_pred,3)),paste("SE:", round(mean_mice_UAMI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI50_OU_pred,3)),paste("max:", round(mice_UAMI50_OU_pred_max,3)),paste("min:", round(mice_UAMI50_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI50_OU_pred,3)),paste("PB", round(PB_mice_UAMI50_OU_pred,3)),paste("CR", round(CR_mice_UAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI50_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI50_OU_pred,3))))
  
  print(c("RT UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_RT_pred,3)),paste("SE:", round(mean_mice_UAMI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_RT_pred,3)),paste("max:", round(mice_UAMI20_RT_pred_max,3)),paste("min:", round(mice_UAMI20_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_RT_pred,3)),paste("PB", round(PB_mice_UAMI20_RT_pred,3)),paste("CR", round(CR_mice_UAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_RT_pred,3))))
  print(c("UT UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_UT_pred,3)),paste("SE:", round(mean_mice_UAMI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_UT_pred,3)),paste("max:", round(mice_UAMI20_UT_pred_max,3)),paste("min:", round(mice_UAMI20_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_UT_pred,3)),paste("PB", round(PB_mice_UAMI20_UT_pred,3)),paste("CR", round(CR_mice_UAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_UT_pred,3))))
  print(c("SW UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_SW_pred,3)),paste("SE:", round(mean_mice_UAMI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_SW_pred,3)),paste("max:", round(mice_UAMI20_SW_pred_max,3)),paste("min:", round(mice_UAMI20_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_SW_pred,3)),paste("PB", round(PB_mice_UAMI20_SW_pred,3)),paste("CR", round(CR_mice_UAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_SW_pred,3))))
  print(c("OU UAMI20 mice imputation",paste("mean:", round(mean_mice_UAMI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI20_OU_pred,3)),paste("SE:", round(mean_mice_UAMI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI20_OU_pred,3)),paste("max:", round(mice_UAMI20_OU_pred_max,3)),paste("min:", round(mice_UAMI20_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI20_OU_pred,3)),paste("PB", round(PB_mice_UAMI20_OU_pred,3)),paste("CR", round(CR_mice_UAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI20_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI20_OU_pred,3))))
  
  print(c("RT UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_RT_pred,3)),paste("SE:", round(mean_mice_UAMI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_RT_pred,3)),paste("max:", round(mice_UAMI5_RT_pred_max,3)),paste("min:", round(mice_UAMI5_RT_pred_min,3)),paste("RB", round(RB_mice_UAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_RT_pred,3)),paste("PB", round(PB_mice_UAMI5_RT_pred,3)),paste("CR", round(CR_mice_UAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_RT_pred,3)) ,paste("AW", round(AW_mice_UAMI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_RT_pred,3))))
  print(c("UT UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_UT_pred,3)),paste("SE:", round(mean_mice_UAMI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_UT_pred,3)),paste("max:", round(mice_UAMI5_UT_pred_max,3)),paste("min:", round(mice_UAMI5_UT_pred_min,3)),paste("RB", round(RB_mice_UAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_UT_pred,3)),paste("PB", round(PB_mice_UAMI5_UT_pred,3)),paste("CR", round(CR_mice_UAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_UT_pred,3)) ,paste("AW", round(AW_mice_UAMI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_UT_pred,3))))
  print(c("SW UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_SW_pred,3)),paste("SE:", round(mean_mice_UAMI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_SW_pred,3)),paste("max:", round(mice_UAMI5_SW_pred_max,3)),paste("min:", round(mice_UAMI5_SW_pred_min,3)),paste("RB", round(RB_mice_UAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_SW_pred,3)),paste("PB", round(PB_mice_UAMI5_SW_pred,3)),paste("CR", round(CR_mice_UAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_SW_pred,3)) ,paste("AW", round(AW_mice_UAMI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_SW_pred,3))))
  print(c("OU UAMI5 mice imputation",paste("mean:", round(mean_mice_UAMI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_UAMI5_OU_pred,3)),paste("SE:", round(mean_mice_UAMI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_UAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_UAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_UAMI5_OU_pred,3)),paste("max:", round(mice_UAMI5_OU_pred_max,3)),paste("min:", round(mice_UAMI5_OU_pred_min,3)),paste("RB", round(RB_mice_UAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_UASI5_OU_pred,3)),paste("PB", round(PB_mice_UAMI5_OU_pred,3)),paste("CR", round(CR_mice_UAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_UAMI5_OU_pred,3)) ,paste("AW", round(AW_mice_UAMI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_UAMI5_OU_pred,3))))
  
  print(c("RT MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_RT_pred,3)),paste("SE:", round(mean_mice_MAMI80_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_RT_pred,3)),paste("max:", round(mice_MAMI80_RT_pred_max,3)),paste("min:", round(mice_MAMI80_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI80_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_RT_pred,3)),paste("PB", round(PB_mice_MAMI80_RT_pred,3)),paste("CR", round(CR_mice_MAMI80_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI80_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_RT_pred,3))))
  print(c("UT MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_UT_pred,3)),paste("SE:", round(mean_mice_MAMI80_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_UT_pred,3)),paste("max:", round(mice_MAMI80_UT_pred_max,3)),paste("min:", round(mice_MAMI80_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI80_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_UT_pred,3)),paste("PB", round(PB_mice_MAMI80_UT_pred,3)),paste("CR", round(CR_mice_MAMI80_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI80_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_UT_pred,3))))
  print(c("SW MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_SW_pred,3)),paste("SE:", round(mean_mice_MAMI80_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_SW_pred,3)),paste("max:", round(mice_MAMI80_SW_pred_max,3)),paste("min:", round(mice_MAMI80_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI80_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_SW_pred,3)),paste("PB", round(PB_mice_MAMI80_SW_pred,3)),paste("CR", round(CR_mice_MAMI80_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI80_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_SW_pred,3))))
  print(c("OU MAMI80 mice imputation",paste("mean:", round(mean_mice_MAMI80_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI80_OU_pred,3)),paste("SE:", round(mean_mice_MAMI80_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI80_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI80_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI80_OU_pred,3)),paste("max:", round(mice_MAMI80_OU_pred_max,3)),paste("min:", round(mice_MAMI80_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI80_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI80_OU_pred,3)),paste("PB", round(PB_mice_MAMI80_OU_pred,3)),paste("CR", round(CR_mice_MAMI80_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI80_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI80_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI80_OU_pred,3))))
  
  print(c("RT MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_RT_pred,3)),paste("SE:", round(mean_mice_MAMI50_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_RT_pred,3)),paste("max:", round(mice_MAMI50_RT_pred_max,3)),paste("min:", round(mice_MAMI50_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI50_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_RT_pred,3)),paste("PB", round(PB_mice_MAMI50_RT_pred,3)),paste("CR", round(CR_mice_MAMI50_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI50_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_RT_pred,3))))
  print(c("UT MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_UT_pred,3)),paste("SE:", round(mean_mice_MAMI50_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_UT_pred,3)),paste("max:", round(mice_MAMI50_UT_pred_max,3)),paste("min:", round(mice_MAMI50_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI50_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_UT_pred,3)),paste("PB", round(PB_mice_MAMI50_UT_pred,3)),paste("CR", round(CR_mice_MAMI50_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI50_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_UT_pred,3))))
  print(c("SW MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_SW_pred,3)),paste("SE:", round(mean_mice_MAMI50_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_SW_pred,3)),paste("max:", round(mice_MAMI50_SW_pred_max,3)),paste("min:", round(mice_MAMI50_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI50_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_SW_pred,3)),paste("PB", round(PB_mice_MAMI50_SW_pred,3)),paste("CR", round(CR_mice_MAMI50_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI50_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_SW_pred,3))))
  print(c("OU MAMI50 mice imputation",paste("mean:", round(mean_mice_MAMI50_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI50_OU_pred,3)),paste("SE:", round(mean_mice_MAMI50_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI50_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI50_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI50_OU_pred,3)),paste("max:", round(mice_MAMI50_OU_pred_max,3)),paste("min:", round(mice_MAMI50_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI50_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI50_OU_pred,3)),paste("PB", round(PB_mice_MAMI50_OU_pred,3)),paste("CR", round(CR_mice_MAMI50_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI50_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI50_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI50_OU_pred,3))))
  
  print(c("RT MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_RT_pred,3)),paste("SE:", round(mean_mice_MAMI20_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_RT_pred,3)),paste("max:", round(mice_MAMI20_RT_pred_max,3)),paste("min:", round(mice_MAMI20_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI20_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_RT_pred,3)),paste("PB", round(PB_mice_MAMI20_RT_pred,3)),paste("CR", round(CR_mice_MAMI20_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI20_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_RT_pred,3))))
  print(c("UT MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_UT_pred,3)),paste("SE:", round(mean_mice_MAMI20_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_UT_pred,3)),paste("max:", round(mice_MAMI20_UT_pred_max,3)),paste("min:", round(mice_MAMI20_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI20_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_UT_pred,3)),paste("PB", round(PB_mice_MAMI20_UT_pred,3)),paste("CR", round(CR_mice_MAMI20_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI20_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_UT_pred,3))))
  print(c("SW MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_SW_pred,3)),paste("SE:", round(mean_mice_MAMI20_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_SW_pred,3)),paste("max:", round(mice_MAMI20_SW_pred_max,3)),paste("min:", round(mice_MAMI20_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI20_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_SW_pred,3)),paste("PB", round(PB_mice_MAMI20_SW_pred,3)),paste("CR", round(CR_mice_MAMI20_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI20_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_SW_pred,3))))
  print(c("OU MAMI20 mice imputation",paste("mean:", round(mean_mice_MAMI20_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI20_OU_pred,3)),paste("SE:", round(mean_mice_MAMI20_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI20_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI20_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI20_OU_pred,3)),paste("max:", round(mice_MAMI20_OU_pred_max,3)),paste("min:", round(mice_MAMI20_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI20_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI20_OU_pred,3)),paste("PB", round(PB_mice_MAMI20_OU_pred,3)),paste("CR", round(CR_mice_MAMI20_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI20_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI20_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI20_OU_pred,3))))
  
  print(c("RT MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_RT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_RT_pred,3)),paste("SE:", round(mean_mice_MAMI5_RT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_RT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_RT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_RT_pred,3)),paste("max:", round(mice_MAMI5_RT_pred_max,3)),paste("min:", round(mice_MAMI5_RT_pred_min,3)),paste("RB", round(RB_mice_MAMI5_RT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_RT_pred,3)),paste("PB", round(PB_mice_MAMI5_RT_pred,3)),paste("CR", round(CR_mice_MAMI5_RT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_RT_pred,3)) ,paste("AW", round(AW_mice_MAMI5_RT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_RT_pred,3))))
  print(c("UT MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_UT_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_UT_pred,3)),paste("SE:", round(mean_mice_MAMI5_UT_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_UT_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_UT_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_UT_pred,3)),paste("max:", round(mice_MAMI5_UT_pred_max,3)),paste("min:", round(mice_MAMI5_UT_pred_min,3)),paste("RB", round(RB_mice_MAMI5_UT_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_UT_pred,3)),paste("PB", round(PB_mice_MAMI5_UT_pred,3)),paste("CR", round(CR_mice_MAMI5_UT_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_UT_pred,3)) ,paste("AW", round(AW_mice_MAMI5_UT_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_UT_pred,3))))
  print(c("SW MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_SW_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_SW_pred,3)),paste("SE:", round(mean_mice_MAMI5_SW_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_SW_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_SW_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_SW_pred,3)),paste("max:", round(mice_MAMI5_SW_pred_max,3)),paste("min:", round(mice_MAMI5_SW_pred_min,3)),paste("RB", round(RB_mice_MAMI5_SW_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_SW_pred,3)),paste("PB", round(PB_mice_MAMI5_SW_pred,3)),paste("CR", round(CR_mice_MAMI5_SW_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_SW_pred,3)) ,paste("AW", round(AW_mice_MAMI5_SW_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_SW_pred,3))))
  print(c("OU MAMI5 mice imputation",paste("mean:", round(mean_mice_MAMI5_OU_pred,3)),paste("mean_sd:", round(sd_mice_MAMI5_OU_pred,3)),paste("SE:", round(mean_mice_MAMI5_OU_SE,3)),paste("SE_sd:", round(sd_mice_MAMI5_OU_SE,3)),paste("95CI_lower", round(CIlower_mice_MAMI5_OU_pred,3)),paste("95CI_upper", round(CIupper_mice_MAMI5_OU_pred,3)),paste("max:", round(mice_MAMI5_OU_pred_max,3)),paste("min:", round(mice_MAMI5_OU_pred_min,3)),paste("RB", round(RB_mice_MAMI5_OU_pred,3)),paste("RB_sd", round(sd_RB_mice_MASI5_OU_pred,3)),paste("PB", round(PB_mice_MAMI5_OU_pred,3)),paste("CR", round(CR_mice_MAMI5_OU_pred,3)) ,paste("CR_sd", round(sd_CR_mice_MAMI5_OU_pred,3)) ,paste("AW", round(AW_mice_MAMI5_OU_pred,3)),paste("RMSE", round(RMSE_mice_MAMI5_OU_pred,3))))
}
