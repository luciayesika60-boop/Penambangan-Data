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

#Standard Deviasi Total, Ticket_Price, Ticket_Quantity, Transaction_ID
sd(data$Total)           
sd(data$Ticket_Price)    
sd(data$Ticket_Quantity) 
sd(data$Transaction_ID)  

###Distribusi Data Numerik
# Hitung frekuensi
frekuensi <- table(data$Ticket_Quantity)

# Bar chart + simpan posisi bar
bp <- barplot(frekuensi,
              col = "steelblue",
              border = "white",
              xlab = "Jumlah Tiket",
              ylab = "Frekuensi",
              main = "Distribusi Jumlah Tiket per Transaksi",
              ylim = c(0, max(frekuensi) * 1.15))   # beri ruang di atas

# Tambah angka di atas tiap bar
text(x = bp, y = frekuensi,
     label = frekuensi,
     pos = 3,        # posisi di atas bar
     cex = 1.2,      # ukuran huruf
     font = 2)       # bold

###Distribusi Kategori
# Hitung frekuensi
frekuensi <- table(data$City)

# Bar chart + simpan posisi bar
bp <- barplot(frekuensi,
              col = "steelblue",
              border = "white",
              xlab = "Kota",
              ylab = "Jumlah Transaksi",
              main = "Jumlah Transaksi per Kota",
              ylim = c(0, max(frekuensi) * 1.15))   # beri ruang di atas

# Tambah angka di atas tiap bar
text(x = bp, y = frekuensi,
     label = frekuensi,
     pos = 3,        # posisi di atas bar
     cex = 1.2,      # ukuran huruf
     col = "black",  # warna huruf
     font = 2)       # bold
