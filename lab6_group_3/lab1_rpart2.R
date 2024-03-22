# Regression Tree Example
require(rpart)

# build the  tree
fitM <- rpart(Mileage~Price + Country + Reliability + Type, method="anova", data=cu.summary)
printcp(fitM) # display the results
plotcp(fitM)
summary(fitM)
par(mfrow=c(1,2)) 
rsq.rpart(fitM) # visualize cross-validation results

# plot tree
plot(fitM, uniform=TRUE, main="Regression Tree for Mileage ")
text(fitM, use.n=TRUE, all=TRUE, cex=.8)

# prune the tree
pfitM<- prune(fitM, cp=0.01160389)

# plot the pruned tree
plot(pfitM, uniform=TRUE, main="Pruned Regression Tree for Mileage")
text(pfitM, use.n=TRUE, all=TRUE, cex=.8)
post(pfitM, file = "ptree2.ps", title = "Pruned Regression Tree for Mileage")

pfitM<- prune(fitM, cp=0.5)
plot(pfitM, uniform=TRUE, main="Pruned Regression Tree for Mileage")
text(pfitM, use.n=TRUE, all=TRUE, cex=.8)
post(pfitM, file = "ptree2.ps", title = "Pruned Regression Tree for Mileage")


# The `cp=0.01160389` value may be derived from the complexity parameter table (cptable) of the full tree,
# indicating the extent of tree pruning. This parameter helps determine the pruning level,
# affecting the complexity of the resulting tree.
# On the other hand, `cp=0.5` represents a significantly higher complexity parameter,
# leading to a more extensively pruned tree. Such a tree would be simpler, featuring fewer splits.
# Experimenting with various `cp` values is crucial to strike an optimal balance between
# the tree's complexity and its prediction accuracy.
