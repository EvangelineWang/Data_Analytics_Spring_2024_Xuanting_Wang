pairs(iris[1:4], main = "Anderson's Iris Data -- 3 species",pch = 21, bg = c("red", "green3", "blue")[unclass(iris$Species)])
pairs(iris[-5], log = "xy")
pairs(iris, log = 1:4,main = "Lengths and Widths in [log]", line.main=1.5, oma=c(2,2,3,2))
pairs(~ Fertility + Education + Catholic, data = swiss,subset = Education < 20, main = "Swiss data, Education < 20")
pairs(USJudgeRatings)
pairs(USJudgeRatings, text.panel = NULL, upper.panel = NULL)
panel.hist <- function(x, ...){
    usr <- par("usr"); on.exit(par(usr))
    par(usr = c(usr[1:2], 0, 1.5) )
    h <- hist(x, plot = FALSE)
    breaks <- h$breaks; nB <- length(breaks)
    y <- h$counts; y <- y/max(y)
    rect(breaks[-nB], 0, breaks[-1], y, col = "cyan", ...)}
pairs(USJudgeRatings[1:5], panel = panel.smooth,
      cex = 1.5, pch = 24, bg = "light blue",
      diag.panel = panel.hist, cex.labels = 2, font.labels = 2)
panel.cor <- function(x, y, digits = 2, prefix = "", cex.cor, ...){
    usr <- par("usr"); on.exit(par(usr))
    par(usr = c(0, 1, 0, 1))
    r <- abs(cor(x, y))
    txt <- format(c(r, 0.123456789), digits = digits)[1]
    txt <- paste0(prefix, txt)
    if(missing(cex.cor)) cex.cor <- 0.8/strwidth(txt)
    text(0.5, 0.5, txt, cex = cex.cor * r)}
pairs(USJudgeRatings, lower.panel = panel.smooth, upper.panel = panel.cor)

