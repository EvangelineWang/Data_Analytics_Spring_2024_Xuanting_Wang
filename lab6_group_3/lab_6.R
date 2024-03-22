library(rpart)
abalone <- read.csv('/Users/evangeline/desktop/Data Analytics/lab6_group_3/abalone.csv')
plot(rpart(Rings ~ ., data=abalone, method="anova"))
text(rpart(Rings ~ ., data=abalone, method="anova"), use.n=TRUE)
cp_values <- rpart(Rings ~ ., data=abalone, method="anova")$cptable[, "CP"]
best_cp <- cp_values[which.min(rpart(Rings ~ ., data=abalone, method="anova")$cptable[, "xerror"])]
plot(prune(rpart(Rings ~ ., data=abalone, method="anova"), cp=best_cp))
text(prune(rpart(Rings ~ ., data=abalone, method="anova"), cp=best_cp), use.n=TRUE)