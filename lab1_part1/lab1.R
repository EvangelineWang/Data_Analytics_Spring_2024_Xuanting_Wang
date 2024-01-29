EPI_data<-read.csv('/Users/evangeline/desktop/Data Analytics/lab1/2010EPI_data.csv')
#View(EPI_data)
names <- EPI_data[1,]
EPI_data = EPI_data[-1,]
colnames(EPI_data) <- c(names)
attach(EPI_data)
#fix(EPI_data)
EPI_data

#Exercise 1 
#histogram for the EPI
EPI_numbers <- EPI_data$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw=1.))
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

#histogram for the DALY
DALY_numbers <- EPI_data$DALY
DALY_numbers <- as.numeric(DALY_numbers)
tf <- is.na(DALY)
DALY <- DALY_numbers[!tf]
summary(DALY)
fivenum(DALY, na.rm = TRUE)
stem(DALY)
hist(DALY)
hist(DALY, seq(30., 95., 1.0), prob=TRUE)
lines(density(DALY,na.rm=TRUE,bw="SJ"))
rug(DALY) 

boxplot(EPI,DALY) 
qqplot(EPI,DALY)

plot(ecdf(DALY), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(DALY)
qqline(DALY)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))


ENVHEALTH_numbers <- EPI_data$ENVHEALTH
ENVHEALTH_numbers <- as.numeric(ENVHEALTH_numbers)
tf <- is.na(ENVHEALTH)
ENVHEALTH <- ENVHEALTH_numbers[!tf]
summary(ENVHEALTH)
fivenum(ENVHEALTH, na.rm = TRUE)
stem(ENVHEALTH)
hist(ENVHEALTH)
hist(ENVHEALTH, seq(30., 95., 1.0), prob=TRUE)
lines(density(ENVHEALTH,na.rm=TRUE,bw="SJ"))
rug(ENVHEALTH) 

boxplot(EPI,ENVHEALTH) 
qqplot(EPI,ENVHEALTH)

