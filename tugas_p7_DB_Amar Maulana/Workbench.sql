-- Tabel Produk
CREATE TABLE Produk (
    KodeProduk INT AUTO_INCREMENT PRIMARY KEY,
    NamaProduk VARCHAR(255) NOT NULL,
    Harga DECIMAL(10, 2) NOT NULL,
    KategoriProduk VARCHAR(50)
);

-- Tabel Anggota
CREATE TABLE Anggota (
    NoAnggota INT AUTO_INCREMENT PRIMARY KEY,
    NamaAnggota VARCHAR(255) NOT NULL,
    Alamat VARCHAR(255),
    NomorTelepon VARCHAR(15)
);

-- Tabel KartuDiskon
CREATE TABLE KartuDiskon (
    NoKartuDiskon INT AUTO_INCREMENT PRIMARY KEY,
    NoAnggota INT,
    FOREIGN KEY (NoAnggota) REFERENCES Anggota(NoAnggota)
);

-- Tabel Pemesanan
CREATE TABLE Pemesanan (
    NoPemesanan INT AUTO_INCREMENT PRIMARY KEY,
    NoAnggota INT,
    TanggalPemesanan DATE,
    StatusPemesanan VARCHAR(50),
    FOREIGN KEY (NoAnggota) REFERENCES Anggota(NoAnggota)
);

-- Tabel DetailPemesanan
CREATE TABLE DetailPemesanan (
    NoPemesanan INT,
    KodeProduk INT,
    Jumlah INT,
    FOREIGN KEY (NoPemesanan) REFERENCES Pemesanan(NoPemesanan),
    FOREIGN KEY (KodeProduk) REFERENCES Produk(KodeProduk)
);

-- Tabel Pembayaran
CREATE TABLE Pembayaran (
    NoPembayaran INT AUTO_INCREMENT PRIMARY KEY,
    NoAnggota INT,
    NoPemesanan INT,
    MetodePembayaran VARCHAR(50),
    TotalPembayaran DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (NoAnggota) REFERENCES Anggota(NoAnggota),
    FOREIGN KEY (NoPemesanan) REFERENCES Pemesanan(NoPemesanan)
);
