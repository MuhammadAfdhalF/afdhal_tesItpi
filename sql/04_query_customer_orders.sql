```sql
-- =====================================================
-- 04_query_customer_orders.sql
-- Query jawaban untuk soal No 6
-- =====================================================


-- =====================================================
-- No 6a
-- Menampilkan tanggal yang memiliki jumlah order paling banyak
-- =====================================================
SELECT 
    order_date AS "OrderDate",
    COUNT(order_id) AS "TotalOrders"
FROM orders
GROUP BY order_date
ORDER BY "TotalOrders" DESC
LIMIT 1;


-- =====================================================
-- No 6b
-- Menampilkan tanggal dan customer yang memiliki jumlah order paling sedikit
-- =====================================================
SELECT 
    o.order_date AS "OrderDate",
    c.customer_name AS "CustomerName",
    dt.total_orders AS "TotalOrders"
FROM orders o
INNER JOIN customer c 
    ON o.customer_id = c.customer_id
INNER JOIN (
    SELECT 
        order_date,
        COUNT(order_id) AS total_orders
    FROM orders
    GROUP BY order_date
    ORDER BY total_orders ASC
    LIMIT 1
) dt 
    ON o.order_date = dt.order_date;


-- =====================================================
-- No 6c
-- Menampilkan pembeli terbesar berdasarkan jumlah order terbanyak
-- =====================================================
SELECT 
    c.customer_name AS "CustomerName",
    c.address AS "Address",
    COUNT(o.order_id) AS "TotalOrders"
FROM customer c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name,
    c.address
ORDER BY 
    "TotalOrders" DESC
LIMIT 1;


-- =====================================================
-- No 6d
-- Menampilkan pembeli terkecil berdasarkan jumlah order paling sedikit
-- =====================================================
SELECT 
    c.customer_name AS "CustomerName",
    c.address AS "Address",
    COUNT(o.order_id) AS "TotalOrders"
FROM customer c
INNER JOIN orders o 
    ON c.customer_id = o.customer_id
GROUP BY 
    c.customer_id,
    c.customer_name,
    c.address
ORDER BY 
    "TotalOrders" ASC,
    c.customer_id ASC
LIMIT 1;
```
