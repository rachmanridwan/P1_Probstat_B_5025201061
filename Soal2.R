Sampel = 20
Peluang_Sembuh = 0.2
Peluang_Tidak_Sembuh = 1 - Peluang_Sembuh
#2a
Pasien_Sembuh = 4

dbinom(Pasien_Sembuh, Sampel, Peluang_Sembuh)

#2b
peluang <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(peluang), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")

#Nomor 2c
p = Peluang_Sembuh
q = Peluang_Tidak_Sembuh
n = Pasien_Sembuh
rataan = n*p
cat ("rataan = ", rataan, "\n")
varian = n*p*q
cat ("varian = ", varian, "\n")