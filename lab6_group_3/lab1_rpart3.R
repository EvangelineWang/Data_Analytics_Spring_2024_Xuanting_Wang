library(e1071)
library(rpart)

data(Glass, package="mlbench")
testindex <- sample(1:nrow(Glass), trunc(length(1:nrow(Glass))/3))

rpart.model <- rpart(Type ~ ., data = Glass[-testindex,])
rpart.pred <- predict(rpart.model, Glass[testindex,][,-10], type = "class")

printcp(rpart.model)
plotcp(rpart.model)

rsq.rpart(rpart.model)
print(rpart.model)

plot(rpart.model,compress=TRUE)
text(rpart.model, use.n=TRUE)
plot(rpart.pred)
