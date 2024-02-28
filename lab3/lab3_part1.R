# Exercise 1
set.seed(12345)
data_m <- matrix(rnorm(400), nrow = 40)
plot_image_corrected <- function(data, main = NULL) {
  x_dim <- 1:ncol(data)
  y_dim <- 1:nrow(data)
  par(mar = rep(0.2, 4))
  image(x_dim, y_dim, t(data), main = main)
}

plot_image_corrected(data_m, "Initial Image")
heatmap(data_m, margins = c(5, 5))

set.seed(678910)
for(i in 1:nrow(data_m)) {
  coin_flip <- rbinom(1, size = 1, prob = 0.5)
  if(coin_flip == 1) {
    data_m[i, ] <- data_m[i, ] + rep(c(0, 3), each = 5)
  }
}

plot_image_corrected(data_m, "Transformed Image")
heatmap(data_m, margins = c(5, 5))
temp <- hclust(dist(data_m))
ordered_matrix <- data_m[temp$order,]

par(mfrow = c(1, 3))
plot_image_corrected(ordered_matrix, "Ordered Matrix")
plot(rowMeans(ordered_matrix), 40:1, xlab = "The Row Mean", ylab = "Row", pch = 19)
plot(colMeans(ordered_matrix), xlab = "Column", ylab = "Column Mean", pch = 19)

# Exercise 2
abalone <- read.csv("/Users/evangeline/desktop/Data Analytics/lab3/abalone.csv")
library(class)
abalone$Sex <- match(abalone$Sex, c('M', 'I', 'F'))
naba <- nrow(abalone) 
sampling.rate <- 0.9
num.test.set.labels <- naba * (1 - sampling.rate)
set.seed(123)
training_indices <- sample(naba, size = sampling.rate * naba, replace = FALSE)
testing_indices <- setdiff(1:naba, training_indices)
selected_col <- c("Diameter","Height","Length","Sex","Shell.weight","Shucked.weight","Viscera.weight","Whole.weight")
train <- abalone[training_indices, selected_col]
test <- abalone[testing_indices, selected_col]
crings <- abalone$Rings[training_indices]
true.labels <- abalone$Rings[testing_indices]
classif <- knn(train = train, test = test, cl = crings, k = 5)
print(classif)
attributes(classif)

#Exercise 3
library(datasets)
library(stats)
data("iris")
summary(iris)
iris_cluster <- iris[, -5]
set.seed(123)
kmeans_result <- kmeans(iris_cluster, centers = 3, nstart = 25, iter.max = 1000)
iris$Cluster <- kmeans_result$cluster
colnames(iris) <- c("Cluster","Petal.Length", "Petal.Width","Sepal.Length", "Sepal.Width" )
summary(iris)



