######################################################################################################
#  Monitoring Farm Bankruptcy
#  Reference: http://www.ers.usda.gov/media/479214/aib788_1_.pdf
#             http://nationalaglawcenter.org/wp-content/uploads/assets/crs/RS20742.pdf
#  Data: http://www.uscourts.gov/statistics/table/f-2/bankruptcy-filings/2015/03/31
######################################################################################################
#install.packages("readxl")
library(readxl)
#library(RCurl)
#library(xlsx)
library(httr)
######################################################################################################
### Load in historical data
#  Time series
bkrpt.series =read.table("e:/temp/bnkrpt_history.txt")
colnames(bkrpt.series) = c("Year", "Farms" ,"Sharecroppers", "FarmslessChare", "BankruptcyFiled",
                           "Bkrptpertenthou", "BkrptpertenthouExcl")
# Regional Chapter 12
# Appendix table 2--Chapter 12 farmer bankruptcy case filings by farm production region, 1986-2002
reg.ch12= read.table("e:/temp/reg_ch12.txt")
colnames(reg.ch12) = c("Year", " Northeast " ,"Lake States", "Corn Belt", "Northern Plains",
                       "Appalachian", "Southeast", "Delta", "Southern Plains", "Mountain",
                           "Pacific", "US")
######################################################################################################

urlcourt1 = "http://www.uscourts.gov/file/18007/download?token=ISgyJAQk"
GET(urlcourt1, write_disk("temp1.xls", overwrite=TRUE))
bkrpt.032015_f2 <- read_excel("temp1.xls", col_names = FALSE, skip=4)

ch12.2015 <- as.numeric(bkrpt.032015_f2$X10[1])
file.2015 <- as.numeric(bkrpt.032015_f2$X10)

urlcourt2 = "http://www.uscourts.gov/file/14241/download?token=6CFb_3T8"
GET(urlcourt2, write_disk("temp2.xls", overwrite=TRUE))
bkrpt.122014_f2 <- read_excel("temp2.xls", col_names = FALSE, skip=4)

ch12.2014 <- as.numeric(bkrpt.122014_f2$X10[1])
file.2014 <- as.numeric(bkrpt.122014_f2$X10)

urlcourt3 = "http://www.uscourts.gov/file/10937/download?token=FMEytKZd"
GET(urlcourt3, write_disk("temp3.xls", overwrite=TRUE))
bkrpt.122013_f2 <- read_excel("temp3.xls", col_names = FALSE, skip=4)

ch12.2013 <- as.numeric(bkrpt.122013_f2$X10[1])
file.2013  <- as.numeric(bkrpt.122013_f2$X10)

urlcourt4 = "http://www.uscourts.gov/file/10929/download?token=wIJcFc4X"
GET(urlcourt4, write_disk("temp4.xls", overwrite=TRUE))
bkrpt.122012_f2 <- read_excel("temp4.xls", col_names = FALSE, skip=4)

ch12.2012 <- as.numeric(bkrpt.122012_f2$X10[1])
file.2012  <- as.numeric(bkrpt.122012_f2$X10)

urlcourt5 = "http://www.uscourts.gov/file/10921/download?token=azgS3Qta"
GET(urlcourt5, write_disk("temp5.xls", overwrite=TRUE))
bkrpt.122011_f2 <- read_excel("temp5.xls", col_names = FALSE, skip=4)

ch12.2011 <- as.numeric(bkrpt.122011_f2$X10[1])
file.2011  <- as.numeric(bkrpt.122011_f2$X10)

urlcourt6 = "http://www.uscourts.gov/file/10913/download?token=sgRwpf4y"
GET(urlcourt6, write_disk("temp6.xls", overwrite=TRUE))
bkrpt.122010_f2 <- read_excel("temp6.xls", col_names = FALSE, skip=4)

ch12.2010 <- as.numeric(bkrpt.122010_f2$X10[1])
file.2010  <- as.numeric(bkrpt.122010_f2$X10)

urlcourt7 = "http://www.uscourts.gov/file/10905/download?token=QSpS4pCB"
GET(urlcourt7, write_disk("temp7.xls", overwrite=TRUE))
bkrpt.122009_f2 <- read_excel("temp7.xls", col_names = FALSE, skip=4)

ch12.2009 <- as.numeric(bkrpt.122009_f2$X10[1])
file.2009  <- as.numeric(bkrpt.122009_f2$X10)

urlcourt8 = "http://www.uscourts.gov/file/10897/download?token=DwjfKBFh"
GET(urlcourt8, write_disk("temp8.xls", overwrite=TRUE))
bkrpt.122008_f2 <- read_excel("temp8.xls", col_names = FALSE, skip=14)

ch12.2008 <- as.numeric(bkrpt.122008_f2$X10[1])
file.2008  <- as.numeric(bkrpt.122008_f2$X10)

urlcourt9 = "http://www.uscourts.gov/file/10889/download?token=tVfUAdZT"
GET(urlcourt9, write_disk("temp9.xls", overwrite=TRUE))
bkrpt.122007_f2 <- read_excel("temp9.xls", col_names = FALSE, skip=14)

ch12.2007 <- as.numeric(bkrpt.122007_f2$X10[1])
file.2007  <- as.numeric(bkrpt.122007_f2$X10)

urlcourt10 = "http://www.uscourts.gov/file/10883/download?token=GtNslhQN"
GET(urlcourt10, write_disk("temp10.xls", overwrite=TRUE))
bkrpt.122006_f2 <- read_excel("temp10.xls", col_names = FALSE, skip=14)

