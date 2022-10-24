#power analysis for Pre-Func
#this is a power analysis for PreFunc to determine sample size 

#load packages 
library(tidyverse)
library(pwr)


#input parameters 
#means & SDs taken from Zangl & Fernald (2007)

M1 = 0.71 #mean accuracy of grammatical article condition 
M2 = 0.67 #mean accuracy of novel article condition 
SD1 = .13 #std of grammatical article condition 
SD2 = .16 #std of novel article condition 

SD_pooled = sqrt((SD1^2 + SD2^2)/2)
d = (M2 - M1)/SD_pooled #effect size 

pwr.t.test(d = d, sig.level = 0.05, power = 0.9, type = "paired",  #determine sample size needed 
           alternative = "two.sided")
