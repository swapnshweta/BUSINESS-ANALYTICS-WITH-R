aex1

library(forecast)


fit<-auto.arima(mdeaths)
forecast(fit,level = c(80,95,99), h=3)
plot(forecast(fit),shadecols = "oldstyle")

Output:
library(forecast)

> fit<-auto.arima(mdeaths)

> forecast(fit,level = c(80,95,99), h=3)
         Point Forecast    Lo 80    Hi 80    Lo 95    Hi 95    Lo 99    Hi 99
Jan 1980       1744.162 1484.609 2003.714 1347.210 2141.113 1222.479 2265.844
Feb 1980       1979.402 1671.980 2286.824 1509.241 2449.563 1361.506 2597.298
Mar 1980       1826.593 1518.239 2134.947 1355.006 2298.180 1206.823 2446.364

> plot(forecast(fit),shadecols = "oldstyle")

aex1image
 :refer file aex1.jpg

aex2

library(sqldf)
#attach(beaver2)
#beaver2
#table(beaver2)
sqldf("SELECT day , avg(temp) as avg_temp FROM beaver2 GROUP BY day;")
beavers<-sqldf("select *from beaver1 union all select* from beaver2;")
#head(beaver2)
movies<-data.frame(title=c("The Great Outdoors","Caddyshack","Flech","Days of Thunder","Crazy Heart"),year=c(1988,1980,1985,1990,2009))
boxoffice<-data.frame(title=c("The Great Outdoors","Caddyshack","Flech","Days of Thunder","Crazy Heart"),revenue=c(43455230,39846344,5960000,157920733,353816701))
sqldf("SELECT m.*,b.revenue FROM movies m INNER JOIN boxoffice b ON m.title =b.title;")

aex3

library(plyr)
ddply(iris,.(Species),summarise,mean_petal_length=mean(Petal.Length))
unlist(daply(iris[,4:5],.(Species),colwise(mean)))


OutPut:

library(plyr)

> ddply(iris,.(Species),summarise,mean_petal_length=mean(Petal.Length))
     Species mean_petal_length
1     setosa             1.462
2 versicolor             4.260
3  virginica             5.552

> unlist(daply(iris[,4:5],.(Species),colwise(mean)))
    setosa versicolor  virginica 
     0.246      1.326      2.026 


aex4
library(lubridate)
year("2012-12-12")
day("2012-12-12")
ymd("2012-12-12")


Output:

library(lubridate)

> year("2012-12-12")
[1] 2012

> day("2012-12-12")
[1] 12

> ymd("2012-12-12")
[1] "2012-12-12"
> 

aex5

library(stringr)
names(iris)
names(iris)<-str_replace_all(names(iris),"[.]","_")
names(iris)
s<-c("Go to Heaven for the climate,Hell for the company.")
str_extract_all(s,"[H][a-z]+")

OUTPUT:

ibrary(stringr)

> names(iris)
[1] "Sepal_Length" "Sepal_Width"  "Petal_Length" "Petal_Width"  "Species"      "id"          

> names(iris)<-str_replace_all(names(iris),"[.]","_")

> names(iris)

[1] "Sepal_Length" "Sepal_Width"  "Petal_Length" "Petal_Width"  "Species"      "id"          

> s<-c("Go to Heaven for the climate,Hell for the company.")

> str_extract_all(s,"[H][a-z]+")


[[1]]
[1] "Heaven" "Hell" 

aex6


library(reshape2)
iris$id<-1:nrow(iris)
iris.lng<-melt(iris,id=c("id","Species"))
head(iris.lng)
iris.wide<-dcast(iris.lng,id+Species~variable)
head(iris.wide)

library(ggplot2)
p<-ggplot(aes(x=value,fill=Species),data=iris.lng)
p+geom_histogram()+facet_wrap(~variable, scales="free")

aex6 image :
for plot refer image aex6.jpg
