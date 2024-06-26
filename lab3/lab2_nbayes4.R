library(ElemStatLearn)
library(klaR)
library(caret)
data(spam, package="ElemStatLearn")
sub = sample(nrow(spam), floor(nrow(spam) * 0.9))
train = spam[sub,]
test = spam[-sub,]
xTrain = train[,-58]
yTrain = train$spam
xTest = test[,-58]
yTest = test$spam
model = train(xTrain,yTrain,'nb',trControl=trainControl(method='cv',number=10))
prop.table(table(predict(model$finalModel,xTest)$class,yTest))
train.ind <- sample(1:nrow(spam), ceiling(nrow(spam)*2/3), replace=FALSE)
nb.res <- NaiveBayes(spam ~ ., data=spam[train.ind,])
nb.pred <- predict(nb.res, spam[-train.ind,])
head(predict(nb.res))