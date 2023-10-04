## Materi: Pengujian di Flutter - Unit Test, Widget Test, dan Integration Test

### 1. Pengenalan Pengujian di Flutter

Pengujian adalah bagian penting dari pengembangan perangkat lunak yang memungkinkan Anda untuk memastikan bahwa aplikasi Flutter Anda berfungsi dengan baik. Dalam Flutter, terdapat tiga jenis pengujian utama yang dapat Anda gunakan: Unit Test, Widget Test, dan Integration Test.

### 2. Unit Test

**Definisi Unit Test:**
Unit Test adalah jenis pengujian yang fokus pada pengujian unit terkecil dalam aplikasi Anda, seperti fungsi atau metode. Unit test bertujuan untuk memeriksa apakah bagian-bagian kecil dari kode Anda berfungsi dengan benar secara terisolasi.

**Kelebihan Unit Test:**
- **Isolasi**: Unit test memungkinkan pengujian terisolasi dari kode lain, sehingga mudah dikelola dan diulang.
- **Cepat**: Karena unit test hanya berfokus pada bagian kecil kode, mereka biasanya berjalan cepat.
- **Mendeteksi Kesalahan Dini**: Unit test membantu mendeteksi masalah sejak dini saat Anda mengembangkan.

**Kekurangan Unit Test:**
- **Tidak Menjamin Integrasi yang Benar**: Unit test tidak memastikan bahwa seluruh aplikasi berfungsi dengan benar saat digabungkan. Mungkin ada masalah yang hanya terjadi saat unit-unit tersebut berinteraksi.

### 3. Widget Test

**Definisi Widget Test:**
Widget Test adalah jenis pengujian yang digunakan untuk menguji widget dan tampilan dalam aplikasi Flutter. Ini membantu memeriksa apakah widget tampilan Anda tampil dan berinteraksi dengan benar.

**Kelebihan Widget Test:**
- **Pengujian UI**: Widget test memungkinkan Anda menguji UI aplikasi Anda, termasuk tampilan, perubahan UI berdasarkan input, dan sebagainya.
- **Pengujian Interaksi**: Anda dapat menguji interaksi pengguna seperti tap, drag, dan input teks.

**Kekurangan Widget Test:**
- **Tidak Menjamin Logika Bisnis yang Benar**: Widget test fokus pada tampilan dan interaksi, bukan pada logika bisnis di bawahnya. Beberapa masalah logika mungkin tidak terdeteksi.

### 4. Integration Test

**Definisi Integration Test:**
Integration Test adalah jenis pengujian yang bertujuan untuk menguji interaksi antara berbagai bagian atau komponen dalam aplikasi. Ini dapat mencakup pengujian antar layar, antarmuka dengan layanan web, atau interaksi dengan database.

**Kelebihan Integration Test:**
- **Menguji Integrasi yang Kompleks**: Integration test memungkinkan Anda menguji interaksi antara komponen yang berbeda dalam aplikasi, termasuk koneksi dengan layanan eksternal.
- **Mendeteksi Kesalahan Integrasi**: Dapat membantu mendeteksi kesalahan integrasi yang tidak dapat ditemukan dengan unit test.

**Kekurangan Integration Test:**
- **Lambat**: Biasanya lebih lambat daripada unit test karena melibatkan komunikasi dengan berbagai komponen.
- **Sulit Dikelola**: Pengujian integrasi bisa lebih sulit dikelola dan disusun daripada unit test.


## Apa saja sih yang biasanya di test?

Berikut adalah contoh method atau kasus yang dapat diuji pada setiap jenis pengujian (Unit Test, Widget Test, dan Integration Test) bersama dengan deskripsi singkatnya:

### 1. Unit Test

#### Kasus Uji:
1. **Fungsi Matematika Sederhana**
   - Menguji fungsi sederhana seperti penambahan, pengurangan, perkalian, dan pembagian.

2. **Validasi Data Pengguna**
   - Menguji validasi data pengguna, seperti memastikan bahwa alamat email memiliki format yang benar.

3. **Logika Bisnis**
   - Menguji logika bisnis seperti perhitungan harga total belanja berdasarkan item di keranjang belanja.

### 2. Widget Test

#### Kasus Uji:
1. **Tampilan Widget Login**
   - Memastikan widget tampilan halaman login, termasuk teks masukan dan tombol "Login," ditampilkan dengan benar.

2. **Interaksi Pengguna**
   - Menguji interaksi pengguna, seperti mengetuk tombol, mengisi formulir, dan memeriksa perubahan tampilan berdasarkan aksi pengguna.

3. **Validasi Formulir**
   - Menguji validasi formulir, seperti memeriksa apakah pesan kesalahan muncul saat pengguna mengirimkan formulir dengan data yang tidak valid.

### 3. Integration Test

#### Kasus Uji:
1. **Integrasi dengan Layanan Eksternal**
   - Menguji integrasi dengan layanan web eksternal, seperti mengambil data dari API REST dan memeriksa respons.

2. **Navigasi Antar Layar**
   - Menguji navigasi antar layar dalam aplikasi, termasuk pengalihan dari halaman login ke halaman dashboard.

3. **Interaksi Komponen Aplikasi**
   - Menguji interaksi antara berbagai komponen aplikasi, seperti menambahkan produk ke keranjang belanja, melakukan pembayaran, dan memeriksa riwayat pesanan.

4. **Koneksi Database Lokal**
   - Menguji penyimpanan data lokal di dalam database dan memeriksa apakah data dapat diambil dan disimpan dengan benar.

5. **Keamanan Aplikasi**
   - Menguji keamanan aplikasi dengan mencoba skenario keamanan, seperti melindungi data pengguna dan mengamankan koneksi ke layanan eksternal.

Catatan: Contoh di atas hanya representatif, dan kasus uji sebenarnya akan bervariasi tergantung pada aplikasi dan fitur yang Anda kembangkan. Pengujian yang efektif harus mencakup berbagai skenario penggunaan dan aspek aplikasi Anda.

---

## Contoh Test Scenario

Berikut adalah daftar test scenario yang perlu dilakukan dalam bentuk tabel dengan nomor test:

<table>
  <tr>
    <th style="width: 160px">No Test</th>
    <th>Jenis Pengujian</th>
    <th>Deskripsi Pengujian</th>
  </tr>
  <tr>
    <td>WT-001-AUTH</td>
    <td>Widget Test - doLogin()</td>
    <td>Memastikan bahwa pengalihan ke DashboardView berfungsi saat login berhasil.</td>
  </tr>
  <tr>
    <td>IT-001-USER-SERVICE</td>
    <td>Integration Test - UserService</td>
    <td>Memastikan method getUsers bekerja dan mereturn List.</td>
  </tr>
  <tr>
    <td>WT-002-FORM</td>
    <td>Widget Test - Form Validation</td>
    <td>Menguji validasi formulir pada halaman pendaftaran.</td>
  </tr>
  <tr>
    <td>IT-002-PRODUCT-SERVICE</td>
    <td>Integration Test - ProductService</td>
    <td>Menguji interaksi dengan layanan produk, termasuk pengambilan daftar produk.</td>
  </tr>
  <tr>
    <td>WT-003-CART</td>
    <td>Widget Test - Shopping Cart</td>
    <td>Menguji interaksi dengan keranjang belanja, termasuk penambahan dan penghapusan item.</td>
  </tr>
  <tr>
    <td>IT-003-ORDER-SERVICE</td>
    <td>Integration Test - OrderService</td>
    <td>Menguji penanganan pesanan, termasuk pembuatan dan pengelolaan pesanan.</td>
  </tr>
</table>

