#No.3

#a
lambda = 4.5
x = 6
dpois(x, lambda)

#b
set.seed(0)
n = 365
y = rpois(n, lambda)
hist(y)
z = (rpois(n, lambda) == 6)
mean(z)

#c
#Tidak terpaut jauh

#d
#Mean dan varians Distribusi Poison adalah lambda
