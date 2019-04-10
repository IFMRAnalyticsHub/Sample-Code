# VECTORS IN R 
# Generally created using c()
# VECTOR CREATING
x = c(1,2,3,4,5,3,2,4,3,2,3,4,5,6,7)
x
x = 1:7
x
seq(1,3)
seq(1,5,by = 2)
y = c(1:19)
y

# Generally indexed with []
# VECTOR INDEXING
y[234]
y[12]
y[c(2:7)]
y[-1]
y[-3]
y
y = y[-1]
y
y[1,4]
y
y[3:7]
y[c(3,5,7)]
y[c(2,-3)]
y[c(T,F)]
z = c("first"=1, "second"=2, "third"=3)
z
z["first"]
z[c("first", "second")]
x = c(-3,7)
c
x
x = c(-3:7)
c
x
x[1]
x[1]= -30
x
x[x<0] = "-ve"
x
x = c(-3:7)
x
x[x<0] = 0
x
x
x
x = NULL
x


# MATRICES IN R
a = matrix(1:9, nrow=3,ncol = 3)
a
a
a
class(a)
dim(a)
attributes(a)
a = matrix(1:9, nrow=3,ncol = 3, dimnames = list(c('A',"B","C"),c('X','Y','Z')))
a
colnames(a)
rownames(a)
colnames(a) = c('C1','C2','C3')
rownames(a) = c('R1','R2','R3')
a
b = cbind(c(1,2,3),c(4,5,6))
b
b[2]
c = rbind((c(1,2,3)),c(4,5,6))
c
x = c(1:16)
x
dim(x) = c(4,4)
x
x[2,]
x[,4]
x[2,2]
x[c(2,3),c(3,4)]
colnames(x) = c('A','B','C','D')
x
rownames(x) = c('P','Q','R','S')
x
x[P]
x[,]
x[1]
x[-1]
xc
x
x[-1,]
x[,-1]
x[1,]
y=x[1,,drop=FALSE]
y
class(y)
x
x[1]
x[1] = 3
x
x[1] = 1
x
x
x[-2,-3]
x
x[c(T,F,T,T),c(T,T,F,T)]
x[x>5]
x[,] = 1
x
x = matrix(1:16, nrow = 4)
x
ncol(x) = c('A','B','C','D')
colnames(x)=c('A','B','C','D')
rownames(x)=c('P','Q','R','S')
X
x
x['P','B']
x['R',]
x
t(x)
cbind(x,c(17:20))
rbind(x,c(21:24))
x

# LIST CREATION 
x = list('a' = 2.5, 'b'='Madhu', 'c'= 1:7)
x
x[1]
x[2]
x[2] = ('b'= TRUE)
x
x[c(1,3)]
x
x = x[-2]
x
x[2]
x[c(T,F)]
x[[1]]= 4.00828
x
x
x['d'] = FALSE
x
x = c('e'= 'Love')
x
x = list('a' = 2.5, 'b'='Madhu', 'c'= 1:7)
x
x['d'] = FALSE
x
x['d'] = NULL
x
x = NULL
x
str(x)
x = list('a' = 2.5, 'b'='Madhu', 'c'= 1:7)
x
str(x)
