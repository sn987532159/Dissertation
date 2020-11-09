#install.packages("mice")
#install.packages("Metrics")
#library(Metrics)
#library(mice)
#library(dplyr)
ptm <- proc.time()

setwd("~/Desktop/dissertation/dataset/")

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

proc.time() - ptm

