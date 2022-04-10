# P1_Probstat_B_5025201061
Praktikum Modul 1 Probabilitas dan Statistika

## Nama-NRP
| Nama                | NRP        |
|---------------------|------------|
|   Rachman Ridwan    | 5025201061 |

## Soal 1
>Seorang penyurvei secara acak memilih orang-orang di jalan sampai dia bertemu dengan seseorang yang menghadiri acara vaksinasi sebelumnya.
- Berapa peluang penyurvei bertemu x = 3 orang yang tidak menghadiri acara vaksinasi sebelum keberhasilan pertama ketika p = 0.20 dari populasi menghadiri acara vaksinasi? (distribusi Geometrik)
``` R
#a
n = 3
p = 0.20
dgeom(x = n, prob = p)
```

- Mean distribusi Geometrik dengan 10000 data random, prob = 0,20 dimana distribusi geometrik acak tersebut X = 3 (distribusi Geometrik acak () == 3)
``` R
#b
data = 10000
p = 0.2
x = 3
vec = (rgeom(data, p) == x)
mean(vec)
```

#c
Hasilnya tidak terpaut jauh. Namun karena 1b menggunakan fungsi random alhasil hasilnya berbeda beda

- (Soal 1D) Diagram dapat dilihat pada folder ss pada repo.
``` R
#d
set.seed(10)
x = 10000
y = rgeom(x, 0.2)
hist(y)
```

- Mean Distribusi Geometrik adalah 1/p = 1/0.2 = 5  
  Varians Distribusi Geometrik adalah q/(p^2) = 0.8/(0.2^2)= 20 
``` R
#e
miu = 1/p
paste("Average is ", miu)

varian = (1-p)/ p^2
paste("Variant is ", varian)
```
</br>

## Soal 2
> Terdapat 20 pasien menderita Covid19 dengan peluang sembuh sebesar 0.2. Tentukan :
- Peluang terdapat 4 pasien yang sembuh
``` R
Sampel = 20
Peluang_Sembuh = 0.2
Peluang_Tidak_Sembuh = 1 - Peluang_Sembuh
#a
Pasien_Sembuh = 4
```

- (Soal 2B) Diagram dapat dilihat pada folder ss pada repo.
``` R
#b
peluang <- dbinom(1:20, 20, 0.2)
data = data.frame(y=c(peluang), x=c(1:20))
barplot(data$y, names.arg=data$x, ylab="Peluang", xlab="Jumlah Pasien")
```

- Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial
``` R
#c
p = Peluang_Sembuh
q = Peluang_Tidak_Sembuh
n = Pasien_Sembuh
rataan = n*p
cat ("rataan = ", rataan, "\n")
varian = n*p*q
cat ("varian = ", varian, "\n")
```
</br>

## Soal 3
> Diketahui data dari sebuah tempat bersalin di rumah sakit tertentu menunjukkan rata-rata historis 4,5 bayi lahir di rumah sakit ini setiap hari. (gunakan Distribusi Poisson)
- Berapa peluang bahwa 6 bayi akan lahir di rumah sakit ini besok?
``` R
mean_bayi_lahir = 4.5
#a
banyak_bayi_lahir = 6
dpois(banyak_bayi_lahir, mean_bayi_lahir)
```

- simulasikan dan buatlah histogram kelahiran 6 bayi akan lahir di rumah sakit ini selama setahun (n = 365)
``` R
#b
peluang = dpois(banyak_bayi_lahir,mean_bayi_lahir)
data = data.frame(y=c(peluang), x=c(1:365))
barplot(data$y, names.arg=data$x, ylab="peluang", xlab="hari ke-", ylim=0:1)
```

- bandingkan hasil poin a dan b , Apa kesimpulan yang bisa didapatkan

Dari Perhitungan yang diperoleh, didapatkan bahwa nilai distribusi poisson tidak berubah dari hari pertama hingga hari terakhir.

- Nilai Rataan (μ) dan Varian (σ²) dari Distribusi Poisson.
``` R
#d
lambda = mean_bayi_lahir
rataan = varian = lambda
rataan
varian
```
</br>
