# Tutorial: Looping di Dart

Looping adalah salah satu konsep dasar dalam pemrograman yang memungkinkan Anda untuk menjalankan sejumlah perintah berulang kali. Dart, bahasa pemrograman yang digunakan dalam pengembangan aplikasi Flutter, mendukung beberapa jenis looping yang memungkinkan Anda mengulangi kode sesuai dengan kondisi atau iterasi tertentu.


## Kenapa harus menerapkan Looping?

Dengan looping kita bisa membuat penulisan kode yang berulang menjadi effisien. Yang tadinya perlu menulis 100 baris, kita cukup menulis beberapa baris saja.

Tanpa looping, 
Kode-nya akan sangat panjang.
```
void main() {
  print(1);
  print(2);
  print(3);
  print(4);
  print(5);
  print(6);
  print(7);
  print(8);
  print(9);
  print(10);
  // --- print(11) - print(99)
  print(100);
}
```

Dengan looping:
Cukup dengan beberapa baris kode saja.
```
for(var i=1;i<=100;i++){
    print(i);
}
```

## Jenis Looping di Dart

Dart mendukung tiga jenis looping yang umum digunakan:

1. **For Loop**
   For loop adalah jenis loop yang paling umum digunakan. Ini memungkinkan Anda menjalankan serangkaian perintah dengan jumlah iterasi tertentu. Berikut adalah sintaks dasar for loop:

   ```dart
   for (initialization; condition; increment) {
     // kode yang akan diulang
   }
   ```

   Contoh penggunaan for loop:

   ```dart
   for (int i = 0; i < 5; i++) {
     print("Iterasi ke-$i");
   }
   ```

   Hasilnya adalah:
   ```
   Iterasi ke-0
   Iterasi ke-1
   Iterasi ke-2
   Iterasi ke-3
   Iterasi ke-4
   ```

2. **While Loop**
   While loop menjalankan sekelompok perintah selama kondisi tertentu benar. Berikut adalah sintaks dasar while loop:

   ```dart
   while (condition) {
     // kode yang akan diulang
   }
   ```

   Contoh penggunaan while loop:

   ```dart
   int count = 0;
   while (count < 5) {
     print("Iterasi ke-$count");
     count++;
   }
   ```

   Hasilnya sama dengan contoh sebelumnya.

3. **Do-While Loop**
   Do-while loop mirip dengan while loop, tetapi perintah dieksekusi setidaknya sekali sebelum kondisi diuji. Berikut adalah sintaks dasar do-while loop:

   ```dart
   do {
     // kode yang akan diulang
   } while (condition);
   ```

   Contoh:

   ```dart
   int count = 0;
   do {
     print("Iterasi ke-$count");
     count++;
   } while (count < 5);
   ```

   Ini juga menghasilkan hasil yang sama.

4. **For-In Loop**
    Selain tiga jenis looping yang telah kita bahas sebelumnya (for loop, while loop, dan do-while loop), Dart juga mendukung loop `for-in`. Loop ini sangat berguna ketika Anda perlu mengulangi elemen-elemen dalam sebuah koleksi, seperti List atau Map.

    Berikut adalah sintaks dari loop `for-in`:

    ```dart
    for (var item in items) {
    // kode yang akan diulang untuk setiap item dalam items
    }
    ```

    Contoh penggunaan loop `for-in` dengan List:

    ```dart
    List<String> fruits = ['apel', 'pisang', 'ceri', 'durian'];

    for (var fruit in fruits) {
    print("Saya suka $fruit");
    }
    ```

    Hasilnya adalah:

    ```
    Saya suka apel
    Saya suka pisang
    Saya suka ceri
    Saya suka durian
    ```

    Contoh penggunaan loop `for-in` dengan Map:

    ```dart
    Map<String, int> scores = {'John': 90, 'Jane': 85, 'Bob': 88};

    for (var name in scores.keys) {
    var score = scores[name];
    print("$name memiliki nilai $score");
    }
    ```

    Hasilnya adalah:

    ```
    John memiliki nilai 90
    Jane memiliki nilai 85
    Bob memiliki nilai 88
    ```

    Loop `for-in` sangat berguna untuk mengakses dan mengiterasi elemen-elemen dalam koleksi dengan cara yang lebih mudah dan sederhana.


## Penghentian Looping
    Penting untuk memiliki kondisi penghentian yang benar dalam loop agar tidak terjebak dalam pengulangan tak terbatas. Anda dapat menggunakan pernyataan `break` untuk keluar dari loop atau `continue` untuk melanjutkan ke iterasi berikutnya, tergantung pada kebutuhan Anda.

    ```dart
    for (int i = 0; i < 10; i++) {
    if (i == 5) {
        break; // Keluar dari loop ketika i mencapai 5
    }
    print("Iterasi ke-$i");
    }
    ```