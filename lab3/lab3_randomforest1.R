library(randomForest)
fitKF <- randomForest(Kyphosis ~ Age + Number + Start,   data=kyphosis)
print(fitKF)
importance(fitKF)
fitSwiss <- randomForest(Fertility ~ Agriculture + Education + Catholic, data = swiss)
print(fitSwiss) # view results
importance(fitSwiss) # importance of each predictor
varImpPlot(fitSwiss)
plot(fitSwiss)
getTree(fitSwiss,1, labelVar=TRUE)
data(imports85)
