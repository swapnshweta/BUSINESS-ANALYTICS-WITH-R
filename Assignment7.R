1. Exercise: Explore the relationship between the following, where x contains numbers
from 1 to 100:
x and x^2
x and x^3
x + y = 101
xy = 500

 t<-read.csv("clipboard",sep="\t",stringsAsFactors = F)
> View(t)
> head(t)
  x x.2 x.3
1 1   1   1
2 2   4   8
3 3   9  27
4 4  16  64
5 5  25 125
6 6  36 216
> tail(t)
      x   x.2     x.3
95   95  9025  857375
96   96  9216  884736
97   97  9409  912673
98   98  9604  941192
99   99  9801  970299
100 100 10000 1000000
> summary(t)
       x               x.2               x.3         
 Min.   :  1.00   Min.   :    1.0   Min.   :      1  
 1st Qu.: 25.75   1st Qu.:  663.2   1st Qu.:  17088  
 Median : 50.50   Median : 2550.5   Median : 128826  
 Mean   : 50.50   Mean   : 3383.5   Mean   : 255025  
 3rd Qu.: 75.25   3rd Qu.: 5662.8   3rd Qu.: 426150  
 Max.   :100.00   Max.   :10000.0   Max.   :1000000  
> class(t)
[1] "data.frame"
> length(t)
[1] 3
> ncol(t)
[1] 3
> nrow(t)
[1] 100
> names(t)
[1] "x"   "x.2" "x.3"
> length(t[,1])
[1] 100
> str(t)
'data.frame':	100 obs. of  3 variables:
 $ x  : int  1 2 3 4 5 6 7 8 9 10 ...
 $ x.2: int  1 4 9 16 25 36 49 64 81 100 ...
 $ x.3: int  1 8 27 64 125 216 343 512 729 1000 ...
> library(dplyr)

Attaching package: ‘dplyr’

The following objects are masked from ‘package:stats’:

    filter, lag

The following objects are masked from ‘package:base’:

    intersect, setdiff, setequal, union

> glimpse(t)
Observations: 100
Variables: 3
$ x   <int> 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23...
$ x.2 <int> 1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361...
$ x.3 <int> 1, 8, 27, 64, 125, 216, 343, 512, 729, 1000, 1331, 1728, 2197, 2744, 3375, 4096, ...
> par(mfrow=c(4,2))
> par(mar = rep(2, 4))
>plot(t$x.3,t$x)

