# 🚀 Tes ITPI - PHP, JavaScript, dan SQL PostgreSQL

Repository ini berisi hasil pengerjaan tes coding untuk kebutuhan seleksi programmer.
Materi yang dikerjakan meliputi dasar **Object Oriented Programming (OOP)** menggunakan PHP, validasi sederhana menggunakan JavaScript, serta query database menggunakan **PostgreSQL**.

---

## 📌 Materi yang Dikerjakan

Beberapa materi yang terdapat pada repository ini:

* Object Oriented Programming menggunakan PHP
* Inheritance
* Encapsulation
* Constructor
* Validasi sederhana menggunakan JavaScript
* Regular Expression
* Query SQL PostgreSQL
* JOIN antar tabel
* DML dan DDL
* Aggregate function seperti `COUNT()`
* `GROUP BY`, `ORDER BY`, dan `LIMIT`
* PostgreSQL Function

---

## 🗂️ Struktur Folder

```text
TesCoding/
├── php/
│   ├── Inheritance.php
│   ├── Encapsulation.php
│   └── konstruktor.php
│
├── javascript/
│   ├── js_validasi_usia.js
│   └── regex.js
│
├── sql/
│   ├── 01_create_tables.sql
│   ├── 02_insert_data.sql
│   ├── 03_query_dealer_bank.sql
│   ├── 04_query_customer_orders.sql
│   └── 05_functions_customer_orders.sql
│
└── README.md
```

---

## 🐘 PHP

Folder `php` berisi contoh program sederhana menggunakan konsep Object Oriented Programming.

### Materi PHP

| File                | Keterangan                                               |
| ------------------- | -------------------------------------------------------- |
| `Inheritance.php`   | Contoh penggunaan inheritance pada PHP                   |
| `Encapsulation.php` | Contoh penggunaan encapsulation dengan getter dan setter |
| `konstruktor.php`   | Contoh penggunaan constructor pada PHP                   |

### Cara Menjalankan File PHP

```bash
php php/Inheritance.php
php php/Encapsulation.php
php php/konstruktor.php
```

---

## 🟨 JavaScript

Folder `javascript` berisi contoh validasi sederhana menggunakan JavaScript.

### Materi JavaScript

| File                  | Keterangan                           |
| --------------------- | ------------------------------------ |
| `js_validasi_usia.js` | Validasi usia lebih dari 20 tahun    |
| `regex.js`            | Contoh penggunaan regular expression |

### Cara Menjalankan File JavaScript

```bash
node javascript/js_validasi_usia.js
node javascript/regex.js
```

---

## 🐘 SQL PostgreSQL

Folder `sql` berisi script database dan query jawaban menggunakan PostgreSQL.

### Urutan File SQL

| File                               | Keterangan                                                                |
| ---------------------------------- | ------------------------------------------------------------------------- |
| `01_create_tables.sql`             | Membuat tabel yang dibutuhkan pada soal                                   |
| `02_insert_data.sql`               | Menambahkan data dummy sesuai soal                                        |
| `03_query_dealer_bank.sql`         | Query untuk data dealer, bank, rekening aktif, dan relasi dealer-bank     |
| `04_query_customer_orders.sql`     | Query untuk menghitung jumlah order customer                              |
| `05_functions_customer_orders.sql` | Function PostgreSQL untuk menampilkan jumlah order berdasarkan CustomerID |

---

## 🧾 Cara Menjalankan SQL

Script SQL dapat dijalankan menggunakan **DBeaver** atau database tools lain yang mendukung PostgreSQL.

Urutan menjalankan script:

```text
1. Buat database PostgreSQL baru
2. Jalankan file 01_create_tables.sql
3. Jalankan file 02_insert_data.sql
4. Jalankan query pada file 03_query_dealer_bank.sql
5. Jalankan query pada file 04_query_customer_orders.sql
6. Jalankan function pada file 05_functions_customer_orders.sql
```

---

## 🧩 Penjelasan Singkat SQL

### 1. Create Table

File `01_create_tables.sql` digunakan untuk membuat tabel yang dibutuhkan, seperti:

* `mst_dealer`
* `mst_bank_br`
* `mst_dealer_bank`
* `customer`
* `orders`

### 2. Insert Data

File `02_insert_data.sql` digunakan untuk memasukkan data dummy sesuai dengan soal.

### 3. Query Dealer dan Bank

File `03_query_dealer_bank.sql` berisi query untuk menampilkan data dealer beserta rekening bank yang aktif, serta query relasi dealer dengan bank.

### 4. Query Customer dan Orders

File `04_query_customer_orders.sql` berisi query untuk menghitung jumlah order, mencari tanggal dengan order terbanyak, tanggal dengan order paling sedikit, pembeli terbesar, dan pembeli terkecil.

### 5. PostgreSQL Function

File `05_functions_customer_orders.sql` berisi function untuk menampilkan jumlah order customer berdasarkan parameter `CustomerID` dan detail order customer berdasarkan masing-masing tanggal.

---

## 🛠️ Tools yang Digunakan

* PHP
* JavaScript
* Node.js
* PostgreSQL
* DBeaver
* Visual Studio Code
* Git & GitHub

---

## ✅ Tujuan Repository

Repository ini dibuat sebagai dokumentasi pengerjaan tes coding.
Seluruh script disusun agar mudah dibaca, dijalankan ulang, dan digunakan kembali tanpa perlu menyimpan database mentah.

Database tidak disimpan secara langsung, tetapi dibuat ulang menggunakan file SQL agar lebih ringan, rapi, dan mudah dipahami.

---

## 👤 Author

**Muhammad Afdhal. F**
Software Developer
