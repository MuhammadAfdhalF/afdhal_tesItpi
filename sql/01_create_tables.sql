```sql
-- =====================================================
-- 01_create_tables.sql
-- Script untuk membuat tabel latihan SQL PostgreSQL
-- =====================================================

-- Drop tabel jika sudah ada, supaya script bisa dijalankan ulang
DROP TABLE IF EXISTS mst_dealer_bank;
DROP TABLE IF EXISTS mst_bank_br;
DROP TABLE IF EXISTS mst_dealer;
DROP TABLE IF EXISTS orders;
DROP TABLE IF EXISTS customer;


-- =====================================================
-- Tabel Dealer
-- =====================================================
CREATE TABLE mst_dealer (
    cd_dealer VARCHAR(20) PRIMARY KEY,
    dealer_name VARCHAR(100),
    address_dealer VARCHAR(150)
);


-- =====================================================
-- Tabel Bank Branch
-- =====================================================
CREATE TABLE mst_bank_br (
    cd_bank_br VARCHAR(20) PRIMARY KEY,
    bank_name VARCHAR(100),
    addree_bank VARCHAR(150)
);


-- =====================================================
-- Tabel Relasi Dealer dan Bank
-- =====================================================
CREATE TABLE mst_dealer_bank (
    cd_dealer_bank VARCHAR(20) PRIMARY KEY,
    cd_dealer VARCHAR(20),
    cd_bank_br VARCHAR(20),
    no_account VARCHAR(30),
    flag_active CHAR(1),

    CONSTRAINT fk_dealer_bank_dealer
        FOREIGN KEY (cd_dealer)
        REFERENCES mst_dealer(cd_dealer),

    CONSTRAINT fk_dealer_bank_bank
        FOREIGN KEY (cd_bank_br)
        REFERENCES mst_bank_br(cd_bank_br)
);


-- =====================================================
-- Tabel Customer
-- =====================================================
CREATE TABLE customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100),
    address VARCHAR(100)
);


-- =====================================================
-- Tabel Orders
-- =====================================================
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,

    CONSTRAINT fk_orders_customer
        FOREIGN KEY (customer_id)
        REFERENCES customer(customer_id)
);
```
