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

hist(data$Total,
     xlab = "Total",
     ylab = "Frequency",
     main = "Distribution of Total")

barplot(table(data$City),
        col = c("steelblue", "salmon", "lightgreen"),
        border = "white",
        xlab = "Kota",
        ylab = "Jumlah Transaksi",
        main = "Jumlah Transaksi Berdasarkan Kota")
