C:\xampp\mysql\bin>mysql -u root
Welcome to the MariaDB monitor.  Commands end with ; or \g.
Your MariaDB connection id is 10
Server version: 10.4.32-MariaDB mariadb.org binary distribution

Copyright (c) 2000, 2018, Oracle, MariaDB Corporation Ab and others.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

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
| toko_sederhana     |
| tugas3_d0224033    |
| uts_d0224033       |
+--------------------+
9 rows in set (0.262 sec)

MariaDB [(none)]> use toko sederhana;
ERROR 1049 (42000): Unknown database 'toko'
MariaDB [(none)]> use toko_sederhana;
Database changed
MariaDB [toko_sederhana]> show tables;
+--------------------------+
| Tables_in_toko_sederhana |
+--------------------------+
| pelanggan                |
| pesanan                  |
| produk                   |
+--------------------------+
3 rows in set (0.002 sec)

MariaDB [toko_sederhana]> select*from pelanggan;
+--------------+-----------------+-----------------+------------+
| id_pelanggan | nama            | email           | kota       |
+--------------+-----------------+-----------------+------------+
|            1 | Andi Wijaya     | andi@mail.com   | Jakarta    |
|            2 | Budi Santoso    | budi@mail.com   | Bandung    |
|            3 | Citra Dewi      | citra@mail.com  | Surabaya   |
|            4 | Deni Pratama    | deni@mail.com   | Medan      |
|            5 | Eka Lestari     | eka@mail.com    | Yogyakarta |
|            6 | Fajar Hidayat   | fajar@mail.com  | Jakarta    |
|            7 | Gina Putri      | gina@mail.com   | Bandung    |
|            8 | Hadi Saputra    | hadi@mail.com   | Semarang   |
|            9 | Indah Sari      | indah@mail.com  | Denpasar   |
|           10 | Joko Purnomo    | joko@mail.com   | Makassar   |
|           11 | Karin Sihombing | karin@mail.com  | Palembang  |
|           12 | Lukman Hakim    | lukman@mail.com | Malang     |
|           13 | Mira Anggraini  | mira@mail.com   | Bogor      |
|           14 | Nanda Fadillah  | nanda@mail.com  | Padang     |
|           15 | Oki Firmansyah  | oki@mail.com    | Bekasi     |
+--------------+-----------------+-----------------+------------+
15 rows in set (0.120 sec)

MariaDB [toko_sederhana]> select*from pesanan;
+------------+--------------+-----------+--------+---------------+
| id_pesanan | id_pelanggan | id_produk | jumlah | tanggal_pesan |
+------------+--------------+-----------+--------+---------------+
|          1 |            1 |         2 |      2 | 2025-11-01    |
|          2 |            1 |         1 |      1 | 2025-11-02    |
|          3 |            2 |         4 |      1 | 2025-11-03    |
|          4 |            3 |         5 |      2 | 2025-11-04    |
|          5 |            4 |         3 |      1 | 2025-11-04    |
|          6 |            5 |         8 |      1 | 2025-11-05    |
|          7 |            6 |         6 |      1 | 2025-11-06    |
|          8 |            7 |         7 |      3 | 2025-11-06    |
|          9 |            8 |         9 |      1 | 2025-11-07    |
|         10 |            9 |        10 |      1 | 2025-11-07    |
|         11 |           10 |        11 |      2 | 2025-11-08    |
|         12 |           11 |        13 |      1 | 2025-11-08    |
|         13 |           12 |        12 |      2 | 2025-11-08    |
|         14 |           13 |        14 |      1 | 2025-11-09    |
|         15 |           14 |        15 |      3 | 2025-11-09    |
+------------+--------------+-----------+--------+---------------+
15 rows in set (0.005 sec)

