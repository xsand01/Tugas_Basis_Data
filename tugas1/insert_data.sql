USE toko_sederhana;

INSERT INTO pelanggan (nama, email, kota) VALUES
('Andi Wijaya', 'andi@mail.com', 'Jakarta'),
('Budi Santoso', 'budi@mail.com', 'Bandung'),
('Citra Dewi', 'citra@mail.com', 'Surabaya'),
('Deni Pratama', 'deni@mail.com', 'Medan'),
('Eka Lestari', 'eka@mail.com', 'Yogyakarta'),
('Fajar Hidayat', 'fajar@mail.com', 'Jakarta'),
('Gina Putri', 'gina@mail.com', 'Bandung'),
('Hadi Saputra', 'hadi@mail.com', 'Semarang'),
('Indah Sari', 'indah@mail.com', 'Denpasar'),
('Joko Purnomo', 'joko@mail.com', 'Makassar'),
('Karin Sihombing', 'karin@mail.com', 'Palembang'),
('Lukman Hakim', 'lukman@mail.com', 'Malang'),
('Mira Anggraini', 'mira@mail.com', 'Bogor'),
('Nanda Fadillah', 'nanda@mail.com', 'Padang'),
('Oki Firmansyah', 'oki@mail.com', 'Bekasi');

INSERT INTO produk (nama_produk, harga, stok) VALUES
('Laptop Lenovo', 8500000, 20),
('Mouse Logitech', 150000, 100),
('Keyboard Rexus', 250000, 60),
('Monitor Samsung', 2100000, 30),
('Headset JBL', 500000, 40),
('Printer Canon', 1800000, 25),
('Flashdisk Sandisk 32GB', 90000, 200),
('Harddisk Seagate 1TB', 750000, 50),
('Webcam Logitech', 350000, 35),
('Microphone BM800', 300000, 45),
('Speaker Bluetooth', 270000, 80),
('Kabel HDMI 2m', 80000, 100),
('Charger Laptop ASUS', 450000, 30),
('SSD WD 500GB', 950000, 25),
('Mousepad Gaming', 60000, 150);

INSERT INTO pesanan (id_pelanggan, id_produk, jumlah, tanggal_pesan) VALUES
(1, 2, 2, '2025-11-01'),
(1, 1, 1, '2025-11-02'),
(2, 4, 1, '2025-11-03'),
(3, 5, 2, '2025-11-04'),
(4, 3, 1, '2025-11-04'),
(5, 8, 1, '2025-11-05'),
(6, 6, 1, '2025-11-06'),
(7, 7, 3, '2025-11-06'),
(8, 9, 1, '2025-11-07'),
(9, 10, 1, '2025-11-07'),
(10, 11, 2, '2025-11-08'),
(11, 13, 1, '2025-11-08'),
(12, 12, 2, '2025-11-08'),
(13, 14, 1, '2025-11-09'),
(14, 15, 3, '2025-11-09');
