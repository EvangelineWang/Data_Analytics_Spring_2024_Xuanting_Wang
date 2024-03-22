library(graphics)

x <- cmdscale(eurodist)[, 1]
y <- -cmdscale(eurodist)[, 2] # reflect so North is at the top
## note asp = 1, to ensure Euclidean distances are represented correctly
plot(x, y, type = "n", xlab = "", ylab = "", asp = 1, axes = FALSE, main = "cmdscale(eurodist)")
text(x, y, rownames(cmdscale(eurodist)), cex = 0.6)