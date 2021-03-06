#install.packages("plyr")
#install.packages("ggplot2")
require(plyr)
require(ggplot2)

#set working directory to local copy of repository
setwd("**insert working directory here**")


daby1edit<-read.csv("./data/Dabob-temp-2014.csv")
#reads in edited CSV with raw data.


daby1edit$Date<-as.Date(daby1edit$Date,"%m/%d/%Y")
#Tells R that the date column contains dates so it knows how to deal with them


dabmeantemp<-ddply(daby1edit,.(Date),summarise,mean_temp=mean(Temp,na.rm=T),min_temp=min(Temp,na.rm=T),max_temp=max(Temp,na.rm=T))
#finds the mean, minimum, and maximum daily temps from raw data and creates dataframe with them for Dabob

many1v3<-read.csv('./data/Manchester-temp-2014.csv')
#reads in edited CSV with raw data.

many1v3$Date<-as.Date(many1v3$Date,"%m/%d/%Y")
#Tells R that the date column contains dates so it knows how to deal with them


manmeantemp<-ddply(many1v3,.(Date),summarise,mean_temp=mean(Temp,na.rm=T),min_temp=min(Temp,na.rm=T),max_temp=max(Temp,na.rm=T))
#finds the mean, minimum, and maximum daily temps from raw data and creates dataframe with them for Manchester


fidy1v3<-read.csv("./data/Fidalgo-temp-2014.csv")
#reads in edited CSV with raw data.


fidy1v3$Date<-as.Date(fidy1v3$Date,"%m/%d/%Y")
#Tells R that the date column contains dates so it knows how to deal with them


fidmeantemp<-ddply(fidy1v3,.(Date),summarise,mean_temp=mean(Temp,na.rm=T),min_temp=min(Temp,na.rm=T),max_temp=max(Temp,na.rm=T))
#finds the mean, minimum, and maximum daily temps from raw data and creates dataframe with them for Fidalgo


oysy1edit<-read.csv("./data/OysterBay-temp-2014.csv")
#reads in edited CSV with raw data.


oysy1edit$Date<-as.Date(oysy1edit$Date, "%m/%d/%Y")
#Tells R that the date column contains dates so it knows how to deal with them


oysmeantemp<-ddply(oysy1edit,.(Date),summarise,mean_temp=mean(Temp,na.rm=T),min_temp=min(Temp,na.rm=T),max_temp=max(Temp,na.rm=T))
#finds the mean, minimum, and maximum daily temps from raw data and creates dataframe with them for Oyster Bay


ggplot()+
  geom_line(data=dabmeantemp, aes(x=Date, y=mean_temp, group=1),col="forestgreen",size=1,guide=T)+
  geom_line(data=manmeantemp, aes(x=Date, y=mean_temp, group=1),col="blue",size=1)+
  geom_line(data=fidmeantemp, aes(x=Date, y=mean_temp, group=1),col="purple",size=1)+
  geom_line(data=oysmeantemp, aes(x=Date, y=mean_temp, group=1),col="orange",size=1)+
  labs(x="Date",y="Average Daily Temperature (C)")+
  theme_bw()+theme(panel.border = element_blank(),
                  panel.grid.major = element_blank(), 
                  panel.grid.minor = element_blank(),
                  axis.line = element_line(colour = "black"))
#Creates a graph with each line representing average daily temps for each site


ggplot()+
  geom_line(data=dabmeantemp, aes(x=Date, y=mean_temp, group=1, colour="1"),size=1)+
  geom_line(data=manmeantemp, aes(x=Date, y=mean_temp, group=1, colour="2"),size=1)+
  geom_line(data=fidmeantemp, aes(x=Date, y=mean_temp, group=1, colour="3"),size=1)+
  geom_line(data=oysmeantemp, aes(x=Date, y=mean_temp, group=1, colour="4"),size=1)+
  geom_hline(aes(yintercept=12.5,colour="5"),size=1)+
  scale_colour_manual(values=c("forestgreen","blue","purple","orange","red"),
                      name="Site",
                      labels=c("Hood Canal","Central","Northern","Southern"))+
  labs(x="Date",y="Average Daily Temperature (C)")+
  theme_bw()+
  theme(legend.position=c(0.13,0.15),
        legend.text=element_text(size=20),
        legend.title=element_text(size=20),
        axis.text.x=element_text(size=20),
        axis.title.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.y=element_text(size=20))+
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"))
#Creates a graph with each line representing average daily temps for each site also adds red line to indicate Spawning threshold

tiff(file = "MinDayTemp.tiff", units="in", width=10, height=10, res = 600)
ggplot()+
  geom_line(data=dabmeantemp, aes(x=Date, y=min_temp, group=1, colour="1"),size=1)+
  geom_line(data=manmeantemp, aes(x=Date, y=min_temp, group=1, colour="2"),size=1)+
  geom_line(data=fidmeantemp, aes(x=Date, y=min_temp, group=1, colour="3"),size=1)+
  geom_line(data=oysmeantemp, aes(x=Date, y=min_temp, group=1, colour="4"),size=1)+
  scale_colour_grey(start=0, end=.8,
                    name="Site",
                    labels=c("Hood Canal","Central","Northern","Southern"))+
  labs(x="Date",y="Minimum Daily Temperature (C)")+
  theme_bw()+
  theme(legend.position=c(0.13,0.18),
        legend.text=element_text(size=20),
        legend.title=element_text(size=20),
        axis.text.x=element_text(size=20),
        axis.title.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.y=element_text(size=20))+
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"))
dev.off()
#Creates a graph with each line representing observed minimum daily temps for each site

tiff(file = "MaxDayTemp.tiff", units="in", width=10, height=10, res = 600)
ggplot()+
  geom_line(data=dabmeantemp, aes(x=Date, y=max_temp, group=1, colour="1"),size=1)+
  geom_line(data=manmeantemp, aes(x=Date, y=max_temp, group=1, colour="2"),size=1)+
  geom_line(data=fidmeantemp, aes(x=Date, y=max_temp, group=1, colour="3"),size=1)+
  geom_line(data=oysmeantemp, aes(x=Date, y=max_temp, group=1, colour="4"),size=1)+
  scale_colour_grey(start=0, end=.8,
                      name="Site",
                      labels=c("Hood Canal","Central","Northern","Southern"))+
  labs(x="Date",y="Maximum Daily Temperature (C)")+
  theme_bw()+
  theme(legend.position=c(0.25,0.8),
        legend.text=element_text(size=20),
        legend.title=element_text(size=20),
        axis.text.x=element_text(size=20),
        axis.title.x=element_text(size=20),
        axis.text.y=element_text(size=20),
        axis.title.y=element_text(size=20))+
  theme(panel.border = element_blank(),
        panel.grid.major = element_blank(), 
        panel.grid.minor = element_blank(),
        axis.line = element_line(colour = "black"))
#Creates a graph with each line representing observed maximum daily temps for each site
dev.off()

#Dates Min Temp met Spawn Threshold
oysspawntemp<-oysmeantemp[(oysmeantemp$min_temp >= 12.5 & format(oysmeantemp$Date,"%Y")=="2014"),]
manspawntemp<-manmeantemp[(manmeantemp$min_temp >= 12.5 & format(manmeantemp$Date,"%Y")=="2014"),]
fidspawntemp<-fidmeantemp[(fidmeantemp$min_temp >= 12.5 & format(fidmeantemp$Date,"%Y")=="2014"),]