MariaDB [toko_sederhana]> select*from produk;
+-----------+------------------------+------------+------+
| id_produk | nama_produk            | harga      | stok |
+-----------+------------------------+------------+------+
|         1 | Laptop Lenovo          | 8500000.00 |   20 |
|         2 | Mouse Logitech         |  150000.00 |  100 |
|         3 | Keyboard Rexus         |  250000.00 |   60 |
|         4 | Monitor Samsung        | 2100000.00 |   30 |
|         5 | Headset JBL            |  500000.00 |   40 |
|         6 | Printer Canon          | 1800000.00 |   25 |
|         7 | Flashdisk Sandisk 32GB |   90000.00 |  200 |
|         8 | Harddisk Seagate 1TB   |  750000.00 |   50 |
|         9 | Webcam Logitech        |  350000.00 |   35 |
|        10 | Microphone BM800       |  300000.00 |   45 |
|        11 | Speaker Bluetooth      |  270000.00 |   80 |
|        12 | Kabel HDMI 2m          |   80000.00 |  100 |
|        13 | Charger Laptop ASUS    |  450000.00 |   30 |
|        14 | SSD WD 500GB           |  950000.00 |   25 |
|        15 | Mousepad Gaming        |   60000.00 |  150 |
+-----------+------------------------+------------+------+
15 rows in set (0.005 sec)

MariaDB [toko_sederhana]> SELECT *
    -> FROM pelanggan
    -> WHERE kota = 'Jakarta';
+--------------+---------------+----------------+---------+
| id_pelanggan | nama          | email          | kota    |
+--------------+---------------+----------------+---------+
|            1 | Andi Wijaya   | andi@mail.com  | Jakarta |
|            6 | Fajar Hidayat | fajar@mail.com | Jakarta |
+--------------+---------------+----------------+---------+
2 rows in set (0.002 sec)

MariaDB [toko_sederhana]> SELECT *
    -> FROM produk
    -> WHERE harga > 1000000;
+-----------+-----------------+------------+------+
| id_produk | nama_produk     | harga      | stok |
+-----------+-----------------+------------+------+
|         1 | Laptop Lenovo   | 8500000.00 |   20 |
|         4 | Monitor Samsung | 2100000.00 |   30 |
|         6 | Printer Canon   | 1800000.00 |   25 |
+-----------+-----------------+------------+------+
3 rows in set (0.003 sec)

MariaDB [toko_sederhana]> SELECT *
    -> FROM pesanan
    -> WHERE tanggal_pesan BETWEEN '2025-11-03' AND '2025-11-07';
+------------+--------------+-----------+--------+---------------+
| id_pesanan | id_pelanggan | id_produk | jumlah | tanggal_pesan |
+------------+--------------+-----------+--------+---------------+
|          3 |            2 |         4 |      1 | 2025-11-03    |
|          4 |            3 |         5 |      2 | 2025-11-04    |
|          5 |            4 |         3 |      1 | 2025-11-04    |
|          6 |            5 |         8 |      1 | 2025-11-05    |
|          7 |            6 |         6 |      1 | 2025-11-06    |
|          8 |            7 |         7 |      3 | 2025-11-06    |
|          9 |            8 |         9 |      1 | 2025-11-07    |
|         10 |            9 |        10 |      1 | 2025-11-07    |
+------------+--------------+-----------+--------+---------------+
8 rows in set (0.002 sec)

MariaDB [toko_sederhana]> SELECT
    ->     pelanggan.nama AS nama_pelanggan,
    ->     produk.nama_produk,
    ->     pesanan.jumlah,
    ->     pesanan.tanggal_pesan
    -> FROM pesanan
    -> JOIN pelanggan ON pesanan.id_pelanggan = pelanggan.id_pelanggan
    -> JOIN produk ON pesanan.id_produk = produk.id_produk
    -> WHERE produk.harga BETWEEN 500000 AND 2000000
    ->   AND pelanggan.kota = 'Bandung';
Empty set (0.004 sec)

MariaDB [toko_sederhana]> SELECT nama_produk, stok
    -> FROM produk
    -> WHERE stok BETWEEN 30 AND 100;
+----------------------+------+
| nama_produk          | stok |
+----------------------+------+
| Mouse Logitech       |  100 |
| Keyboard Rexus       |   60 |
| Monitor Samsung      |   30 |
| Headset JBL          |   40 |
| Harddisk Seagate 1TB |   50 |
| Webcam Logitech      |   35 |
| Microphone BM800     |   45 |
| Speaker Bluetooth    |   80 |
| Kabel HDMI 2m        |  100 |
| Charger Laptop ASUS  |   30 |
+----------------------+------+
10 rows in set (0.020 sec)

MariaDB [toko_sederhana]>
