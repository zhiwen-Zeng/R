x<-5
x

#�i��R�y���ϧΥ\��
demo(graphics)

#�����
data(iris)
plot(iris)
View(iris)

x <- c(1,2,3,4,5)
y <-c(5,10,15,20,25)
plot(x,y)
plot(x)

#�x�W�a��
install.packages("ggmap")
library(ggmap)
map.taiwan <- get_map(location="Taiwan", zoom=8)
ggmap(map.taiwan)

#�M�󲾰�
remove.packages("ggmap")

#R�m��1
x <- 10
X

y <- x^2
y

z<- sqrt(y)
z

#mode(��ƫ��A)�Plength(����)

#mumeric �ƭ�
x<-10
x
mode(x)
length(x)

y<-10.9
y
mode(y)
length(y)

#logical �޿�
z<- T
z
mode(z)
length(z)

#character ��r
a<- "Hello"
a
mode(a)
length(a)


#complex �Ƽ�
b<- 4+2i
b
mode(b)
length(b)

#�V�qvector
v<- c(10,5,3.1,6.4,9.2,21.7)
v
mode(v)
length(v)

v<- c(10,5,NA,6.4,9.2,21.7)
v
v[2]

#����1�}�l�s����10
v2<-1:10
v2

#�x�}mTRIX(�G��)
x<- matrix(1:24,nrow=4,ncol=6,byrow=TRUE)
x

y<- matrix(1:24,nrow=4,ncol=6,byrow=FALSE)
y

#cbind()�Brbind() and t()�x�}��m
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

z<-xc*xr#����
z<- xc%*%xr#�諸
z

#Array�}�C(�h��)
x<- 1:24
dim(x)<-c(6,4)
x

dim(x)<- c(3,4,2)
x

x<-array(1:24,dim=c(3,4,2))
x
#�|��
x[2,3,1]
x[3,1,2]

x<- array(0,dim(3,4,2))
x

#Factor(�]�l)
sex<- factor(c("�k","�k","�k","�k","�k"))
sex

#Data Frame ��Ʈج[
id<- c(1,2,3,4)
age<- c(25,30,35,40)
sex<- c("male","male","Female","Female")
pay<- c(30000,40000,45000,50000)
x_dataframe <- data.frame(id,age,sex,pay)
x_dataframe

x_dataframe[2]#�ĤG����
x_dataframe
x_dataframe[2,]#�ĤG�����
x_dataframe

edit(x_dataframe)#�s����
y<- edit(x_dataframe)#��ƼȦs��y�ܼ�
y

#list
id<- c(1,2,3)
sex<- c("male","male","female")
pay<- c(30000,40000,50000)
y_dataframe<-data.frame(id,sex,pay)
gender<-factor("�k","�k","�k")

paul.family<-list(name="paul",wife="iris",no.kids=3,kids.age=c(25,28,30),
                  gender,y_dataframe)

paul.family
paul.familykid.age
paul.family[4]
paul.family[4][2]#���~��
paul.family[[4]]#�����W�٥h��
paul.family[[4]][2]

#�ĤG��

#�]�w�u�@�ؿ� 
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

#sep�p�P�ɮפ��ūh�|Ū�����~(sep�w�]��tab(\t))
x<- read.table("X.csv",sep=" ",header = TRUE)
x

#scanŪ��consol��J��r
x<- scan("")#��J�ȫ��Enter,����J��Ʈɫ��⦸Enter
x
str(x)

my<- scan(file="",what = list(name="",pay=integer(),sex=""))
my
str(my)

X <- scan("")
X
str(X)

setwd("c:/R")

#��Ƽg�J
write.table(X,"C:/R/X_file.csv",row.names = FALSE,col.names = FALSE,sep=",")

#���ظ�ƶ�
data()
data(iris)
iris
str(iris)
summary(iris)

save(iris,file="iris.RDATA")

load("iris.RDATA",.GlobalEnv)

#�ĤT��

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
apply(x,1,sum)#1�N���C�ۥ[
apply(x,2,sum)#2�N����ۥ[

#�۰ʨ��
myfun<- function(x){y<- x+2;return(y)}
myfun(1)
myfun(3)
myfun()

#�Ѽƹw�]��
myfun<- function(x=1){y<- x+2;return(y)}
myfun()
myfun(3)

#���h
factorial <- function(x=1){
  
  y=1
  for(i in 1:x){y<-y*i}
  return(y)
}
factorial(4)

#�ĥ|��
demo(graphics)
demo(image)

y<- sin(1:20)
plot(y,type="l",main="sin plot",xlab="X",ylab = "Y")
title(main = "sin plot",sub="��4-2")
points(5,0.5)

#���ʦ�ø��
plot(2,2)
pts<- locator(n=3)
pts
par()#���^�Ϥ������Ѽ�

#1������
setwd("c:/cert/")
x<- read.csv("A-1.csv",header = FALSE)
x
str(x)
x<- as.matris(x)#�ഫ��matris
str(x)
mean(x)#������
summary(x)#��Ʒ��p

#2�̤j��
setwd("c:/cert/")
x<- read.csv("A-3.csv",header = FALSE)
x
x<- as.matrix(x)
max(x)

#3��1����
setwd("c:/cert/")
x<- read.csv("A-4.csv",header = FALSE)
x
x<-as.matrix(x)
quantile(x,0.25)
summary(x)

#4���Z
setwd("c:/cert/")
x<- read.csv("A-5.csv",header = TRUE)
x
x<- as.matrix(x)
max(x)-min(x)

#5�ܲ���
setwd("c:/cert/")
x<- read.csv("A-6.csv",header = FALSE)
x
x<- as.matrix(x)
var(x)

#6�����Y��
setwd("c:/cert/")
x<- read.csv("c-1.csv",header = TRUE)
x
str(x)
hour<- x[2]
grade<- x[3]
cor(hour,grade)
cor(grade,hour)

#7R�y�����@�ظ�Ƶ��c�u�ʳ̤j?list
#8R�y�������ǰj��? �S��UNTIL
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

#11�Yna�ȷQ�������p��? NA.RM=TRUE 
#12
a<- matrix(1:12,nrow=3,byrow,TRUE)
a
apply(a,1,sum)
#13
x<- c(1,1,1,3,2,2,3)
table(x)

#14�U�C��̤��O�����ϧ�
#15
x<- c(1,2,5)
y<- c(3,5,10)
rbind(x,y)
#16summry���ѭ��Ǹ��?
#17���ѲŸ�? #
#18�X�k���ܼƦW��? p.1-3
#19 if else
#20
x1<- 9%%5
x2<- 9%/%2
x1
x2



  