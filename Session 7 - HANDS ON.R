duckweed.mat = matrix(c(1:60), ncol = 6)
duckweed.mat
dim(duckweed.mat)
rownames(duckweed.mat) = c("Day 1","Day 2","Day 3","Day 4","Day 5","Day 6","Day 7","Day 8","Day 9","Day 10")
colnames(duckweed.mat) = c("R1","R2","R3","R4","R5","R6")
duckweed.mat
class(duckweed.mat)
max(duckweed.mat[1,])
max(duckweed.mat[2,])
each_row_max = function(x){
  for(i in c(1:10)){
    y = max(duckweed.mat[i,])
    print(y)
  }
}
each_row_max(2)


for (i in 1:10){
  row = duckweed.mat[i,]
  max = max(row)
  print(max)
}

f = apply(duckweed.mat, 1, max) #rows
class(f)
g = apply(duckweed.mat, 2, min) #columns
class(g)
f
g

duckweed.df = data.frame(duckweed.mat)
duckweed.df
class(duckweed.df)
R1
duckweed.df['R1']
df.mean = apply(duckweed.df, 1, mean)
df.mean
df.med = apply(duckweed.df, 1, median)
df.med
class(df.med)
df.med = data.frame(apply(duckweed.df, 1, median))
df.med


# EDA : Exploratory data assets
# Univariate statistics
# Bivariate statistics
# Multivariate statistics

getwd()
df.med = apply(duckweed.df, 2, median)
df.med
df.mean = apply(duckweed.df, 2, mean)
df.mean

df2 = read.csv("UsedCarsCSV.csv", header = TRUE, stringsAsFactors = F)
df2
str(df2)
df2$transmission

head(df2)
tail(df2)
df2$transmission = factor(df2$transmission)
str(df2$transmission)

df2$color["Yellow"]
df2[df2$color=="Yellow",]
subset(df2, color %in% "Yellow")
subset(df2, transmission %in% "MANUAL")
df2[df2$mileage >= 100000,]
subset(df2, mileage > 100000)
s = subset(df2, transmission %in% "AUTO")
s
length(s)
df2$color
str(df2$color)
class(df2["color"])
df2["color"]
df2$color[1]
df2$color[c(1:3)]
df2$color[100]
length(df2$color)
x = df2["color"]
table(x)
df2[1,]
df2[1,3]
df2[c(1,3,6),5]
df2[c(1,3,6), c("color","transmission")]
df2[c(1,3,6), -c(5,6)]

count(df2$transmission)
table(df2$transmission)
length(df2$transmission)
margin.table(df2$transmission)

round((table(df2$transmission) / length(df2$transmission))*100 ,2)
pie((table(df2$transmission) / length(df2$transmission))*100)
barplot((table(df2$transmission) / length(df2$transmission))*100)

df2$mileage
head(df2["mileage"])
mean(df2$mileage)
median(df2$mileage)
boxplot(df2$mileage)
var(df2$mileage)
sd(df2$mileage)
range(df2$mileage)
min(df2$mileage)
hist(df2$mileage)
boxplot(df2$mileage)

p = df2$price
p
mean(p)
median(p)
boxplot(p)
hist(p)

#### BIVARIATE STATISTICS

# Numeric - character
plot(mileage~transmission, data = df2)
tapply(df2$mileage, df2$transmission, mean)
tapply(df2$mileage, df2$transmission, sd)

# Numeric - Numeric
plot(price~mileage, data = df2)

plot(price~mileage, data = df2, pch = as.integer(transmission), col = as.integer(transmission)+3)
legend("topright", legend = c("AUTO", "MANUAL"), pch = c(1,2), col = c(4,5))

#### MULTI VARIATE STATISTICS
pairs(df2[,-c(2,5,6)])
cor(df2[,-c(2,5,6)])

tapply(df2$transmission, df2$price , mean)
class(tapply(df2$price ,df2$transmission, mean))
class(aggregate(price~transmission, data = df2, FUN = mean))
#Tapply is only for two variables

aggregate(price~transmission + color, data = df2, FUN = mean)
aggregate(price~transmission + color, data = df2, FUN = median)
aggregate(price~transmission + color, data = df2, FUN = sd)
aggregate(price~transmission + color, data = df2, FUN = length)

table(df2$transmission)
table(df2$transmission, df2$color)
table(df2$transmission) / length(df2$transmission)
table(df2$transmission, df2$color) / length(df2$transmission)
round(table(df2$transmission, df2$color) / length(df2$transmission),3)

#Side by side boxplot
boxplot(p)
plot(price~transmission, data = df2)
boxplot(df2$price)
barplot(df2$color)
table(df2$color)
barplot(df2$color)
table(df2$color)
barplot(table(df2$color))

df2$color = factor(df2$color)
plot(price~color, data = df2)
