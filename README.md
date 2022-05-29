# No. 1
library(BSDA)

responden <- c(1,2,3,4,5,6,7,8,9)
x <- c(78,75,67,77,70,72,78,74,77)
y <- c(100,95,70,90,90,90,89,90,100)

x
y

# 1A
data <- data.frame(responden,x,y)
standar_deviasi <- sd(data$x - data$y)

print("standar deviasi =  ")
standar_deviasi

# 1B
h <- data$x - data$y
n <- 6
s <- sd(h[1:6])
mean1 <- mean(h)
zbar <- mean(h[1:6])
t <- ((zbar - mean1)/(s/sqrt(n)))
p <- (2*pt(-abs(t),df <- n-1))

print("t(p - value) = ")
t
p

# 1C
xbar = mean(y)          
mu0 = mean(x)
s = sd(y)
n = length(y)
t = (xbar-mu0)/(s/sqrt(n)) 
t

alpha = 0.05 
t.half.alpha = qt(1-alpha/2, df=n-1) 
c(-t.half.alpha, t.half.alpha)

pval <- 2*pt(t, df=n-1)
pval

cat("karena pvalue > 0,05 atau pvalue>alpha maka keputusan gagal tolak H0","\n",
    "tidak ada pengaruh yang signifikan secara statistika dalam hal kadar saturasi oksigen , sebelum dan sesudah melakukan aktivitas")


t.test(h, alternative = 'two.sided',mu = mean1)
# =====================================================


# No. 2
library(BSDA)

print("hasil dari point A ")
tsum.test(mean.x=23500, sd(3900), n.x=100)

z <- (23500 - 20000)/(3900/sqrt(100))
z
# =====================================================


# No. 3
library(mosaic)

# 3A
print("Nilai dari H0 dan H1 adalah ")
zH0 <- (3.64-0)/(1.67/sqrt(19))
zH1 <- (2.79-0)/(1.32/sqrt(27))

zH0
zH1

# 3B
print("Hitungan sampel statistik adalah ")
tsum.test(mean.x=3.64, s.x = 1.67, n.x = 19,
          mean.y =2.79 , s.y = 1.32, n.y = 27,
          alternative = "greater")

# 3C
print("Hasil uji statistik dengan df = 2 ")
uji_statistik <- plotDist(dist='t',df=2,  col="red")
uji_statistik

# 3D
print("Nilai kritikal = ")
nilai_kritikal <- qchisq(p = 0.05, df = 2, lower.tail=FALSE)
nilai_kritikal
# =====================================================

# No. 4
print("hasil dari point A ")
file_data <- read.table(url("https://rstatisticsandresearch.weebly.com/uploads/1/0/2/6/1026585/onewayanova.txt"))
attach(file_data)
file_data$Jenis <- as.factor(file_data$Jenis)
file_data$Jenis <- factor(file_data$Jenis,
                          labels = c("kucing oren",
                                     "kucing hitam",
                                     "kucing putih"))
class(file_data$Jenis)

grup1 <- subset(file_data, Jenis == "kucing oren")
grup2 <- subset(file_data, Jenis == "kucing hitam")
grup3 <- subset(file_data, Jenis == "kucing putih")

file_data
grup1
grup2
grup3
