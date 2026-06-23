```sql
-- =====================================================
-- 03_query_dealer_bank.sql
-- Query jawaban untuk soal No 4 dan No 5
-- =====================================================


-- =====================================================
-- No 4a
-- Menampilkan data dealer yang memiliki rekening bank aktif
-- =====================================================
SELECT 
    d.cd_dealer,
    d.dealer_name,
    d.address_dealer,
    db.cd_bank_br,
    db.no_account
FROM mst_dealer d
INNER JOIN mst_dealer_bank db 
    ON d.cd_dealer = db.cd_dealer
INNER JOIN mst_bank_br br 
    ON db.cd_bank_br = br.cd_bank_br
WHERE db.flag_active = 'Y';


-- =====================================================
-- No 4b
-- Menghapus record pada MST_DEALER_BANK yang flag_active = 'N'
-- Catatan: query DELETE ini dijadikan komentar agar tidak terhapus otomatis
-- =====================================================

-- Cek data yang akan dihapus
SELECT 
    *
FROM mst_dealer_bank
WHERE flag_active = 'N';

-- Jalankan DELETE ini jika memang ingin menghapus data tidak aktif
-- DELETE FROM mst_dealer_bank
-- WHERE flag_active = 'N';


-- =====================================================
-- No 5
-- Menampilkan dealer name, bank name, dan nomor rekening
-- =====================================================
SELECT 
    d.dealer_name,
    br.bank_name,
    db.no_account
FROM mst_dealer d
INNER JOIN mst_dealer_bank db 
    ON d.cd_dealer = db.cd_dealer
INNER JOIN mst_bank_br br 
    ON db.cd_bank_br = br.cd_bank_br
ORDER BY 
    d.cd_dealer,
    db.flag_active DESC;
```
