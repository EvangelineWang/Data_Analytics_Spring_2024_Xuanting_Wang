EPI <- read.csv('/Users/evangeline/desktop/Data Analytics/lab4_group_1/2010EPI_data.csv')
EPI_data_name <- EPI[1,]
EPI = EPI[-1,]
colnames(EPI) <- c(EPI_data_name)
summary(EPI) 	# stats
EPI<-as.numeric(EPI_data$EPI)
fivenum(EPI,na.rm=TRUE)
help(stem)
stem(EPI)		 # stem and leaf plot
help(hist)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
help(lines)
lines(density(EPI,na.rm=TRUE,bw=1.)) # or try bw=“SJ”
help(rug)
rug(EPI) 

