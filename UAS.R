library("tidyverse")
library("readxl")
data<-('dat.x1sx')
head(dat)
library("ggplot2")
library("readxl")
library("dplyr")
ggplot(data=dat,aes(x=AHHP,y=JPM)) +
  geom_point(color="blue",size=2) + 
  labs(title="tabel 1. Hubungan antara Angka Harapan Hidup Perempuan dan Jumlah Penduduk Miskin",
       x="Angka Harapan Hidup Perempuan",
       y="Jumlah Penduudk Miskin",
       caption = "sumber: Badan Pusat Statistik") +
  theme_classic()
reg1<-lm(AHHP~JPM,data=dat)
summary(reg1)