ch12.2006 <- as.numeric(bkrpt.122006_f2$X10[1])
file.2006  <- as.numeric(bkrpt.122006_f2$X10)

urlcourt11 = "http://www.uscourts.gov/file/10880/download?token=Z4CtgOHA"
GET(urlcourt11, write_disk("temp11.xls", overwrite=TRUE))
bkrpt.122005_f2 <- read_excel("temp11.xls", col_names = FALSE, skip=14)

ch12.2005 <- as.numeric(bkrpt.122005_f2$X10[1])
file.2005  <- as.numeric(bkrpt.122005_f2$X10)

urlcourt12 = "http://www.uscourts.gov/file/10875/download?token=Wv_5NxtI"
GET(urlcourt12, write_disk("temp12.xls", overwrite=TRUE))
bkrpt.122004_f2 <- read_excel("temp12.xls", col_names = FALSE, skip=12)

ch12.2004 <- as.numeric(bkrpt.122004_f2$X10[1])
file.2004  <- as.numeric(bkrpt.122004_f2$X10)

urlcourt13 = "http://www.uscourts.gov/file/10872/download?token=TRNF7qpB"
GET(urlcourt13, write_disk("temp13.xls", overwrite=TRUE))
bkrpt.122003_f2 <- read_excel("temp13.xls", col_names = FALSE, skip=8)

ch12.2003 <- as.numeric(bkrpt.122003_f2$X10[1])
file.2003  <- as.numeric(bkrpt.122003_f2$X10)

urlcourt14 = "http://www.uscourts.gov/file/10868/download?token=3PpyAFJJ"
GET(urlcourt14, write_disk("temp14.xls", overwrite=TRUE))
bkrpt.122002_f2 <- read_excel("temp14.xls", col_names = FALSE, skip=7)

ch12.2002 <- as.numeric(bkrpt.122002_f2$X10[1])
file.2002  <- as.numeric(bkrpt.122002_f2$X10)


newbkrpt.series <- c(ch12.2002,ch12.2003,ch12.2004,ch12.2005,ch12.2006,
                     ch12.2007,ch12.2008,ch12.2009,ch12.2010,
                     ch12.2011,ch12.2012,ch12.2013,ch12.2014,ch12.2015)

old.bkrpt.ch12 <- as.data.frame(cbind(reg.ch12[1],reg.ch12[12]))
old.bkrpt.ch12 <- subset(old.bkrpt.ch12, Year < 2002)
new.bkrpt.ch12 <- as.data.frame(cbind(seq(2002,2015,1), newbkrpt.series))
colnames(new.bkrpt.ch12) = c("Year", "US")
bkrpt.ch12 = rbind(old.bkrpt.ch12,new.bkrpt.ch12)

######################################################################################################
#  Plot Chapter 12 since 1986
library (ggplot2)
ggplot(data=bkrpt.ch12, aes(x=Year, y=US)) +  theme_bw() + geom_line() + ylab("Chapter 12 Filings") 
#####################################################################################################
####### Calculate regional estimates


reg1.2015 = sum(file.2015[c(3,9,16,24)])
reg2.2015 = sum(file.2015[c(46,47,59,60,66)])
reg3.2015 = sum(file.2015[c(48,49,54,55,56,57,58,64,65,67,68)])
reg4.2015 = sum(file.2015[c(69,70,71,90)])
reg5.2015 = sum(file.2015[c(25,26,27,29,30,31,32,44,45,50,51,52)])
reg6.2015 = sum(file.2015[c(28,97)])
reg7.2015 = sum(file.2015[c(34,35,36,37,38,62,63)])
reg8.2015 = sum(file.2015[c(39,40,41,42,92,93,94)])
reg9.2015 = sum(file.2015[c(74,80,81,82,89,91,95,96)])
reg10.2015 = sum(file.2015[c(73,75,76,77,78,79,83,84,85)])

reg1.2014 = sum(file.2014[c(3,9,16,24)])
reg2.2014 = sum(file.2014[c(46,47,59,60,66)])
reg3.2014 = sum(file.2014[c(48,49,54,55,56,57,58,64,65,67,68)])
reg4.2014 = sum(file.2014[c(69,70,71,90)])
reg5.2014 = sum(file.2014[c(25,26,27,29,30,31,32,44,45,50,51,52)])
reg6.2014 = sum(file.2014[c(28,97)])
reg7.2014 = sum(file.2014[c(34,35,36,37,38,62,63)])
reg8.2014 = sum(file.2014[c(39,40,41,42,92,93,94)])
reg9.2014 = sum(file.2014[c(74,80,81,82,89,91,95,96)])
reg10.2014 = sum(file.2014[c(73,75,76,77,78,79,83,84,85)])

reg1.2013 = sum(file.2013[c(3,9,16,24)])
reg2.2013 = sum(file.2013[c(46,47,59,60,66)])
reg3.2013 = sum(file.2013[c(48,49,54,55,56,57,58,64,65,67,68)])
reg4.2013 = sum(file.2013[c(69,70,71,90)])
reg5.2013 = sum(file.2013[c(25,26,27,29,30,31,32,44,45,50,51,52)])
reg6.2013 = sum(file.2013[c(28,97)])
reg7.2013 = sum(file.2013[c(34,35,36,37,38,62,63)])
reg8.2013 = sum(file.2013[c(39,40,41,42,92,93,94)])
reg9.2013 = sum(file.2013[c(74,80,81,82,89,91,95,96)])
reg10.2013 = sum(file.2013[c(73,75,76,77,78,79,83,84,85)])

