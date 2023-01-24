library(ggplot2)
library(scales)
library(gridExtra)
hist1=read.table("total_breaks_numts_new_chr1.txt", sep=" ", header=F)
hist2=read.table("total_breaks_numts_chr2.txt", sep=" ", header=F)
hist3=read.table("total_breaks_numts_chr3.txt", sep=" ", header=F)
hist4=read.table("total_breaks_numts_chr4.txt", sep=" ", header=F)
hist5=read.table("total_breaks_numts_new_chr5.txt", sep=" ", header=F)
hist6=read.table("total_breaks_numts_chr6.txt", sep=" ", header=F)
hist7=read.table("total_breaks_numts_chr7.txt", sep=" ", header=F)
hist8=read.table("total_breaks_numts_chr8.txt", sep=" ", header=F)
hist9=read.table("total_breaks_numts_chr9.txt", sep=" ", header=F)
hist10=read.table("total_breaks_numts_chr10.txt", sep=" ", header=F)
hist11=read.table("total_breaks_numts_new_chr11.txt", sep=" ", header=F)
hist12=read.table("total_breaks_numts_chr12.txt", sep=" ", header=F)
hist13=read.table("total_breaks_numts_chr13.txt", sep=" ", header=F)
hist14=read.table("total_breaks_numts_chr14.txt", sep=" ", header=F)
hist15=read.table("total_breaks_numts_chr15.txt", sep=" ", header=F)
hist16=read.table("total_breaks_numts_chr16.txt", sep=" ", header=F)
hist17=read.table("total_breaks_numts_chr17.txt", sep=" ", header=F)
hist18=read.table("total_breaks_numts_chr18.txt", sep=" ", header=F)
hist19=read.table("total_breaks_numts_chr19.txt", sep=" ", header=F)
hist20=read.table("total_breaks_numts_chr20.txt", sep=" ", header=F)
hist21=read.table("total_breaks_numts_chr21.txt", sep=" ", header=F)
histX=read.table("total_breaks_numts_chrX.txt", sep=" ", header=F)
histY=read.table("total_breaks_numts_chrY.txt", sep=" ", header=F)


p1 <- ggplot(hist1, aes(x=V6,fill=V7,)) + geom_histogram()+
  xlim(1,248956422)+scale_x_continuous(labels = scales::comma)+
  xlab("chr1")+ylim(0,50)+theme(axis.text.x=element_blank(),legend.title = element_blank())

p2 <- ggplot(hist2, aes(x=V6)) + geom_histogram()+xlim(1,242193529)+scale_x_continuous(labels = scales::comma)+xlab("chr2")+ylim(0,50)+ theme(axis.text.x=element_blank())

p3 <- ggplot(hist3, aes(x=V6)) + geom_histogram()+xlim(1,198295559)+scale_x_continuous(labels = scales::comma)+xlab("chr3")+ylim(0,50)+ theme(axis.text.x=element_blank())

p4 <- ggplot(hist4, aes(x=V6)) + geom_histogram()+xlim(1,190214555)+scale_x_continuous(labels = scales::comma)+xlab("chr4")+ylim(0,50)+ theme(axis.text.x=element_blank())

p5 <- ggplot(hist5, aes(x=V6, fill=V7)) + geom_histogram(binwidth = 200)+xlim(1,181538259)+scale_x_continuous(labels = scales::comma)+xlab("chr5")+ylim(0,50)+ theme(axis.text.x=element_blank(),legend.title = element_blank())

p6 <- ggplot(hist6, aes(x=V6)) + geom_histogram()+xlim(1,170805979)+scale_x_continuous(labels = scales::comma)+xlab("chr6")+ylim(0,50)+ theme(axis.text.x=element_blank())

p7 <- ggplot(hist7, aes(x=V6)) + geom_histogram()+xlim(1,159345973)+scale_x_continuous(labels = scales::comma)+xlab("chr7")+ylim(0,50)+ theme(axis.text.x=element_blank())

