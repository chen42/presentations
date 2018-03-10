library(ggplot2)
source("~/Dropbox/git/rlibs/multiplot.R")

df0<-data.frame(x=rnorm(1000, mean=10,sd=10))
p<-ggplot(df0, aes(x=x))+geom_histogram(aes(y=..density..), color="grey60", fill="grey80")+geom_density() +theme(axis.text.y=element_text(face="bold", size=12))
print(p)

p1<-ggplot(df0, aes(x=x))+geom_histogram(color="darkblue", fill="lightblue")+ 
theme(axis.text.y=element_text(face="bold", size=12))
p1
png(file="histogram_density.png", width=1000, height=400)
multiplot(p1, p, cols=2)
dev.off()

