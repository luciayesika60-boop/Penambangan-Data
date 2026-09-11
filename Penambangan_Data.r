#Membaca dataset
data <- read.csv("penjualan_tiket_pesawat (1).csv")
print(data)
#Melihat jumlah baris dan kolom
dim(data)
#Melihat struktur dan tipe data
str(data)
#Melihat ringkasan statistik dari dataset
summary(data)
#Mengecek missing value
colSums(is.na(data))
#Mengecek duplikat data
sum(duplicated(data))