p8 <- ggplot(hist8, aes(x=V6)) + geom_histogram()+xlim(1,145138636)+scale_x_continuous(labels = scales::comma)+xlab("chr8")+ylim(0,50)+ theme(axis.text.x=element_blank())

p9 <- ggplot(hist9, aes(x=V6)) + geom_histogram()+xlim(1,138394717)+scale_x_continuous(labels = scales::comma)+xlab("chr9")+ylim(0,50)+ theme(axis.text.x=element_blank())

p10 <- ggplot(hist10, aes(x=V6)) + geom_histogram()+xlim(1,135374737)+scale_x_continuous(labels = scales::comma)+xlab("chr10")+ylim(0,50)+ theme(axis.text.x=element_blank())

p11 <- ggplot(hist11, aes(x=V6, fill=V7)) + geom_histogram(bins= 30)+xlim(1,134452384)+scale_x_continuous(labels = scales::comma)+xlab("chr11")+ylim(0,50)+ theme(axis.text.x=element_blank(),legend.title = element_blank())

p12 <- ggplot(hist12, aes(x=V6)) + geom_histogram()+xlim(1,133275309)+scale_x_continuous(labels = scales::comma)+xlab("chr12")+ylim(0,50)+ theme(axis.text.x=element_blank())

p13 <- ggplot(hist13, aes(x=V6)) + geom_histogram()+xlim(1,114364328)+scale_x_continuous(labels = scales::comma)+xlab("chr13")+ylim(0,50)+ theme(axis.text.x=element_blank())

p14 <- ggplot(hist14, aes(x=V6)) + geom_histogram()+xlim(1,107043718)+scale_x_continuous(labels = scales::comma)+xlab("chr14")+ylim(0,50)+ theme(axis.text.x=element_blank())

p15 <- ggplot(hist15, aes(x=V6)) + geom_histogram()+xlim(1,101991189)+scale_x_continuous(labels = scales::comma)+xlab("chr15")+ylim(0,50)+ theme(axis.text.x=element_blank())

p16 <- ggplot(hist16, aes(x=V6)) + geom_histogram()+xlim(1,90338345)+scale_x_continuous(labels = scales::comma)+xlab("chr16")+ylim(0,50)+ theme(axis.text.x=element_blank())

p17 <- ggplot(hist17, aes(x=V6)) + geom_histogram()+xlim(1,83257441 )+scale_x_continuous(labels = scales::comma)+xlab("chr17")+ylim(0,50)+ theme(axis.text.x=element_blank())

p18 <- ggplot(hist18, aes(x=V6)) + geom_histogram()+xlim(1,80373285 )+scale_x_continuous(labels = scales::comma)+xlab("chr18")+ylim(0,50)+ theme(axis.text.x=element_blank())

p19 <- ggplot(hist19, aes(x=V6)) + geom_histogram()+xlim(1,58617616)+scale_x_continuous(labels = scales::comma)+xlab("chr19")+ylim(0,50)+ theme(axis.text.x=element_blank())

p20 <- ggplot(hist20, aes(x=V6)) + geom_histogram()+xlim(1,64444167 )+scale_x_continuous(labels = scales::comma)+xlab("chr20")+ylim(0,50)+ theme(axis.text.x=element_blank())

p21 <- ggplot(hist21, aes(x=V6)) + geom_histogram()+xlim(1,46709983)+scale_x_continuous(labels = scales::comma)+xlab("chr21")+ylim(0,50)+ theme(axis.text.x=element_blank())

pX <- ggplot(histX, aes(x=V6)) + geom_histogram()+xlim(1,156040895)+scale_x_continuous(labels = scales::comma)+xlab("chrX")+ylim(0,50)+ theme(axis.text.x=element_blank())

pY <- ggplot(histY, aes(x=V6)) + geom_histogram()+xlim(1,57227415)+scale_x_continuous(labels = scales::comma)+xlab("chrY")+ylim(0,50)+ theme(axis.text.x=element_blank())

grid.arrange(p1,p2,p3,p4,p5,p6,p7,p8,p9,p10,p11,p12,p13,p14,p15,p16,p17,p18,p19,p20,p21,pX,nrow=5)



p11