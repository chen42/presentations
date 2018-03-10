library(ggplot2)
library(tidyr)
source("~/Dropbox/git/rlibs/multiplot.R")

df1<-read.table(file="./deepLearning_google_trends.csv", header=T, sep=",")
names(df1)
df2<-df1[,c(1,2,3)]

df2<-df2 %>% gather(term, pct, learning:deep)
head(df2)
p<-ggplot(df2, aes(x=Month, y=pct, color=term, group=term))+geom_line(size=1.2) +
ggtitle("Google Search Trends")+ylab("Percent of hightest")+xlab("Month/Year")+
theme(plot.title=element_text(face="bold", hjust=0.5), axis.text.x=element_text(angle=90, hjust=1))
p

df3<-df1[,c(1,4:5)]
names(df3)
tail(df3)
head(df3)

df3<-df3 %>% gather(term, pct, deep_learning:hypothesis_testing)
head(df3)
tail(df3)
p1<-ggplot(df3, aes(x=Month, y=pct, color=term, group=term))+geom_line(size=1.2) +
ggtitle("Google Search Trends")+ylab("Percent of hightest")+xlab("Month/Year")+
scale_color_manual(values=c("#CC6666", "#9999CC"))+
theme(plot.title=element_text(face="bold", hjust=0.5), axis.text.x=element_text(angle=90, hjust=1))
p1

multiplot(p, p1, col=1)


png(file="./deepLearning_google_trends.png", height=600, width=1000)
multiplot(p, p1, cols=1)
dev.off()
