mpg
names(mpg)
?mpg
mpg %>% ggplot(aes(displ,cty))+
  geom_point(aes(colour=drv,size=trans),
             alpha=0.5)+
  geom_smooth()
ggplot(mpg,aes(displ,hwy,colour=class))+
  geom_point()

#iris dataset
data(iris)
IrisPlot<-ggplot(iris,aes(Sepal.Length, Petal.Length, colour=Species))+
  geom_point()
print(IrisPlot)

print(IrisPlot+labs(y="Petal length in cm",x="Sepal Length in cm")
+ggtitle("Petal and Sepal Length of Iris"))
