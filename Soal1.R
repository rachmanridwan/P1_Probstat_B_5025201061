#No.1

#a
n = 3
p = 0.20
dgeom(x = n, prob = p)

#b
data = 10000
p = 0.2
x = 3
vec = (rgeom(data, p) == x)
mean(vec)

#c
#Hasil dari perhitungan a dan b tidak terlalu jauh, dari 10000 bilangan

#d
set.seed(10)
x = 10000
y = rgeom(x, 0.2)
hist(y)

#e
#Rataan
miu = 1/p
paste("Rataan adalah ", miu)
#varian
varian = (1-p)/ p^2
paste("varian adalah ", varian)
