# GRIP : The Sparks Foundation
# Data Science and Business Analytics Intern
# Author : Raj Sankar GS
# Task1 : Prediction Using Supervised ML
# Predict the percentage of a student based on the no.of study hours 
# (simple linear regression)

library(ggplot2)

study_hours = read.csv(file.choose())
study_hours

#Creating the linear regression model
reg_model = lm(Scores~Hours, data = study_hours)
reg_model

#Plotting the regression model
ggplot(reg_model,aes(Hours,Scores)) + geom_point() + stat_smooth(method = lm)

#Creating the prediction parameter
new_Hours = data.frame(Hours = 9.25)
new_Hours

#Doing the prediction in 95% Confidence interval
predict(reg_model, newdata = new_Hours)

#So as per the prediction a student studying 9.25 hrs a day should score around
#92.9

