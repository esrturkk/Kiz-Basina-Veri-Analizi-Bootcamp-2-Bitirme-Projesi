-- Ülkelere göre toplam sipariş sayısını getirir
SELECT 
    a.country AS "Ülke",
    COUNT(o.id) AS "Sipariş Sayısı"
FROM 
    orders o
JOIN 
    adres a ON o.addressid = a.id
GROUP BY 
    a.country
ORDER BY 
    "Sipariş Sayısı" DESC;


-- Şehirlere göre toplam satış tutarını verir
SELECT 
    a.city AS "Şehir",
    SUM(o.totalprice) AS "Toplam Satış"
FROM 
    orders o
JOIN 
    adres a ON o.addressid = a.id
GROUP BY 
    a.city
ORDER BY 
    "Toplam Satış" DESC;


-- Erkek ve kadın kullanıcıların verdiği sipariş sayısını döner
SELECT 
    u.gender AS "Cinsiyet",
    COUNT(o.id) AS "Sipariş Sayısı"
FROM 
    orders o
JOIN 
    users u ON o.userid = u.id
GROUP BY 
    u.gender;


-- En çok sipariş veren kullanıcıları getirir
SELECT 
    u.namesurname AS "Ad Soyad",
    COUNT(o.id) AS "Sipariş Sayısı",
    SUM(o.totalprice) AS "Toplam Harcama"
FROM 
    orders o
JOIN 
    users u ON o.userid = u.id
GROUP BY 
    u.namesurname
ORDER BY 
    "Sipariş Sayısı" DESC
LIMIT 5;


-- Toplam satış miktarına göre en çok satılan 10 ürün
SELECT 
    i.itemname AS "Ürün Adı",
    SUM(od.amount) AS "Toplam Adet",
    SUM(od.linetotal) AS "Toplam Satış"
FROM 
    orderdetail od
JOIN 
    items i ON od.itemid = i.id
GROUP BY 
    i.itemname
ORDER BY 
    "Toplam Adet" DESC
LIMIT 10;


-- Kategori bazlı ürün satış miktarı
SELECT 
    i.category1 AS "Ana Kategori",
    SUM(od.amount) AS "Toplam Satış Adedi",
    SUM(od.linetotal) AS "Toplam Satış Tutarı"
FROM 
    orderdetail od
JOIN 
    items i ON od.itemid = i.id
GROUP BY 
    i.category1
ORDER BY 
    "Toplam Satış Tutarı" DESC;


-- Aylara göre toplam satışları döner
SELECT 
    TO_CHAR(DATE_, 'Month') AS "Ay",
    EXTRACT(MONTH FROM DATE_) AS ay_num,
    SUM(totalprice) AS "Toplam Satış"
FROM 
    orders
GROUP BY 
    ay_num, TO_CHAR(DATE_, 'Month')
ORDER BY 
    ay_num;


-- Kullanıcı yaş aralıklarına göre sipariş dağılımı
SELECT 
    CASE 
        WHEN u.age BETWEEN 18 AND 25 THEN '18-25'
        WHEN u.age BETWEEN 26 AND 35 THEN '26-35'
        WHEN u.age BETWEEN 36 AND 45 THEN '36-45'
        WHEN u.age BETWEEN 46 AND 60 THEN '46-60'
        ELSE '60+'
    END AS "Yaş Grubu",
    COUNT(o.id) AS "Sipariş Sayısı"
FROM 
    orders o
JOIN 
    users u ON o.userid = u.id
GROUP BY 
    "Yaş Grubu"
ORDER BY 
    "Sipariş Sayısı" DESC;


-- Sipariş durumlarına göre sipariş sayısı
SELECT 
    status_ AS "Durum",
    COUNT(*) AS "Sipariş Sayısı"
FROM 
    orders
GROUP BY 
    status_;


-- Tüm kullanıcıların toplam harcamasını gösterir
SELECT 
    u.namesurname AS "Kullanıcı",
    SUM(o.totalprice) AS "Toplam Harcama"
FROM 
    orders o
JOIN 
    users u ON o.userid = u.id
GROUP BY 
    u.namesurname
ORDER BY 
    "Toplam Harcama" DESC;
