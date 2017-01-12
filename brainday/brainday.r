cause<-c(  "Cigarette smoking ", "Alcohol use","Firearm-related incidents", "HIV", "Illegal drug use", "Motor vehicle injuries")
pct2<-c(0, 3.5, 1.2, 0.8, 0.7, 1.8)
pct1<-c(18.1, 0,  0, 0, 0, 0)
df0<-cbind(pct1, pct2)
col0=rainbow(8)
ti<-"causeofdeath.eps"
postscript(file=ti,width=9,height=5.5,onefile=F,horizontal=F,paper="special")  
barplot(df0, names.arg=c("", ""), ylim=c(0,20), main="Cause of Death in the US",ylab="Percent", col=col0, font.lab=2 )
legend("topright",fill=col0, cause, bty="n")
#mtext(side=1, "Source: Center for Disease Control and Prevention")
dev.off()



ti<-"initiation.eps"
postscript(file=ti,width=9,height=5.5,onefile=F,horizontal=F,paper="special")  
m<-c(13.3,20.1,33.9)
f<-c(12.9,19.4, 27.7)
grade<-c("8th\ngrade", "10th\ngrade", "12th\ngrade")
df0<-rbind(m,f)
c1<-c("royalblue","tomato")
barplot(df0, beside=T, ylab="Percent", ylim=c(0,50), col=c1, main="Tried Smoking Cigarettes", names.arg=grade)
legend("topleft",fill=c1,c("Male", "Female"), bty="n")
dev.off()


ti<-"prratio.eps"
postscript(file=ti,width=9,height=5.5,onefile=F,horizontal=F,paper="special")  
x<-1:11
y<-round(5*4^(x/3)-5,0)
cr<-colorRampPalette(c("white","red" ))
c0<-cr(20)[3:17]
barplot(y, col=c0, names.arg=y, main="Number of actions to trigger each reward")
dev.off()

