library(kknn)
spam.kknn <- kknn(spam~., train, test, distance = 1,kernel = "triangular")
summary(spam.kknn)
