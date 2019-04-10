#ARRAY CREATION 
arr = c(1:9)
arr
r1 = array(arr, dim = c(3,3,2))
r1
row.names = c('R1', 'R2', 'R3')
col.names = c('C1','C2', 'C3')
matrix.names = c('MATRIX 1', 'MATRIX 2')
r1 = array(arr, dim = c(3,3,2), dimnames = list(row.names, col.names, matrix.names))
r1
r1[2]
r1[2,,1]
r1
r1[2]
r1[2,]
r1[2,2,1]
r1[2, ,1]
r1[2,,1]
r1[2,2,2]
r1[,,1]
dim(r1)
attributes(r1)
add = r1[,,1]+r1[,,2]
add

# DATA FRAMES
# class() is used to check whether the command is a data frame or not
d = data.frame('S.no'= 1:3, 'Name' = c('Madhu', 'Kiran', 'Pathange'), 'Age' = c(21,22,23))
d
d[1]
d[[1]]
d[1:3]
typeof(d)
class(d)
str(d)
names(d)
ncol(d)
nrow(d)
length(d)
# CREATING A DATA FRAME
d = data.frame('S.no'= 1:3, 'Name' = c('Madhu', 'Kiran', 'Pathange'), 'Age' = c(21,22,23), stringsAsFactors = FALSE)
d
str(d)
d
d['S.no']
d[['S.no']]
d$S.no
d$Name
d['Name']

library(help = 'datasets')
str(d)
head(d)
str(trees)
trees
head(trees)
head(trees, n=2)
tail(trees, n= 17)
names(trees)
ncol(trees)
nrow(trees)
trees
trees[c(2,3),]
trees[trees['Height']>82,]
trees[10:14,]
trees[10:14,, drop = F]
d
d['Madhu']
d['S.no'[1]]
d[1, 'S.no'] = 011
dd
d
d[2,"Age"] = 18
d
cbind(d, "Degree"= c("BTech", 'Arch', 'IAS'))  
rbind(d, c(4,"sesha", 22))
d
d["Age"] = NULL
d
d = NULL
d


# CREATING A FACTOR
d
x = factor(c('A','A','B','C','A','A','B','C'))
X
x
str(x)
typeof(x)
levels(x)
factor(x)
x
x[1]
x[3]
x[5]
x[-1]
x(max)
max(x)
x
x[1] = 'Z'
x[1]
x[1] = 'A'
x
x[1]
levels(x) = c(levels(x), 'Z')
x
x[1] = 'Z'
x[1]


# BAR PLOTS

barplot(x)
barplot(trees)
trees
barplot(trees)
str(trees)
Titanic
temp = c(21:28)
temp
barplot(temp)
barplot(temp, main = "Temparature", xlab = "Dates", ylab = 'Celcius', names.arg = c(21:28), col = 'Brown')
x
table(x)
barplot(x)
age = c(21,23,24,21,21,23,24,24,24,21,23,23,22,22,22)
age
table(age)
barplot(table(age), main = "Age", xlab = "IDK", ylab = "1-4", col = "Pink", density = 100)


Titanic[1]
Titanic.data
titanic.data
barplot(Titanic)
titanic
Titanic
Titanic.data
table(Titanic)
barplot(table(Titanic))
margin.table(Titanic,2)
margin.table(Titanic, 3)
titanic.data = apply(Titanic, c(4,1), sum)
titanic.data
barplot(titanic.data)
legend("topleft", c("Not survived", "survived"), fill = c("black","white"))
barplot(titanic.data, col = c("black", "white"))
legend("topleft", c("Not survived", "survived"), fill = c("black","white"))
barplot(titanic.data, col = c("red", "green"), beside = T)

legend("bottomright", c("Not survived", "survived"), fill = c("red","green"))
Titanic
Trees
trees
head(trees)
