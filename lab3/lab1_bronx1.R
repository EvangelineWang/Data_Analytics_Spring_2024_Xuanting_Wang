library(gdata) 
bronx1<-read_xls("/Users/evangeline/desktop/Data Analytics/lab3/rollingsales_bronx.xls")
coln <- bronx1[4,]
bronx1 <- bronx1[-c(1:4),]
colnames(bronx1)<- coln
bronx1<-bronx1[which(bronx1$`GROSS SQUARE FEET`!="0" & bronx1$`LAND SQUARE FEET`!="0" & bronx1$`SALE\nPRICE`!="0"),]
names(bronx1)[names(bronx1) == "SALE\nPRICE"] <- "SALE.PRICE"
names(bronx1)[names(bronx1) == "GROSS SQUARE FEET"] <- "GROSS.SQUARE.FEET"
names(bronx1)[names(bronx1) == "LAND SQUARE FEET"] <- "LAND.SQUARE.FEET"
names(bronx1)[names(bronx1) == "BUILDING CLASS CATEGORY"] <- "BUILDING.CLASS.CATEGORY"
View(bronx1)

SALE.PRICE<-sub("\\$","",SALE.PRICE) 
SALE.PRICE<-as.numeric(gsub(",","", SALE.PRICE)) 
GROSS.SQUARE.FEET<-as.numeric(gsub(",","", GROSS.SQUARE.FEET)) 
LAND.SQUARE.FEET<-as.numeric(gsub(",","", LAND.SQUARE.FEET)) 
plot(log(GROSS.SQUARE.FEET), log(SALE.PRICE)) 
m1<-lm(log(SALE.PRICE)~log(GROSS.SQUARE.FEET))
summary(m1)
abline(m1,col="red",lwd=2)
plot(resid(m1))

# Model 2
m2<-lm(log(SALE.PRICE)~log(GROSS.SQUARE.FEET)+log(LAND.SQUARE.FEET)+factor(NEIGHBORHOOD))
summary(m2)
plot(resid(m2))
m2a <- lm(log(SALE.PRICE) ~ 0 + log(GROSS.SQUARE.FEET) + log(LAND.SQUARE.FEET) + factor(NEIGHBORHOOD))
summary(m2a)
plot(resid(m2a))

# Model 3
m3<-lm(log(SALE.PRICE)~0+log(GROSS.SQUARE.FEET)+log(LAND.SQUARE.FEET)+factor(NEIGHBORHOOD)+factor(bronx1$BUILDING.CLASS.CATEGORY))
summary(m3)
plot(resid(m3))

# Model 4
m4<-lm(log(SALE.PRICE)~0+log(GROSS.SQUARE.FEET)+log(LAND.SQUARE.FEET)+factor(NEIGHBORHOOD)*factor(bronx1$BUILDING.CLASS.CATEGORY))
summary(m4)
plot(resid(m4))
