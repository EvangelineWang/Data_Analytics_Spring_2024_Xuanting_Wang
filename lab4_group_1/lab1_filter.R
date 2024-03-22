EPI_data <- read.csv('/Users/evangeline/desktop/Data Analytics/lab4_group_1/2010EPI_data.csv')
EPI_data_name <- EPI_data[1,]
EPI_data = EPI_data[-1,]
colnames(EPI_data) <- c(EPI_data_name)
summary(EPI_data)
EPI<-EPI_data
EPILand<-EPI[EPI$Landlock != 0, ]
hist(as.numeric(EPILand[!is.na(EPILand$EPI),]$EPI))
hist(as.numeric(EPILand[!is.na(EPILand$EPI),]$EPI), seq(30., 95., 1.0), prob=TRUE)

