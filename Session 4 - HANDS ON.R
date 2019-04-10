# HISTOGRAM 
# hist() is used to create a histogram 
# built in dataset names airquality which has daily air quality measurements in new york

airquality
str(airquality)
class(airquality)
names(airquality)
typeof(airquality)
# NA is Not Available 
temp = airquality$Temp  #Use dollar access method for vector method and plots
temp
barplot(temp)
hist(temp, density = 60, border = "blue", col = "darkmagenta", main = "Histogram of tempearature", xlab = "Freq", ylab = "Temparature", xlim = c(50,100), freq = FALSE)
# freq = FALSE when we want probability distribution 
# Difference b/w prob dist and normal dist is prob ranges from 0 to 1
h = hist(temp)
h
h = hist(temp, ylim = c(0,40))
text(h$mids,h$counts, labels = h$counts,adj = c(0.5,-0.5))

y = hist(temp, breaks = 20, main = "WITH BREAKS = 20", col = "darkmagenta")
text(y$mids,y$counts, labels = y$counts,adj = c(0.5,-0.5))

y = hist(temp, breaks = c(55,60,70,75,80,100),main = "With Breaks", border = "Blue", col = "magenta")

# BARPLOT() is fpr vector, matrix, Arrays
# HIST() is for Numeric Vector

# *********** PIE CHART  pie()
exp = c("Housing"=600, "Food"=300, "Cloths"= 150, "Entertainment"=100, "Others"=200,"Housing"=600, "Food"=300, "Cloths"= 150, "Entertainment"=100, "Others"=200)
exp
pie(exp)
barplot(exp)
hist(exp)
pie(exp, clockwise = T, main = "PIE CHART", border = "Brown", labels = as.character(exp), col = c("Orange", "Green", "Blue", "darkmagenta", "Yellow"))


# BOX PLOT boxplot()  used in numeric vector and help us to identify the outliers in data set 
airquality
names(airquality)
b = airquality$Ozone
b
boxplot(b)
mean(airquality$Ozone)
median(airquality$Ozone)
boxplot(b, horizontal = T, main = "BoxPlot", notch = T, border = "brown", col = "orange")
# notch = TRUE is for keeping a notch near the median 
box = boxplot(b, horizontal = T, main = "BoxPlot", notch = T, border = "brown", col = "orange")
box
temp = airquality$Temp
ozone = airquality$Ozone
boxplot(temp, ozone, horizontal = T)
ozone_norm = rnorm(200, mean = mean(ozone, na.rm = T), sd = sd(ozone, na.rm = T))
ozone_norm        
mean(c(1,2,3,4,NA))
mean(c(1,2,3,4))
temp_norm = rnorm(200, mean = mean(temp, na.rm = T), sd = sd(temp, na.rm = T))
temp_norm
mean(c(1,2,3,4,NA), na.rm = T)
boxplot(temp_norm, temp, ozone_norm, ozone, horizontal = T, col = "orange", border = "Red")

#na.rm is used to remove the NA from the data and useful to calculate the correct measures like mean and median 

boxplot(temp_norm, temp, ozone_norm, ozone, horizontal = T, main = "BOX PLOT FOR COMPARISION", col = (c("orange", "Red")), at = c(1,2,4,5), notch = T, names = c( "normal","temp", "normal","ozone"), las = 2)
# las = 2 is because the labels are alligned in perpendicular manner

# BOX PLOT form formula
# To make the relation between two variants, use tilda symbol 

boxplot(Temp~Month, data = airquality, main = "Different box plots of each month", xlab = "Month Number", ylab = "Degree Farehnheit", col= "Orange", border = "Brown")


# STRIP CHART stripchart() for numeric vector or list of numeric vectors

airquality
s = airquality$Ozone
stripchart(s)
s = airquality$Temp
stripchart(s)
s = airquality$Ozone
stripchart(s, vertical = F, method = "jitter", pch = 1, col = "blue", main = "STRIP CHART")

#Multiple strip chart 

temp_norm
x = list("temp" = temp, "norm"=temp_norm)
x
stripchart(x, method = "jitter", pch = c(16,15), col = c("Orange", "red"))

#Stripchrt form formula 

stripchart(Temp~Month, data = airquality, pch=19, col = "red", group.names = c("May", "June", "July", "August", "Sep"), method = "jitter")


#PLOT plot()
plot(temp)
s = seq(-pi, pi, 0.1)
s
plot(s,sin(s), type = 'o', col = "red", pch = 16)
lines(s,cos(s), col = "blue", type = 'o', pch = 16)
legend("topleft", c("sin(x)", "cos(x)"), fill = c("red", "blue"))     


# par() has two parameters : mfrow, mfcol used for segregarting the screen for multiple plots
max.temp = c("Sun"=23, "Mon"=21, "Tue"=24, "Wed"=26, "Thu"=24, "Fri"=22, "Sat"= 28)
max.temp
pie(max.temp)
par(mfrow = c(1,2), barplot(max.temp, main = "BAR CHART"), pie(max.temp, main = "PIE CHART", radius = 1))

# by par fig functions, we can assign the space for the charts in screen 
# SUB PLOT
par(fig = c(0.1, 0.7, 0.3, 0.3))
plot(temp)

#3D Plots 
cone = function(x,y){
  sqrt((x) + (y))
}


