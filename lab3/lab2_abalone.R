aba <- read.csv("/Users/evangeline/desktop/Data Analytics/lab3/abalone.csv")
naba<-dim(aba)[1]
sampling.rate=0.9
num.test.set.labels=naba*(1.-sampling.rate)
training <-sample(1:naba,sampling.rate*naba, replace=FALSE)
train<-subset(aba[training,],select=c("Sex","Length","Diameter","Height","Whole.weight","Shucked.weight","Viscera.weight","Shell.weight"))
testing<-setdiff(1:naba,training)
test<-subset(aba[testing,],select=c("Sex","Length","Diameter","Height","Whole.weight","Shucked.weight","Viscera.weight","Shell.weight"))
crings<-aba$Rings[training]
true.labels<-aba$Rings[testing]
classif<-knn(train,test,crings,k=5)
classif
attributes(.Last.value)