plot(ecdf(ENVHEALTH), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(ENVHEALTH)
qqline(ENVHEALTH)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

ECOSYSTEM_numbers <- EPI_data$ECOSYSTEM
ECOSYSTEM_numbers <- as.numeric(ECOSYSTEM_numbers)
tf <- is.na(ECOSYSTEM)
ECOSYSTEM <- ECOSYSTEM_numbers[!tf]
summary(ECOSYSTEM)
fivenum(ECOSYSTEM, na.rm = TRUE)
stem(ECOSYSTEM)
hist(ECOSYSTEM, seq(30., 95., 1.0), prob=TRUE)
lines(density(ECOSYSTEM,na.rm=TRUE,bw="SJ"))
rug(ECOSYSTEM) 

boxplot(EPI,ECOSYSTEM) 
qqplot(EPI,ECOSYSTEM)

plot(ecdf(ECOSYSTEM), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(ECOSYSTEM)
qqline(ECOSYSTEM)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

AIR_H_numbers <- EPI_data$AIR_H
AIR_H_numbers <- as.numeric(AIR_H_numbers)
tf <- is.na(AIR_H)
AIR_H <- AIR_H_numbers[!tf]
summary(AIR_H)
fivenum(AIR_H, na.rm = TRUE)
stem(AIR_H)
hist(AIR_H, seq(30., 95., 1.0), prob=TRUE)
lines(density(AIR_H,na.rm=TRUE,bw="SJ"))
rug(AIR_H) 

boxplot(EPI,AIR_H) 
qqplot(EPI,AIR_H)

plot(ecdf(AIR_H), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(AIR_H)
qqline(AIR_H)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

WATER_H_numbers <- EPI_data$WATER_H
WATER_H_numbers <- as.numeric(WATER_H_numbers)
tf <- is.na(WATER_H)
WATER_H <- WATER_H_numbers[!tf]
summary(WATER_H)
fivenum(WATER_H, na.rm = TRUE)
stem(WATER_H)
hist(WATER_H, seq(30., 95., 1.0), prob=TRUE)
lines(density(WATER_H,na.rm=TRUE,bw="SJ"))
rug(WATER_H) 

boxplot(EPI,WATER_H) 
qqplot(EPI,WATER_H)

plot(ecdf(WATER_H), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(WATER_H)
qqline(WATER_H)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

BIODIVERSITY_numbers <- EPI_data$BIODIVERSITY
BIODIVERSITY_numbers <- as.numeric(BIODIVERSITY_numbers)
tf <- is.na(BIODIVERSITY)
BIODIVERSITY <- BIODIVERSITY_numbers[!tf]
summary(BIODIVERSITY)
fivenum(BIODIVERSITY, na.rm = TRUE)
stem(BIODIVERSITY)
hist(BIODIVERSITY, seq(30., 95., 1.0), prob=TRUE)
lines(density(BIODIVERSITY,na.rm=TRUE,bw="SJ"))
rug(BIODIVERSITY) 

boxplot(EPI,BIODIVERSITY) 
qqplot(EPI,BIODIVERSITY)

plot(ecdf(BIODIVERSITY), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(BIODIVERSITY)
qqline(BIODIVERSITY)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))


#Exercise 2
EPILand <- EPI_data[Landlock==1,]
Eland <- EPILand[!is.na(EPILand),]
Eland$EPI <- as.numeric(Eland$EPI)
hist(Eland$EPI)
hist(Eland$EPI, seq(30., 95., 1.0), prob=TRUE)

EPI_numbers <- Eland$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

EPINSW <- EPI_data[No_surface_water==1,]
EPINSW <- EPINSW[!is.na(EPINSW),]
EPINSW$EPI <- as.numeric(EPINSW$EPI)
hist(EPINSW$EPI)
hist(EPINSW$EPI, seq(30., 95., 1.0), prob=TRUE)

EPI_numbers <- EPINSW$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

EPID <- EPI_data[Desert==1,]
EPID <- EPID[!is.na(EPID),]
EPID$EPI <- as.numeric(EPID$EPI)
hist(EPID$EPI)
hist(EPID$EPI, seq(30., 95., 1.0), prob=TRUE)

EPI_numbers <- EPID$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

EPIHPD <- EPI_data[High_Population_Density==1,]
EPIHPD <- EPIHPD[!is.na(EPIHPD),]
EPIHPD$EPI <- as.numeric(EPIHPD$EPI)
hist(EPIHPD$EPI)
hist(EPIHPD$EPI, seq(30., 95., 1.0), prob=TRUE)

EPI_numbers <- EPIHPD$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

library(magrittr)
library(dplyr) 
levels(as.factor(EPI_data$EPI_regions))
EPI_South_Asia <- EPI_data %>% 
  select(c('EPI','EPI_regions','GEO_subregion' )) %>%
  mutate(EPI_regions=as.numeric(ordered(EPI_regions, levels = c("South Asia","East Asia and the Pacific", 
                                                                "Eastern Europe and Central Asia","Europe",
                                                                "Latin America and Caribbean","Middle East and North Africa",
                                                                "North America","Sub-Saharan Africa"))))
EPI_South_Asia <- EPI_South_Asia[EPI_South_Asia$EPI_regions==1,]
EPI_South_Asia <- EPI_South_Asia[!is.na(EPI_South_Asia$EPI),]
EPI_numbers <- EPI_South_Asia$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

levels(as.factor(EPI_data$GEO_subregion))
EPI_South_Asia1 <- EPI_data %>% 
  select(c('EPI','EPI_regions','GEO_subregion' )) %>%
  mutate(GEO_subregion=as.numeric(ordered(GEO_subregion, levels = c(
    "South Asia","Arabian Peninsula","Australia and New Zealand", "Caribbean", 
    "Central Africa","Central Asia","Central Europe","Eastern Africa","Eastern Europe",
    "Mashriq", "Meso America","North America","Northeast Asia","Northern Africa",
    "South America","South East Asia","South Pacific","Southern Africa",
    "Western Africa","Western Europe","Western Indian Ocean" ))))
EPI_South_Asia1 <- EPI_South_Asia1[EPI_South_Asia1$GEO_subregion==1,]
EPI_South_Asia1 <- EPI_South_Asia1[!is.na(EPI_South_Asia1$EPI),]
EPI_numbers <- EPI_South_Asia1$EPI
EPI_numbers <- as.numeric(EPI_numbers)
tf <- is.na(EPI)
EPI <- EPI_numbers[!tf]
summary(EPI)
fivenum(EPI, na.rm = TRUE)
stem(EPI)
hist(EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
rug(EPI) 

plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI)
qqline(EPI)
qqplot(qt(ppoints(250), df = 5), seq(30,95,1), xlab = "Q-Q plot for t dsn")
qqline(seq(30,95,1))

EPI_data$DALY<-as.numeric(EPI_data$DALY)
EPI_data$EPI<-as.numeric(EPI_data$EPI)
shapiro.test(EPI_data$DALY)

library(readxl)
excel_sheets('/Users/evangeline/desktop/Data Analytics/lab1/2010EPI_data.xls')
EPI_data_xls <- read_xls('/Users/evangeline/desktop/Data Analytics/lab1/2010EPI_data.xls',sheet = 4)

summary(EPI_data_xls$EPI)
fivenum(EPI_data$EPI,na.rm = TRUE)
fivenum(EPI_data_xls$EPI,na.rm=TRUE)
boxplot(EPI_data_xls$EPI)

hist(EPI_data_xls$EPI)
hist(EPI,seq(30.,95.,1.0), prob=TRUE)
lines(density(EPI,na.rm=TRUE,bw="SJ"))
df <- data.frame(EPI_data_xls$Population07,EPI_data_xls$WATER_H)
df$EPI_data_xls.Population07<- as.numeric(df$EPI_data_xls.Population07)
df <- df[!is.na(df),]
plot(df)

GPW3_data <- read.csv('/Users/evangeline/desktop/Data Analytics/lab1/GPW3_GRUMP_SummaryInformation_2010.csv')
summary(GPW3_data)
GPW3 <- as.numeric(GPW3_data$PopulationPerUnit)
tf <- is.na(GPW3)
GPW3 <- GPW3[!tf]
fivenum(GPW3,na.rm=TRUE)
min_data <- min(GPW3,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(GPW3,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(GPW3, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(GPW3,na.rm=TRUE,bw="SJ"))
rug(GPW3) 

plot(ecdf(GPW3), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(GPW3); qqline(GPW3)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

GPW3 <- as.numeric(GPW3_data$RefYearFirst)
tf <- is.na(GPW3)
GPW3 <- GPW3[!tf]
fivenum(GPW3,na.rm=TRUE)
min_data <- min(GPW3,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(GPW3,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(GPW3, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(GPW3,na.rm=TRUE,bw="SJ"))
rug(GPW3) 

plot(ecdf(GPW3), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(GPW3); qqline(GPW3)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

GPW3 <- as.numeric(GPW3_data$Diff00)
tf <- is.na(GPW3)
GPW3 <- GPW3[!tf]
fivenum(GPW3,na.rm=TRUE)
min_data <- min(GPW3,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(GPW3,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(GPW3, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(GPW3,na.rm=TRUE,bw="SJ"))
rug(GPW3) 

plot(ecdf(GPW3), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(GPW3); qqline(GPW3)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

GPW3 <- as.numeric(GPW3_data$Diff95)
tf <- is.na(GPW3)
GPW3 <- GPW3[!tf]
fivenum(GPW3,na.rm=TRUE)
min_data <- min(GPW3,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(GPW3,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(GPW3, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(GPW3,na.rm=TRUE,bw="SJ"))
rug(GPW3) 

plot(ecdf(GPW3), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(GPW3); qqline(GPW3)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

GPW3 <- as.numeric(GPW3_data$Diff90)
tf <- is.na(GPW3)
GPW3 <- GPW3[!tf]
fivenum(GPW3,na.rm=TRUE)
min_data <- min(GPW3,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(GPW3,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(GPW3, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(GPW3,na.rm=TRUE,bw="SJ"))
rug(GPW3) 

plot(ecdf(GPW3), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(GPW3); qqline(GPW3)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

temp <- data.frame(as.numeric(GPW3_data$Diff90),as.numeric(GPW3_data$Diff95),as.numeric(GPW3_data$Diff00))
colnames(temp)<-c("Diff90","Diff95","Diff00")
boxplot(temp)

water_treatment <- read.csv('/Users/evangeline/desktop/Data Analytics/lab1/water-treatment.csv')
summary(water_treatment)
water <- as.numeric(water_treatment$SS.E)
tf <- is.na(water)
water <- water[!tf]
fivenum(water,na.rm=TRUE)
min_data <- min(water,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(water,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(water, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(water,na.rm=TRUE,bw="SJ"))
rug(water) 

plot(ecdf(water), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(water); qqline(water)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

water <- as.numeric(water_treatment$SSV.E)
tf <- is.na(water)
water <- water[!tf]
fivenum(water,na.rm=TRUE)
min_data <- min(water,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(water,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(water, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(water,na.rm=TRUE,bw="SJ"))
rug(water) 

plot(ecdf(water), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(water); qqline(water)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

water <- as.numeric(water_treatment$SSV.P)
tf <- is.na(water)
water <- water[!tf]
fivenum(water,na.rm=TRUE)
min_data <- min(water,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(water,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(water, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(water,na.rm=TRUE,bw="SJ"))
rug(water) 

plot(ecdf(water), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(water); qqline(water)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

temp <- data.frame(as.numeric(water_treatment$SSV.S),as.numeric(water_treatment$SSV.P),
                   as.numeric(water_treatment$SSV.E),as.numeric(water_treatment$SSV.D))
colnames(temp)<-c("SSV.S","SSV.P","SSV.E","SSV.D")
summary(temp)
boxplot(temp)

library(readxl)
excel_sheets('/Users/evangeline/desktop/Data Analytics/lab1/2016EPI_Raw_Data.xls')
EPI_data_xls <- read_xls('/Users/evangeline/desktop/Data Analytics/lab1/2016EPI_Raw_Data.xls',sheet = 3)
summary(EPI_data_xls)
EPI_data_xls <- EPI_data_xls[,-c(1:3)]
EPI_data_xls[EPI_data_xls<=-9999] <- NA
summary(EPI_data_xls)
EPI_data_xls <- na.omit(EPI_data_xls)
boxplot(EPI_data_xls,scale = TRUE,center = TRUE)

EPI_data <- as.numeric(EPI_data_xls$ACSAT.2009)
tf <- is.na(EPI_data)
EPI_data <- EPI_data[!tf]
fivenum(EPI_data,na.rm=TRUE)
min_data <- min(EPI_data,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(EPI_data,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(EPI_data, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(EPI_data,na.rm=TRUE,bw="SJ"))
rug(EPI_data) 

plot(ecdf(EPI_data), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI_data); qqline(EPI_data)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)

EPI_data <- as.numeric(EPI_data_xls$ACSAT.2010)
tf <- is.na(EPI_data)
EPI_data <- EPI_data[!tf]
fivenum(EPI_data,na.rm=TRUE)
min_data <- min(EPI_data,na.rm = TRUE)
min_data <- floor(min_data)
max_data <- max(EPI_data,na.rm = TRUE)
max_data <- ceiling(max_data)
hist(EPI_data, seq(min_data, max_data, 1.0), prob=TRUE)
lines(density(EPI_data,na.rm=TRUE,bw="SJ"))
rug(EPI_data) 

plot(ecdf(EPI_data), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI_data); qqline(EPI_data)
x <- seq(min_data, max_data, 1.0)
qqplot(qt(ppoints(250), df = 5), x, xlab = "Q-Q plot for t dsn")
qqline(x)
