#############################################
# Aaron Gullickson
# This script will look at the relationship
# between education and beliefs about global
# warming
#############################################

#load the data
load("politics.RData")

#create crosstab of education by global warming beliefs
tab.globalwarm <- table(politics$educ, politics$globalwarm)

#calculate distribution of belief conditional on education
percent.globalwarm <- 100*prop.table(tab,1)
barplot(percent.globalwarm)

#calculate odds ratios
OR <- tab.globalwarm[1:4,1]*tab.globalwarm[2:5,2]/tab.globalwarm[2:5,1]*tab.globalwarm[1:4,2]
plot(OR, type="b")
