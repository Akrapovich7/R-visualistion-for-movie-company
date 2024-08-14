movies<-read.csv(file.choose())
colnames(movies)
colnames(movies)<-c("Film","Genre","CriticRating", "AudienceRating","Budgetm","Year")
str(movies)


movies$Year<-factor(movies$Year)
 
is.factor(movies$Year)


ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=Budgetm))+ geom_point()

p<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=Budgetm))+ geom_point()


p+geom_line()+geom_point()


q<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating,colour=Genre,size=Budgetm))

q+geom_point(aes(size=CriticRating))

q+geom_point(aes(colour=Budgetm))

p+geom_line(size=1)+geom_point(aes(size=10))

p+geom_point(aes(size=Budgetm))

p+geom_point(size=0.1)


s<-ggplot(data=movies,aes(x=Budgetm))
s+geom_histogram(binwidth=5,aes(fill=Genre),colour="White")

s+geom_density(aes(fill=Genre),position="stack")


o<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating, colour=Genre))
o+geom_point()+geom_smooth(fill=NA)

m<-ggplot(data=movies, aes(x=Genre,y=CriticRating,colour=Genre))
m+geom_boxplot(size=1.2,alpha=0.5)+geom_jitter(shape=5)

t<-ggplot(data=movies,aes(x=Budgetm))
t+geom_histogram(aes(fill=Genre),binwidth=10,size=1)+ facet_grid(Genre~Year)


h<-ggplot(data=movies,aes(x=CriticRating,y=AudienceRating ,size=Budgetm,colour=Genre))
h+geom_point() + xlim(50,100) + ylim(50,100)

s<-ggplot(data=movies,aes(x=Budgetm))
u<-s+geom_histogram(binwidth=5,aes(fill=Genre),colour="black")
u+xlab("MM")+ylab("HJ") + theme(axis.title.x=element_text(colour="Red"),axis.title.y=element_text(colour="Blue"))
