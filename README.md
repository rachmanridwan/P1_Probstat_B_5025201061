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
#a
p = 0.2
n = 20
X = 4
dbinom(x = X, size = n, prob = p)
```

- Gambarkan grafik histogram berdasarkan kasus tersebut
``` R
#b
library(dplyr)
library(ggplot2)

data.frame(x = 0:10, prob = dbinom(x = 0:10, size = n, prob = p)) %>%
  mutate(pasien = ifelse(x == X, X, "lainnya")) %>%
ggplot(aes(x = factor(x), y = prob, fill = pasien)) +
  geom_col() +
  geom_text(
    aes(label = round(prob,2), y = prob + 0.01),
    position = position_dodge(0.9),
    size = 3,
    vjust = 0
  ) +
  labs(title = "Peluang 4 pasien sembuh",
       x = "Sembuh",
       y = "Peluang")
```

- Nilai rataan (μ) dan varian (σ²) dari distribusi Binomial
``` R
#c
n*p #mean
n*p*(1 - p) #variance
```
</br>
