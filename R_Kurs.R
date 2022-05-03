#Section 1 Aufgabe 1

a<-2
b<--1
c<--4

(-b + sqrt(b^2 - 4*a*c))/(2*a)
(-b - sqrt(b^2 - 4*a*c))/(2*a)

#Section 1 Aufgabe 2

log(1024, 4)

#Section 1 Aufgabe 3

install.packages("dslabs")
library(dslabs)
data(movielens)

#Paramenter stehen bei Enviroment

#Section 1 Aufgabe 3c

class(movielens$title)

#Section 1 Aufgabe 3d

class(movielens$genres)

#Section 1 Aufgabe 4

nlevels(movielens$genres)


#Section 2 Aufgabe 1

x <- c(2, 43, 27, 96, 18)

rank(x)

order(x)

sort(x)

#Section 2 Aufgabe 2

x <- c(2, 43, 27, 96, 18)

min(x)

which.min(x)

max(x)

which.max(x)

#Section 2 Aufgabe 3

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

timeh <- time/60

timeh[4]

speed <- distance/timeh

speed[1]

name[which.max(speed)]

#Section 3 Aufgabe 1

library(dslabs)
data(heights)
options(digits = 3)

ind <- heights$height > mean(heights$height)
sum(ind)

#Section 3 Aufgabe 2

sum(ind & heights$sex=="Female")

#Section 3 Aufgabe 3

mean(heights$sex=="Female")

#Section 3 Aufgabe 4

min(heights$height)

match(50,heights$height)

heights$sex[1032]

#Section 3 Aufgabe 5

max(heights$height)

x <- 50:82
x

sum(!(x%in%heights$height))

#Section 3 Aufgabe 6

install.packages("dplyr")
library(dplyr)

heights2 <- mutate(heights, ht_cm = height*2.54)

heights2$ht_cm[18]

mean(heights2$ht_cm)

#Section 3 Aufgabe 7

females <- filter(heights2, sex == "Female")
nrow(females)

mean(females$ht_cm)

#Section 3 Aufgabe 8

library(dslabs)
data(olive)
head(olive)

plot(olive$palmitic, olive$palmitoleic)

#Section 3 Aufgabe 9

hist(olive$eicosenoic)

#Section 3 Aufgabe 10

boxplot(palmitic~region, data = olive)


