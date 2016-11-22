x<-5
x

#展示R語言圖形功能
demo(graphics)

#鳶尾花
data(iris)
plot(iris)
View(iris)

x <- c(1,2,3,4,5)
y <-c(5,10,15,20,25)
plot(x,y)
plot(x)

#台灣地圖
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#套件移除
remove.packages("ggmap")

#R練習1
x <- 10
X

y <- x^2
y

z<- sqrt(y)
z

#mode(資料型態)與length(長度)

#mumeric 數值
x<-10
x
mode(x)
length(x)

y<-10.9
y
mode(y)
length(y)

#logical 邏輯
z<- T
z
mode(z)
length(z)

#character 文字
a<- "Hello"
a
mode(a)
length(a)


#complex 複數
b<- 4+2i
b
mode(b)
length(b)

#向量vector
v<- c(10,5,3.1,6.4,9.2,21.7)
v
mode(v)
length(v)

v<- c(10,5,NA,6.4,9.2,21.7)
v
v[2]

#索引1開始編號至10
v2<-1:10
v2

#矩陣mTRIX(二維)
x<- matrix(1:24,nrow=4,ncol=6,byrow=TRUE)
x

y<- matrix(1:24,nrow=4,ncol=6,byrow=FALSE)
y

#cbind()、rbind() and t()矩陣轉置
x1<- c(1,2,3)
x2<- c(4,5,6)
x3<- c(7,8,9)
xc<- cbind(x1,x2,x3)
xc

xr<- rbind(x1,x2,x3)
xr

xt<- t(xc)
xt

nrow(xc)
ncol(xc)
xc
xc[,1]
xc[2,]
eigen(xc)

z<-xc*xr#錯的
z<- xc%*%xr#對的
z

#Array陣列(多維)
x<- 1:24
dim(x)<-c(6,4)
x

dim(x)<- c(3,4,2)
x

x<-array(1:24,dim=c(3,4,2))
x
#舉例
x[2,3,1]
x[3,1,2]

x<- array(0,dim(3,4,2))
x

#Factor(因子)
sex<- factor(c("男","女","男","男","女"))
sex

#Data Frame 資料框架
id<- c(1,2,3,4)
age<- c(25,30,35,40)
sex<- c("male","male","Female","Female")
pay<- c(30000,40000,45000,50000)
x_dataframe <- data.frame(id,age,sex,pay)
x_dataframe

x_dataframe[2]#第二欄資料
x_dataframe
x_dataframe[2,]#第二筆資料
x_dataframe

edit(x_dataframe)#編輯資料
y<- edit(x_dataframe)#資料暫存至y變數
y

#list
id<- c(1,2,3)
sex<- c("male","male","female")
pay<- c(30000,40000,50000)
y_dataframe<-data.frame(id,sex,pay)
gender<-factor("男","男","女")

paul.family<-list(name="paul",wife="iris",no.kids=3,kids.age=c(25,28,30),
                  gender,y_dataframe)

paul.family
paul.familykid.age
paul.family[4]
paul.family[4][2]#錯誤的
paul.family[[4]]#把欄位名稱去除
paul.family[[4]][2]

#第二章

#設定工作目錄 
setwd("c:/")
getwd()

x<- read.table("X.csv",sep=",",header = TRUE)
x
str(x)

x<- read.table("X.csv",sep=",",header = FALSE)
x
str(x)

x<- read.csv("X.csv",header = TRUE)
x

x<- read.table("X.txt",header = TRUE)
x

#sep如與檔案不符則會讀取錯誤(sep預設為tab(\t))
x<- read.table("X.csv",sep=" ",header = TRUE)
x

#scan讀取consol輸入文字
x<- scan("")#輸入值後按Enter,不輸入資料時按兩次Enter
x
str(x)

my<- scan(file="",what = list(name="",pay=integer(),sex=""))
my
str(my)

X <- scan("")
X
str(X)

setwd("c:/R")

#資料寫入
write.table(X,"C:/R/X_file.csv",row.names = FALSE,col.names = FALSE,sep=",")

#內建資料集
data()
data(iris)
iris
str(iris)
summary(iris)

