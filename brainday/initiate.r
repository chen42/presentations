

m<-c(13.3,20.1,33.9)
f<-c(12.9,19.4, 27.7)
grade<-c("8th\ngrade", "10th\ngrade", "12th\ngrade")
df0<-rbind(m,f)
c1<-c("royalblue","tomato")
barplot(df0, beside=T, ylab="Percent", ylim=c(0,50), col=c1, main="Ever tried smoking", names.arg=grade)
legend("topleft",fill=c1,c("Male", "Female"))


