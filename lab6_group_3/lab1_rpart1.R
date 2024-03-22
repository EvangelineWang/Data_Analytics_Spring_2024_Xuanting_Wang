library(rpart)
library(rpart.plot)

swiss_rpart <- rpart(Fertility ~ Agriculture + Education + Catholic, data = swiss)
plot(swiss_rpart)
text(swiss_rpart)

plot(swiss_rpart,main="swiss_rpart")
text(swiss_rpart,cex = .8) 

rpart.plot(swiss_rpart)

