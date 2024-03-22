library(rpart)
library(party)
library(tree)
library(rpart.plot)

plot(rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss))
text(rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss))

plot(ctree(Species ~ ., data=iris))
cforest(Species ~ ., data=iris, controls=cforest_control(mtry=2, mincriterion=0))
treeFert<-ctree(Fertility ~ Agriculture + Education + Catholic, data = swiss)
cforest(Fertility ~ Agriculture + Education + Catholic, data = swiss, controls=cforest_control(mtry=2, mincriterion=0))

tree(Species ~ ., data=iris)
tree(Species ~ ., data=iris)$frame
plot(tree(Species ~ ., data=iris))
text(tree(Species ~ ., data=iris))

fit <- rpart(Species ~ ., data=iris)
rpart.plot(fit, type=0, extra=101)

