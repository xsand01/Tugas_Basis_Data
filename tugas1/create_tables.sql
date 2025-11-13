Microsoft Windows [Version 10.0.22621.4317]
(c) Microsoft Corporation. All rights reserved.

C:\Users\LENOVO ThinkPad>cd C:\xampp\mysql\bin

C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 8
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

MariaDB [(none)]> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kampus             |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
| tugas3_d0224033    |
| uts_d0224033       |
+--------------------+
8 rows in set (0.119 sec)

MariaDB [(none)]> create database toko_sederhana;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> use toko_sederhana;
Database changed
MariaDB [toko_sederhana]> CREATE TABLE customers (
    ->     customer_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100),
    ->     city VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.031 sec)

MariaDB [toko_sederhana]> CREATE TABLE products (
    ->     product_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     product_name VARCHAR(100),
    ->     price DECIMAL(10,2),
    ->     stock INT
    -> );
Query OK, 0 rows affected (0.029 sec)

MariaDB [toko_sederhana]> CREATE TABLE orders (
    ->     order_id INT AUTO_INCREMENT PRIMARY KEY,
    ->     customer_id INT,
    ->     product_id INT,
    ->     quantity INT,
    ->     order_date DATE,
    ->     FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    ->     FOREIGN KEY (product_id) REFERENCES products(product_id)
    -> );
Query OK, 0 rows affected (0.064 sec)

MariaDB [toko_sederhana]> drop database toko_sederhana;
Query OK, 3 rows affected (0.142 sec)

MariaDB [(none)]> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kampus             |
| mysql              |
| performance_schema |
| phpmyadmin         |
| test               |
| tugas3_d0224033    |
| uts_d0224033       |
+--------------------+
8 rows in set (0.001 sec)

MariaDB [(none)]> create database toko_sederhana;
Query OK, 1 row affected (0.003 sec)

MariaDB [(none)]> use toko_sederhana;
Database changed
MariaDB [toko_sederhana]> CREATE TABLE pelanggan (
    ->     id_pelanggan INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama VARCHAR(100),
    ->     email VARCHAR(100),
    ->     kota VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.026 sec)

MariaDB [toko_sederhana]> CREATE TABLE produk (
    ->     id_produk INT AUTO_INCREMENT PRIMARY KEY,
    ->     nama_produk VARCHAR(100),
    ->     harga DECIMAL(10,2),
    ->     stok INT
    -> );
Query OK, 0 rows affected (0.030 sec)

MariaDB [toko_sederhana]> CREATE TABLE pesanan (
    ->     id_pesanan INT AUTO_INCREMENT PRIMARY KEY,
    ->     id_pelanggan INT,
    ->     id_produk INT,
    ->     jumlah INT,
    ->     tanggal_pesan DATE,
    ->     FOREIGN KEY (id_pelanggan) REFERENCES pelanggan(id_pelanggan),
    ->     FOREIGN KEY (id_produk) REFERENCES produk(id_produk)
    -> );
Query OK, 0 rows affected (0.077 sec)

MariaDB [toko_sederhana]> INSERT INTO pelanggan (nama, email, kota) VALUES
    -> ('Andi Wijaya', 'andi@mail.com', 'Jakarta'),
    -> ('Budi Santoso', 'budi@mail.com', 'Bandung'),
    -> ('Citra Dewi', 'citra@mail.com', 'Surabaya'),
    -> ('Deni Pratama', 'deni@mail.com', 'Medan'),
    -> ('Eka Lestari', 'eka@mail.com', 'Yogyakarta'),
    -> ('Fajar Hidayat', 'fajar@mail.com', 'Jakarta'),
    -> ('Gina Putri', 'gina@mail.com', 'Bandung'),
    -> ('Hadi Saputra', 'hadi@mail.com', 'Semarang'),
    -> ('Indah Sari', 'indah@mail.com', 'Denpasar'),
    -> ('Joko Purnomo', 'joko@mail.com', 'Makassar'),
    -> ('Karin Sihombing', 'karin@mail.com', 'Palembang'),
    -> ('Lukman Hakim', 'lukman@mail.com', 'Malang'),
    -> ('Mira Anggraini', 'mira@mail.com', 'Bogor'),
    -> ('Nanda Fadillah', 'nanda@mail.com', 'Padang'),
    -> ('Oki Firmansyah', 'oki@mail.com', 'Bekasi');
Query OK, 15 rows affected (0.015 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [toko_sederhana]> INSERT INTO produk (nama_produk, harga, stok) VALUES
    -> ('Laptop Lenovo', 8500000, 20),
    -> ('Mouse Logitech', 150000, 100),
    -> ('Keyboard Rexus', 250000, 60),
    -> ('Monitor Samsung', 2100000, 30),
    -> ('Headset JBL', 500000, 40),
    -> ('Printer Canon', 1800000, 25),
    -> ('Flashdisk Sandisk 32GB', 90000, 200),
    -> ('Harddisk Seagate 1TB', 750000, 50),
    -> ('Webcam Logitech', 350000, 35),
    -> ('Microphone BM800', 300000, 45),
    -> ('Speaker Bluetooth', 270000, 80),
    -> ('Kabel HDMI 2m', 80000, 100),
    -> ('Charger Laptop ASUS', 450000, 30),
    -> ('SSD WD 500GB', 950000, 25),
    -> ('Mousepad Gaming', 60000, 150);
Query OK, 15 rows affected (0.012 sec)
Records: 15  Duplicates: 0  Warnings: 0

MariaDB [toko_sederhana]> INSERT INTO pesanan (id_pelanggan, id_produk, jumlah, tanggal_pesan) VALUES
    -> (1, 2, 2, '2025-11-01'),
    -> (1, 1, 1, '2025-11-02'),
    -> (2, 4, 1, '2025-11-03'),
    -> (3, 5, 2, '2025-11-04'),
    -> (4, 3, 1, '2025-11-04'),
    -> (5, 8, 1, '2025-11-05'),
    -> (6, 6, 1, '2025-11-06'),
    -> (7, 7, 3, '2025-11-06'),
    -> (8, 9, 1, '2025-11-07'),
    -> (9, 10, 1, '2025-11-07'),
    -> (10, 11, 2, '2025-11-08'),
    -> (11, 13, 1, '2025-11-08'),
    -> (12, 12, 2, '2025-11-08'),
    -> (13, 14, 1, '2025-11-09'),
    -> (14, 15, 3, '2025-11-09');
Query OK, 15 rows affected (0.041 sec)
Records: 15  Duplicates: 0  Warnings: 0
