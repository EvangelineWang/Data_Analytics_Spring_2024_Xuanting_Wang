bronx1<-read_xls("/Users/evangeline/desktop/Data Analytics/lab3/rollingsales_bronx.xls")
coln <- bronx1[4,]
bronx1 <- bronx1[-c(1:4),]
colnames(bronx1)<- coln
bronx1<-bronx1[which(bronx1$`GROSS SQUARE FEET`!="0" & bronx1$`LAND SQUARE FEET`!="0" & bronx1$`SALE\nPRICE`!="0"),]
names(bronx1)[names(bronx1) == "SALE\nPRICE"] <- "SALE.PRICE"
names(bronx1)[names(bronx1) == "GROSS SQUARE FEET"] <- "GROSS.SQUARE.FEET"
names(bronx1)[names(bronx1) == "LAND SQUARE FEET"] <- "LAND.SQUARE.FEET"
names(bronx1)[names(bronx1) == "BUILDING CLASS CATEGORY"] <- "BUILDING.CLASS.CATEGORY"
names(bronx1)[names(bronx1) == "SALE DATE"] <- "SALE.DATE"
names(bronx1)[names(bronx1) == "YEAR BUILT"] <- "YEAR.BUILT"
names(bronx1)[names(bronx1) == "ZIP CODE"] <- "ZIP.CODE"
bronx1$SALE.PRICE<-sub("\\$","",bronx1$SALE.PRICE) 
bronx1$SALE.PRICE<-as.numeric(gsub(",","", bronx1$SALE.PRICE)) 
bronx1$GROSS.SQUARE.FEET<-as.numeric(gsub(",","", bronx1$GROSS.SQUARE.FEET)) 
bronx1$LAND.SQUARE.FEET<-as.numeric(gsub(",","", bronx1$LAND.SQUARE.FEET)) 
#bronx1$SALE.DATE<- as.Date(gsub("[^]:digit:]]","",bronx1$SALE.DATE))
bronx1$SALE.DATE <- as.Date(gsub("[^\\d]", "", bronx1$SALE.DATE), format="%Y%m%d")
#bronx1$YEAR.BUILT<- as.numeric(gsub("[^]:digit:]]","",bronx1$YEAR.BUILT)) 
bronx1$YEAR.BUILT<- as.numeric(gsub("[^\\d]", "", bronx1$YEAR.BUILT), format="%Y%m%d") 
#bronx1$ZIP.CODE<- as.character(gsub("[^]:digit:]]","",bronx1$ZIP.CODE)) 
bronx1$ZIP.CODE<- as.character(gsub("[^\\d]", "", bronx1$ZIP.CODE), format="%Y%m%d")
minprice<-10000
bronx1<-bronx1[which(bronx1$SALE.PRICE>=minprice),]
nval<-dim(bronx1)[1]
bronx1$ADDRESSONLY<- gsub("[,][[:print:]]*","",gsub("[ ]+","",trim(bronx1$ADDRESS))) 
bronxadd<-unique(data.frame(bronx1$ADDRESSONLY, bronx1$ZIP.CODE,stringsAsFactors=FALSE)) 
names(bronxadd)<-c("ADDRESSONLY","ZIP.CODE") 
bronxadd<-bronxadd[order(bronxadd$ADDRESSONLY),] 
duplicates<-duplicated(bronx1$ADDRESSONLY)

for(i in 1:2345) {
  if(duplicates[i]==FALSE) dupadd<-bronxadd[bronxadd$duplicates,1]}

nsample=450
addsample <- bronxadd[sample.int(n = dim(bronxadd)[1], size = nsample),]
addrlist<-paste(addsample$ADDRESSONLY, "NY", addsample$ZIP.CODE, "US", sep=" ") 