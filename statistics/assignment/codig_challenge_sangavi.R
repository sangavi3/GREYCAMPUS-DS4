boxplot(mtcars$cyl,mtcars$mpg,xlab="Cyl",ylab="mpg")
hist(mtcars$mpg)
airquality
colSums(is.na(airquality))
str(airquality)
airquality$Month <- as.factor(airquality$Month)
str(airquality)
install.packages("gapminder")
install.packages("dplyr")
library(gapminder)
library(dplyr)
gapminder %>%
  group_by(continent) %>%
  summarise(mean=mean(lifeExp),median=median(lifeExp))