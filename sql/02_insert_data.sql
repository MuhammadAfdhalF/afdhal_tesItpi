```sql
-- =====================================================
-- 02_insert_data.sql
-- Script untuk menambahkan data dummy sesuai soal
-- =====================================================


-- =====================================================
-- Data MST_DEALER
-- =====================================================
INSERT INTO mst_dealer (cd_dealer, dealer_name, address_dealer) VALUES
('010001000003', 'AI TSO-JKT PRAMUKA', 'JL. RAYA PRAMUKA 146'),
('010001000004', 'AI TSO-JKT GARUDA', 'JL. GARUDA NO.8');


-- =====================================================
-- Data MST_BANK_BR
-- =====================================================
INSERT INTO mst_bank_br (cd_bank_br, bank_name, addree_bank) VALUES
('536A0320', 'BCA-JKT-MATRAMAN', 'JL. MATRAMAN RAYA 14-16'),
('701A0141', 'PERMATA-JKT-KELAPA GADING', 'KELAPA GADING'),
('701A0027', 'PERMATA-JKT-SUNTER', 'RUKO RYL SUNTER BLK F 1-3'),
('536A0616', 'BCA-JKT-PRIMA SUNTER', 'RUKO PRIMA SUNTER');


-- =====================================================
-- Data MST_DEALER_BANK
-- =====================================================
INSERT INTO mst_dealer_bank (cd_dealer_bank, cd_dealer, cd_bank_br, no_account, flag_active) VALUES
('A123', '010001000003', '536A0320', '3432228888', 'Y'),
('A321', '010001000003', '701A0141', '0395011006', 'N'),
('A667', '010001000004', '701A0027', '0260633007', 'Y'),
('A340', '010001000004', '536A0616', '659030640', 'N');


-- =====================================================
-- Data CUSTOMER
-- =====================================================
INSERT INTO customer (customer_id, customer_name, address) VALUES
(1, 'Tedy', 'Jakarta'),
(2, 'Dedy', 'Bandung'),
(3, 'Medy', 'Sukabumi'),
(4, 'Candy', 'Semarang'),
(5, 'Redy', 'Lampung'),
(6, 'Fedy', 'Jakarta'),
(7, 'Gandy', 'Yogyakarta');


-- =====================================================
-- Data ORDERS
-- =====================================================
INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1, 1, '2024-08-20'),
(2, 5, '2024-08-15'),
(3, 2, '2024-08-14'),
(4, 2, '2024-08-15'),
(5, 3, '2024-08-12'),
(6, 6, '2024-08-16'),
(7, 7, '2024-08-12'),
(8, 2, '2024-08-15'),
(9, 3, '2024-08-14'),
(10, 1, '2024-08-17'),
(11, 2, '2024-08-15'),
(12, 4, '2024-08-17'),
(13, 2, '2024-08-16'),
(14, 6, '2024-08-15'),
(15, 1, '2024-08-12');
```