save(iris,file="iris.RDATA")

load("iris.RDATA",.GlobalEnv)

#第三章

a<- c(1,2,3)
x<- a+2
x
(x<-a+2)

{a<- c(1,2,3);x<-a+2}
x

#if else
x<-6
if(x>5) y=2 else y=4
y

x<- 3
if(x<5) y=10
y

x<- 3
y<- 1
if(x<5 && y<5)
  +{y<-10;z<-5}
y

#ifelse
x<-20
y<- ifelse(x>5,2,3)
y

#switch
x<-1
switch(x,5, sum(1:10),rnorm(5))
x<-2
switch(x,5, sum(1:10),rnorm(5))
x<-3
switch(x,5, sum(1:10),rnorm(5))
x<-4
switch(x,5, sum(1:10),rnorm(5))

y<-1
switch(y, juice="Apple",meat="Pork")

#for
x<-0
for (i in 1:5)x<- x+i
x

x<-0
y<-0
for (i in 1:5){x<-x+i;y<-i^2}
x
y

#while
sum<-0
i<-1
while (i<=10){sum<-sum+i;i<-i+1}
sum

#repeat
sum<-0
i<-1
repeat{
  sum<-sum+i
  i<-i+1
  if(i>10)break
}
sum

#apply()
x<- array(1:24,dim=c(4,6))
x
apply(x,1,sum)#1代表列相加
apply(x,2,sum)#2代表欄相加

#自動函數
myfun<- function(x){y<- x+2;return(y)}
myfun(1)
myfun(3)
myfun()

#參數預設值
myfun<- function(x=1){y<- x+2;return(y)}
myfun()
myfun(3)

#階層
factorial <- function(x=1){
  
  y=1
  for(i in 1:x){y<-y*i}
  return(y)
}
factorial(4)

#第四章
demo(graphics)
demo(image)

y<- sin(1:20)
plot(y,type="l",main="sin plot",xlab="X",ylab = "Y")
title(main = "sin plot",sub="圖4-2")
points(5,0.5)

#互動式繪圖
plot(2,2)
pts<- locator(n=3)
pts
par()#取回圖片相關參數

#1平均數
setwd("c:/cert/")
x<- read.csv("A-1.csv",header = FALSE)
x
str(x)
x<- as.matris(x)#轉換為matris
str(x)
mean(x)#平均數
summary(x)#資料概況

#2最大值
setwd("c:/cert/")
x<- read.csv("A-3.csv",header = FALSE)
x
x<- as.matrix(x)
max(x)

#3第1分位
setwd("c:/cert/")
x<- read.csv("A-4.csv",header = FALSE)
x
x<-as.matrix(x)
quantile(x,0.25)
summary(x)

#4全距
setwd("c:/cert/")
x<- read.csv("A-5.csv",header = TRUE)
x
x<- as.matrix(x)
max(x)-min(x)

#5變異數
setwd("c:/cert/")
x<- read.csv("A-6.csv",header = FALSE)
x
x<- as.matrix(x)
var(x)

#6相關係數
setwd("c:/cert/")
x<- read.csv("c-1.csv",header = TRUE)
x
str(x)
hour<- x[2]
grade<- x[3]
cor(hour,grade)
cor(grade,hour)

#7R語言哪一種資料結構彈性最大?list
#8R語言有哪些迴圈? 沒有UNTIL
#9
X<-2
if(x<3)y=na else y=5
print(y)
#10
myfun<- function(x){
  if(x==0)
    sum=1
  else
    sum=x*myfun(x-1)
  return(sum)
}
myfun(4)

#11若na值想忽略不計算? NA.RM=TRUE 
#12
a<- matrix(1:12,nrow=3,byrow,TRUE)
a
apply(a,1,sum)
#13
x<- c(1,1,1,3,2,2,3)
table(x)

#14下列何者不是高階圖形
#15
x<- c(1,2,5)
y<- c(3,5,10)
rbind(x,y)
#16summry提供哪些資料?
#17註解符號? #
#18合法的變數名稱? p.1-3
#19 if else
#20
x1<- 9%%5
x2<- 9%/%2
x1
x2



  