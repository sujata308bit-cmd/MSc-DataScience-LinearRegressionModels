#data visualisation
#data
#mapping
#geometric representations
#statistics
#facet
#coordinate space

install.packages("tidyverse")
library(tidyverse)
data()
?BOD
BOD
ggplot(data=BOD,
       mapping = aes(x=Time,
                     y=demand))
ggplot(data=BOD,
       mapping = aes(x=Time,
                     y=demand))+
  geom_point(size=5)+
  geom_line(color='blue')
#variation
ggplot(data=BOD,
       mapping = aes(x=Time,
                     y=demand))+
  geom_point(size=3)+
  geom_line(color='blue')
library(ggplot2)
ggplot(data=BOD,mapping = aes(x=Time,y=demand))+geom_point(size=3)+geom_line(color='red')
data()
#CO2
CO2
View(CO2)
CO2 %>% 
  ggplot(aes(conc,uptake,color=Treatment))+
  geom_point(size=2)+
  geom_smooth()
CO2 %>% 
  ggplot(aes(conc,uptake,color=Treatment))+
  geom_point(size=5,alpha=0.5)+
  geom_smooth(method=lm,se=F)+
  facet_wrap(~Type)+
  labs(title="Concentration of CO2")+
  theme_bw()

CO2 %>% 
  ggplot(aes(Treatment,uptake))+
  geom_boxplot()+
  geom_point(alpha=0.5,aes(size=conc,colour=Plant))+
  facet_wrap(~Type)+
  theme_bw()+
  labs(title="Chilled vs Non-CHILLED")



