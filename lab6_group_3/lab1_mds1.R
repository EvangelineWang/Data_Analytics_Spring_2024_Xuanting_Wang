dist.au <- read.csv("http://rosetta.reltech.org/TC/v15/Mapping/data/dist-Aus.csv")
row.names(dist.au) <- dist.au[, 1]
dist.au <- dist.au[, -1]
dist.au
x <- cmdscale(dist.au, eig = TRUE, k = 2)$points[, 1]
y <- cmdscale(dist.au, eig = TRUE, k = 2)$points[, 2]
plot(x, y, pch = 19, xlim = range(x) + c(0, 600))
city.names <- c("Adelaide", "Alice Springs", "Brisbane", "Darwin", "Hobart", "Melbourne", "Perth", "Sydney")
text(x, y, pos = 4, labels = city.names)
