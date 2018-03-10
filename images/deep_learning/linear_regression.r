# Linear regression
library(ggplot2)
x0<-runif(10, min=0,max=9)
y0<-x0*rnorm(10,mean=1,sd=0.1)+rnorm(10,mean=0,sd=0.2)
dat<-data.frame(x=x0, y=y0)
summary(lm(x0~y0, dat))
p<-ggplot(dat, aes(x,y))+geom_point(color="grey40", size=4)+stat_smooth(method="lm", se=F)

png(file="linear_regression.png", width=1000, height=400)
p
dev.off()


# logit regression
x<-c(runif(20, min=1,max=5), runif(4, min=5,max=10), runif(20, min=10,max=15))
y<-c(rep(1,22), rep(0,22))
dat<-data.frame(X=x, Y=y)
p<-ggplot(dat, aes(X,Y))+geom_point(color="grey40")+stat_smooth(method="glm", method.args=list(family="binomial"), se=F)
png(file="logit_regression.png", width=1000, height=400)
p
dev.off()

## RELU
relu<-function(x) sapply(x, function(z) max(-5,z))
x<-seq(from=-10, to=5, by=0.1)
y<-relu(x)
dat<-data.frame(X=x, Y=y)
P<-ggplot(dat, aes(x=X, y=Y))+geom_line(size=1.6, color="orange")
P
png(file="relu.png", width=1000, height=400)
P
dev.off()


