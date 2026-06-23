```sql
-- =====================================================
-- 05_functions_customer_orders.sql
-- Function jawaban untuk soal No 7
-- PostgreSQL
-- =====================================================


-- =====================================================
-- No 7a
-- Function untuk menampilkan banyaknya jumlah order customer
-- berdasarkan parameter CustomerID
-- =====================================================
DROP FUNCTION IF EXISTS get_order_count_by_customer_id(INT);

CREATE FUNCTION get_order_count_by_customer_id(p_customer_id INT)
RETURNS TABLE (
    "CustomerID" INT,
    "CustomerName" TEXT,
    "TotalOrders" BIGINT
)
LANGUAGE sql
AS $$
    SELECT 
        c.customer_id AS "CustomerID",
        c.customer_name::TEXT AS "CustomerName",
        COUNT(o.order_id) AS "TotalOrders"
    FROM customer c
    LEFT JOIN orders o 
        ON c.customer_id = o.customer_id
    WHERE c.customer_id = p_customer_id
    GROUP BY 
        c.customer_id,
        c.customer_name;
$$;


-- =====================================================
-- No 7b
-- Query SELECT untuk melihat hasil function No 7a
-- =====================================================
SELECT * 
FROM get_order_count_by_customer_id(1);


-- =====================================================
-- No 7c
-- Function untuk menampilkan detail order customer
-- beserta jumlah order pada masing-masing tanggal
-- berdasarkan parameter CustomerID
-- =====================================================
DROP FUNCTION IF EXISTS get_order_details_by_customer_id(INT);

CREATE FUNCTION get_order_details_by_customer_id(p_customer_id INT)
RETURNS TABLE (
    "CustomerID" INT,
    "CustomerName" TEXT,
    "OrderDate" DATE,
    "TotalOrders" BIGINT
)
LANGUAGE sql
AS $$
    SELECT 
        c.customer_id AS "CustomerID",
        c.customer_name::TEXT AS "CustomerName",
        o.order_date AS "OrderDate",
        COUNT(o.order_id) AS "TotalOrders"
    FROM customer c
    INNER JOIN orders o 
        ON c.customer_id = o.customer_id
    WHERE c.customer_id = p_customer_id
    GROUP BY 
        c.customer_id,
        c.customer_name,
        o.order_date
    ORDER BY 
        o.order_date;
$$;


-- =====================================================
-- No 7d
-- Query SELECT untuk melihat hasil function No 7c
-- =====================================================
SELECT * 
FROM get_order_details_by_customer_id(1);
```
