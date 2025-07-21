
# 📊 Kız Başına Veri Analizi Bootcamp 2. Bitirme Projesi

Bu proje, **Kız Başına Veri Analizi Bootcamp 2** kapsamında gerçekleştirilmiştir. Amaç; SQL ile veri sorgulama, veri temizleme, modelleme ve Power BI kullanarak görselleştirme yeteneklerini geliştirmektir.

---

## 🔧 Proje Süreci

Proje, aşağıdaki genel adımları kapsamaktadır:

- **Veri Setlerinin Yüklenmesi:** Kullanıcılar, adresler, ürünler, siparişler ve sipariş detayları gibi temel tablolar Power BI’a aktarılmıştır.
- **Veri Dönüştürme:** DAX fonksiyonları ve koşullu sütunlar kullanılarak yaş hesaplama, cinsiyet dönüşümü, kategori gruplamaları gibi işlemler yapılmıştır.
- **Veri Modelleme:** Tablolar arasında doğru ilişkiler kurulmuş ve kullanıcıların ihtiyaç duymayacağı alanlar gizlenmiştir.
- **Ek Veri Entegrasyonu:** Harici bir “Bölgeler” tablosu eklenerek şehir-bölge eşleşmeleri sağlanmıştır.

---

## 📊 Raporlama ve Görselleştirme

Power BI üzerinde, kullanıcının sadece **giriş sayfasını** görebileceği; diğer sayfalara butonlarla yönlendirileceği 3 farklı sayfa hazırlanmıştır:

### 1️⃣ Giriş Sayfası
Kullanıcıyı karşılayan ve raporlara yönlendiren sade bir arayüzdür.

---

### 2️⃣ Özet Sayfa

Kullanıcılara genel performans metriklerini sunar. Aşağıdaki öğeler bu sayfada yer almaktadır:

#### 📈 Grafikler:
- **Haftaiçi vs. Haftasonu Satış Adeti:** Tarih kolonundan gün adı çıkarılarak koşullu sütun ile haftaiçi/haftasonu ayrımı yapılmıştır.
- **Bölgelere Göre Toplam Satış Adeti:** Harici bölge datası ile şehir eşleşmesi yapılmış ve bölgesel satışlar görselleştirilmiştir.
- **Saatlik Satış Tutarı:** Saat bilgisi tarih kolonundan ayrıştırılarak grafik oluşturulmuştur.

#### 🧮 Kart Ölçümleri:
- Toplam Satış Adedi  
- Toplam Ciro  
- Toplam Müşteri Sayısı  
- Toplam Sipariş Sayısı  
- Müşteri Başına Ciro  
- Müşteri Başına Satış Adedi  
- Ortalama Sipariş Tutarı

> 📌 Görsel Örnek: *(Buraya Özet Sayfa görseli ekleyebilirsiniz.)*

---

### 3️⃣ Müşteri Perspektifi Sayfası

Bu sayfa, kullanıcı profiline dair analizleri içermektedir:

- **Tekil Müşteri Sayısı**
- **Kadın / Erkek Müşteri Sayısı**
- **Bölgelere Göre Müşteri Sayısı (Çubuk Grafik)**
- **İstanbul’daki En Çok Sipariş Veren 10 Müşteri (Tablo)**
- **Yaş Grubuna Göre Satış Dağılımı (Grafik)**  
  > Yaş grupları:  
  - 0–20 → Genç  
  - 21–35 → Yetişkin  
  - 36–55 → Orta Yaş  
  - 55+ → Yaşlı  

> 📌 Görsel Örnek: *(Buraya müşteri perspektifi sayfa görseli ekleyebilirsiniz.)*

---

### 4️⃣ Kategori Perspektifi Sayfası

Belirli segmentlere özel analiz sunar:

- **İstanbul’da Yaşayan Genç Müşterilerin Kategorilere Göre Cirosu**  
  > Ağaç haritası görseli ile sunulmuştur. `ANAKATEGORI` baz alınmıştır.

> 📌 Görsel Örnek: *(Buraya kategori perspektifi sayfa görseli ekleyebilirsiniz.)*

---

## 🧰 Kullanılan Teknolojiler

- **Microsoft Power BI** – Veri görselleştirme ve modelleme
- **SQL** – Sorgular ve veri hazırlama
- **DAX** – Yaş, koşullu sütunlar ve özet ölçüler için formüller
- **Harici CSV Kaynağı** – Şehir-bölge eşleşmeleri

---

## 📎 Notlar

- Projede kullanılan tüm veri setleri anonimleştirilmiş ve eğitim amaçlıdır.
- Power BI dosyasına görseller eklenmiş ve sayfa yönlendirmeleri yapılandırılmıştır.

---

Bu proje, hem teknik hem de görsel açıdan kullanıcı dostu bir veri analizi ve raporlama deneyimi sunmayı hedeflemiştir.

