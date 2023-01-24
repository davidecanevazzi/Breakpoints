library(ggplot2)
library(scales)
library(gridExtra)


hist1=read.table("HNO-002-007_breakpoints.txt", sep=" ", header=F)
p1 <- ggplot(hist1, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="HNO-002-07")+theme_minimal()+xlim(0,16569)
p1

##################################################################################

hist2=read.table("HNO-004-07_breakpoints.txt", sep=" ", header=F)
p2 <- ggplot(hist2, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="HNO-004-07")+theme_minimal()+xlim(0,16569)
p2

##################################################################################

hist3=read.table("THX-001-06_breakpoints.txt", sep=" ", header=F)
p3 <- ggplot(hist3, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="THX-001-06")+theme_minimal()+xlim(0,16569)
p3

##################################################################################

hist4=read.table("THX-002-07_breakpoints.txt", sep=" ", header=F)
p4 <- ggplot(hist4, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="THX-002-07")+theme_minimal()+xlim(0,16569)
p4

##################################################################################

hist5=read.table("THX-003-09_breakpoints.txt", sep=" ", header=F)
p5 <- ggplot(hist5, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="THX-003-09")+theme_minimal()+xlim(0,16569)
p5

##################################################################################

hist6=read.table("URO-002-03_breakpoints.txt", sep=" ", header=F)
p6 <- ggplot(hist6, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="URO-002-03")+theme_minimal()+xlim(0,16569)
p6

##################################################################################

hist7=read.table("URO-003-01_breakpoints.txt", sep=" ", header=F)
p7 <- ggplot(hist7, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="URO-003-01")+theme_minimal()+xlim(0,16569)
p7

##################################################################################

hist8=read.table("URO-004-02_breakpoints.txt", sep=" ", header=F)
p8 <- ggplot(hist8, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="URO-004-02")+theme_minimal()+xlim(0,16569)
p8

##################################################################################

hist1$V2=rep("HNO-002-07",length(hist1$V1))
hist2$V2=rep("HNO-004-07",length(hist2$V1))
hist3$V2=rep("THX-001-06",length(hist3$V1))
hist4$V2=rep("THX-002-07",length(hist4$V1))
hist5$V2=rep("THX-003-09",length(hist5$V1))
hist6$V2=rep("URO-002-03",length(hist6$V1))
hist7$V2=rep("URO-003-01",length(hist7$V1))
hist8$V2=rep("URO-004-02",length(hist8$V1))

b=rbind(hist1,hist2,hist3,hist4,hist5,hist6,hist7,hist8)

pb <- ggplot(b, aes(x=V1,fill=V2)) + geom_histogram(bins=100)+xlab("chrM")+
  labs(title="Summary")+theme_minimal()+xlim(0,16569)+ scale_x_continuous(breaks=seq(0,16569,1000))
pb


tumor=b$V1

############################################################# normal 

library(ggplot2)
library(scales)
library(gridExtra)


hist1=read.table("healthy/KANSL_father_breakpoints.txt", sep=" ", header=F)
p1 <- ggplot(hist1, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="KANSL_father")+theme_minimal()+xlim(0,16569)
p1

##################################################################################

hist2=read.table("healthy/KANSL_mother_breakpoints.txt", sep=" ", header=F)
p2 <- ggplot(hist2, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="KANSL_mother")+theme_minimal()+xlim(0,16569)
p2

##################################################################################

hist3=read.table("healthy/KANSL_son_breakpoints.txt", sep=" ", header=F)
p3 <- ggplot(hist3, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="KANSL_son")+theme_minimal()+xlim(0,16569)
p3

##################################################################################

hist4=read.table("healthy/Somatic_father_breakpoints.txt", sep=" ", header=F)
p4 <- ggplot(hist4, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="Somatic_father")+theme_minimal()+xlim(0,16569)
p4

##################################################################################

hist5=read.table("healthy/Somatic_mother_breakpoints.txt", sep=" ", header=F)
p5 <- ggplot(hist5, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="Somatic_mother")+theme_minimal()+xlim(0,16569)
p5

##################################################################################

hist6=read.table("healthy/Somatic_son_breakpoints.txt", sep=" ", header=F)
p6 <- ggplot(hist6, aes(x=V1)) + geom_histogram(color="blue",fill="lightblue")+xlab("chrM")+
  labs(title="Somatic_son")+theme_minimal()+xlim(0,16569)
p6



##################################################################################

hist1$V2=rep("KANSL_father",length(hist1$V1))
hist2$V2=rep("KANSL_mother",length(hist2$V1))
hist3$V2=rep("KANSL_son",length(hist3$V1))
hist4$V2=rep("ILC_father",length(hist4$V1))
hist5$V2=rep("ILC_mother",length(hist5$V1))
hist6$V2=rep("ILC_son",length(hist6$V1))

b=rbind(hist1,hist2,hist3,hist4,hist5,hist6)

pb <- ggplot(b, aes(x=V1,fill=V2)) + geom_histogram(bins=100)+xlab("chrM")+
  labs(title="Summary")+theme_minimal()+xlim(0,16569)+ scale_x_continuous(breaks=seq(0,16569,1000))
pb


healthy=b$V1



ks.test(x=tumor, y=healthy, alternative = c("two.sided", "less", "greater"),
        exact = NULL, simulate.p.value = TRUE, B = 2000)


length(tumor)
length(healthy)






