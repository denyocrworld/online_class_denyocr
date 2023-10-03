Baik, saya akan membuat tutorial berdasarkan konten yang telah Anda berikan dalam format README.md.

---

# Tutorial Bahasa Pemrograman Dart

## Daftar Isi
1. [Variable](#variable)
2. [Convert Variable](#convert-variable)
3. [Tipe Data Khusus](#tipe-data-khusus)
4. [Operator Aritmatika](#operator-aritmatika)
5. [IF Statement](#if-statement)
6. [List dan Map](#list-dan-map)
7. [Null Safety](#null-safety)

---

## Variable
**Analogi:** Panci, Gelas, Mangkok, Piring, Rak Buku, Toples

**Hal penting di variable:**
1. Deklarasi
2. Mengambil nilai variable
3. Mengubah nilai variable
4. Mengkonversi nilai variable

**Tugas Mentor:**
1. Buat deklarasi variabel-nya error, dan tanyakan pada student kenapa itu error dan cara mengatasinya.
2. Contohkan deklarasi variabel yang salah, dengan membuat variabel bertipe X namun diberi nilai Y. Jelaskan cara menghandle problemnya dan bagaimana melihat errornya.

```dart
void main() {
  // Deklarasi variabel untuk informasi produk
  String productName = 'Tas Ransel';
  double productPrice = 150000;
  int productStock = 50;
  bool productAvailable = true;

  // Deklarasi variabel untuk informasi pengguna
  String userName = 'John Doe';
  int userAge = 30;
  String userEmail = 'john.doe@example.com';
  bool isPremiumMember = true;

  // Menampilkan informasi produk
  print('===== Informasi Produk =====');
  print('Nama Produk: $productName');
  print('Harga Produk: Rp $productPrice');
  print('Stok Tersedia: $productStock');
  print('Tersedia: ${productAvailable ? 'Ya' : 'Tidak'}');
  print('');

  // Menampilkan informasi pengguna
  print('===== Informasi Pengguna =====');
  print('Nama Pengguna: $userName');
  print('Usia: $userAge tahun');
  print('Email: $userEmail');
  print('Premium Member: ${isPremiumMember ? 'Ya' : 'Tidak'}');
  print('');
}
```

---

## Convert Variable
**Tugas Mentor:**
1. Jelaskan kenapa variabel itu perlu di convert.
2. Contoh konversi data dari String ke int.
3. Contoh error ketika mengkonversi variabel, tanyakan pada student penyebab errornya, lalu jelaskan.

```dart
void main() {
  // Contoh konversi dari String ke int (Mengambil jumlah barang dari input pengguna)
  String userInputQuantity = "5";
  int quantity = int.parse(userInputQuantity);
  print("Jumlah Barang (int): $quantity");

  // Contoh konversi dari String ke double (Mengambil harga barang dari input pengguna)
  String userInputPrice = "25.50";
  double price = double.parse(userInputPrice);
  print("Harga Barang (double): $price");

  // Contoh konversi dari int ke String (Menampilkan jumlah barang dalam nota)
  int receiptQuantity = 10;
  String strReceiptQuantity = receiptQuantity.toString();
  print("Jumlah Barang dalam Nota (String): $strReceiptQuantity");

  // Contoh konversi dari double ke String (Menampilkan total harga dalam nota)
  double totalReceiptPrice = 125.75;
  String strTotalReceiptPrice = totalReceiptPrice.toStringAsFixed(2);
  print("Total Harga dalam Nota (String): $strTotalReceiptPrice");
}
```

---

## Tipe Data Khusus
Jika ingin menyimpan data tanggal kamu bisa menggunakan DateTime.

**Tugas Mentor:**
1. Jelaskan tentang property year, month, today.
2. Jelaskan tentang cara mengkonversi DateTime menjadi dMMMy menggunakan intl.
3. Jelaskan operator !(not), pada variabel boolean.

```dart
void main() {
  // Contoh penggunaan tipe data DateTime
  DateTime today = DateTime.now();
  print("Hari ini: $today");

  // Mendapatkan komponen-komponen dari tipe data DateTime
  int year = today.year;
  int month = today.month;
  int day = today.day;
  print("Tahun: $year, Bulan: $month, Hari: $day");

  // Contoh penggunaan tipe data bool
  bool isRaining = true;
  bool isSunny = false;
  print("Apakah sedang hujan? $isRaining");
 

 print("Apakah sedang cerah? $isSunny");
}
```

---

## Operator Aritmatika
**Tugas Mentor:**
1. Jelaskan tentang operator +, -, *, /, %.
2. Jelaskan tentang operator ++ dan --.
3. Jelaskan tentang operator +=, -=, *=, /=.

```dart
void main() {
  int a = 10;
  int b = 5;

  print("a + b = ${a + b}");  // 15
  print("a - b = ${a - b}");  // 5
  print("a * b = ${a * b}");  // 50
  print("a / b = ${a / b}");  // 2.0
  print("a % b = ${a % b}");  // 0

  a++;
  print("a setelah increment: $a");  // 11

  b--;
  print("b setelah decrement: $b");  // 4

  a += 5;
  print("a setelah ditambah 5: $a");  // 16

  b -= 2;
  print("b setelah dikurangi 2: $b");  // 2
}
```

---

## IF Statement
**Tugas Mentor:**
1. Jelaskan tentang operator ==, !=, >, <, >=, <=.
2. Jelaskan tentang operator &&, ||, !.
3. Jelaskan tentang if, else if, dan else.

```dart
void main() {
  int score = 85;

  if (score >= 90) {
    print("Grade A");
  } else if (score >= 80) {
    print("Grade B");
  } else if (score >= 70) {
    print("Grade C");
  } else {
    print("Grade D");
  }
}
```

---

## List dan Map

**Analogi:**
- **List**: Bayangkan sebuah rak buku. Setiap buku memiliki posisi tertentu di rak tersebut. Jika Anda ingin mengetahui buku apa yang berada di posisi ke-3, Anda bisa langsung melihatnya. Ini mirip dengan bagaimana kita mengakses elemen dalam list menggunakan indeks.
  
- **Map**: Bayangkan sebuah kamus. Di dalam kamus, Anda mencari definisi dari sebuah kata kunci. Kata kunci ini unik dan mengarahkan Anda ke definisi atau informasi tertentu. Dalam pemrograman, kata kunci ini disebut "key" dan informasi atau definisi yang terkait dengan key tersebut disebut "value".

**Tugas Mentor:**
1. Jelaskan tentang list dan map.
2. Jelaskan tentang cara mengakses elemen dalam list dan map.
3. Jelaskan tentang cara menambahkan elemen ke dalam list dan map.

```dart
void main() {
  // Contoh penggunaan list
  List<String> fruits = ["apple", "banana", "cherry"];
  print(fruits[0]);  // apple
  fruits.add("orange");
  print(fruits);  // [apple, banana, cherry, orange]

  // Contoh penggunaan map
  Map<String, int> fruitPrices = {
    "apple": 10000,
    "banana": 5000,
    "cherry": 15000
  };
  print(fruitPrices["apple"]);  // 10000
  fruitPrices["orange"] = 12000;
  print(fruitPrices);  // {apple: 10000, banana: 5000, cherry: 15000, orange: 12000}
}
```

## Null Safety
**Tugas Mentor:**
1. Jelaskan tentang null safety di Dart.
2. Jelaskan tentang operator ?., ??, ??=.

```dart
void main() {
  String? nullableString;
  String nonNullableString = nullableString ?? "Default Value";
  print(nonNullableString);  // Default Value

  nullableString = "Hello, Dart!";
  String anotherString = nullableString!;
  print(anotherString);  // Hello, Dart!

  nullableString?.toUpperCase();
  print(nullableString);  // HELLO, DART!
}
```

---

Semoga tutorial ini membantu Anda memahami dasar-dasar bahasa pemrograman Dart. Selamat belajar!

---