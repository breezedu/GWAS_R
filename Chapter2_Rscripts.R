## GWAS Genomic Prediction
## Chap 2
## Notes and R scripts


#1 reading data into R

data_in1 <- read.table(file="example1.dat", header = T, na.string="NA")
data_in2 <- read.table(file="example2.dat", header = T, na.string="NA")

data_in1
data_in2

#2 getting access to the data frame
attach(data_in1)
attach(data_in2)


#3 overview of data( mean, median, maximum, minimum, first and third quartiles)
summary(data_in1)
summary(data_in2)


#4 calculating means and standard deviations
apply(data_in1, 2, mean, na.rm=T)

apply(data_in1, 2, sd, na.rm=T)

apply(data_in2, 2, mean, na.rm=T)

apply(data_in2, 2, sd, na.rm=T)

#warning()

aggregate(data_in1, list(data_in1$Birth.Year), FUN=mean)
aggregate(data_in1, list(data_in1$Birth.Year), FUN=sd)

hist(WEC)
plot(WEC)

table(Sex)
table(Wormy.status)
table(Wormy.status, Sex)

boxplot(WEC~Sex, data=data_in2, range=0)


## shapiro.text
shapiro.test(WEC)

## QQ plot
plot(WEC)
qqnorm(WEC)
qqplot(WEC)

qqplot(data_in2$Indiv, WEC)

qqline(WEC)


