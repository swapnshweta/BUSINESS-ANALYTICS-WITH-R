# to create a vector which shows the odd number between 1 to 100
#q1
seq(1, by=2,len=100)

Output
seq(1, by=2,len=100)
  [1]   1   3   5   7   9  11  13  15  17  19  21  23  25  27  29  31  33  35  37  39  41  43  45  47
 [25]  49  51  53  55  57  59  61  63  65  67  69  71  73  75  77  79  81  83  85  87  89  91  93  95
 [49]  97  99 101 103 105 107 109 111 113 115 117 119 121 123 125 127 129 131 133 135 137 139 141 143
 [73] 145 147 149 151 153 155 157 159 161 163 165 167 169 171 173 175 177 179 181 183 185 187 189 191
 [97] 193 195 197 199

#q2 printing the vbector

a<-c(1,2,3,4,5,8,6,2,11)
a
Output:
> a
[1]  1  2  3  4  5  8  6  2 11

#q3 matrix from vector

y<-matrix(c(1,2,3,4,5,6,7,8,9),nrow=3,ncol=3)
y

Output:
     [,1] [,2] [,3]
[1,]    1    4    7
[2,]    2    5    8
[3,]    3    6    9

#Consider the following vector a<-c(NA,11:15,NA,NA) remove all the NA and find the
#mean of the vector
a<-c(NA,11:15,NA,NA)
mean(a,na.rm=T)

> mean(a,na.rm=T)
[1] 13


##Consider the vector x=c("apple","banana","grape")
##Replace the first occurrence of a with '$'

x=c("apple","banana","grape")
sub("a","$",x)
> sub("a","$",x)

[1] "$pple"  "b$nana" "gr$pe"
