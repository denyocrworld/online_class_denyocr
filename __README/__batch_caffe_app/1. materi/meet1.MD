<!-- wp:embed {"url":"https://youtu.be/1o28RRDLVd0","type":"video","providerNameSlug":"youtube","responsive":true,"className":"wp-embed-aspect-4-3 wp-has-aspect-ratio"} -->
<figure class="wp-block-embed is-type-video is-provider-youtube wp-block-embed-youtube wp-embed-aspect-4-3 wp-has-aspect-ratio"><div class="wp-block-embed__wrapper">
https://youtu.be/1o28RRDLVd0
</div></figure>
<!-- /wp:embed -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-variable">Variable</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><strong>Analogi:</strong><br>Panci, Gelas, Mangkok, Piring, Rak Buku, Toples</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Hal penting di variable:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Deklarasi</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengambil nilai variable</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengubah nilai variable</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengkonversi nilai variable</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><strong>Tugas Mentor:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Buat deklarasi variabel-nya error, dan tanyakan pada student kenapa itu error dan cara mengatasinya.</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Contoh kan dekalarasi variabel yang salah, dengan membuat variabel bertipe X namun diberi nilai Y</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><em>Jelaskan cara menghandle problemnya dan bagaimana melihat errornya.</em></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
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
}</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-convert-variable">Convert Variable</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><strong>Tugas Mentor</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Jelaskan kenapa variabel itu perlu di convert</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Contoh konversi data dari String ke int</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Contoh error ketika mengkonversi variabel, tanyakan pada student penyebab errornya,<br>lalu jelaskan.</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Contoh konversi dari String ke int (Mengambil jumlah barang dari input pengguna)
  String userInputQuantity = &quot;5&quot;;
  int quantity = int.parse(userInputQuantity);
  print(&quot;Jumlah Barang (int): $quantity&quot;);

  // Contoh konversi dari String ke double (Mengambil harga barang dari input pengguna)
  String userInputPrice = &quot;25.50&quot;;
  double price = double.parse(userInputPrice);
  print(&quot;Harga Barang (double): $price&quot;);

  // Contoh konversi dari int ke String (Menampilkan jumlah barang dalam nota)
  int receiptQuantity = 10;
  String strReceiptQuantity = receiptQuantity.toString();
  print(&quot;Jumlah Barang dalam Nota (String): $strReceiptQuantity&quot;);

  // Contoh konversi dari double ke String (Menampilkan total harga dalam nota)
  double totalReceiptPrice = 125.75;
  String strTotalReceiptPrice = totalReceiptPrice.toStringAsFixed(2);
  print(&quot;Total Harga dalam Nota (String): $strTotalReceiptPrice&quot;);
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-tipe-data-khusus"><strong>Tipe Data Khusus</strong></h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Jika ingin menyimpan data tanggal kamu bisa menggunakan DateTime.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Tugas Mentor:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Jelaskan tentang property year, month, today</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Jelaskan tentang cara mengkonversi DateTime menjadi dMMMy menggunakan intl</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Jelaskan operator !(not), pada variabel boolean</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:codemirror-blocks/code-block {"fileName":"Dart","mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Contoh penggunaan tipe data DateTime
  DateTime today = DateTime.now();
  print(&quot;Hari ini: $today&quot;);

  // Mendapatkan komponen-komponen dari tipe data DateTime
  int year = today.year;
  int month = today.month;
  int day = today.day;
  print(&quot;Tahun: $year, Bulan: $month, Hari: $day&quot;);

  // Contoh penggunaan tipe data bool
  bool isRaining = true;
  bool isSunny = false;
  print(&quot;Apakah sedang hujan? $isRaining&quot;);
  print(&quot;Apakah sedang cerah? $isSunny&quot;);

  // Mengubah nilai tipe data bool
  isRaining = false;
  isSunny = true;
  print(&quot;Apakah sedang hujan? $isRaining&quot;);
  print(&quot;Apakah sedang cerah? $isSunny&quot;);
}
	</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-operator-aritmatika">Operator Aritmatika</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Operator yang digunakan untuk operasi matematikan.<br>Misalnya:<br>Penjumlahan +<br>Pembagian /<br>Perkalian *<br>Pengurangan -<br>Modulus %</p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Contoh operator aritmatika di Dart

  // Penambahan
  int a = 5;
  int b = 3;
  int hasilPenambahan = a + b;
  print(&quot;Hasil penambahan: $hasilPenambahan&quot;); // Output: 8

  // Pengurangan
  int c = 10;
  int d = 4;
  int hasilPengurangan = c - d;
  print(&quot;Hasil pengurangan: $hasilPengurangan&quot;); // Output: 6

  // Perkalian
  int e = 3;
  int f = 6;
  int hasilPerkalian = e * f;
  print(&quot;Hasil perkalian: $hasilPerkalian&quot;); // Output: 18

  // Pembagian
  double g = 15;
  double h = 2;
  double hasilPembagian = g / h;
  print(&quot;Hasil pembagian: $hasilPembagian&quot;); // Output: 7.5

  // Modulus (sisa pembagian)
  int i = 15;
  int j = 4;
  int sisaPembagian = i % j;
  print(&quot;Sisa pembagian: $sisaPembagian&quot;); // Output: 3 (karena 15 dibagi 4 sama dengan 3 dengan sisa 3)
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-if-statement">IF Statement</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>IF digunakan untuk mengaluasi sebuah kondisi.<br>Kondisi bisa terdiri dari beberapa block dan juga bisa memiliki lebih dari 1 condition<br>Yang biasanya menggunakan operator:<br><strong>DAN &amp;&amp;<br>ATAU ||</strong></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>IF Statement juga biasanya menggunakan operator pembanding, diantaranya:</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>== Sama dengan<br>!= Tidak sama dengan<br><br>&gt;<br>&lt;<br>&gt;=<br>&lt;=</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Contoh 1:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Contoh Point of Sale (POS) dengan IF statement di Dart

  // Total belanja pelanggan
  double totalPembelian = 500.0;

  // Jumlah minimum belanja untuk mendapatkan diskon
  double jumlahMinimumBelanjaUntukDiskon = 300.0;

  // Persentase diskon
  double persentaseDiskon = 10.0;

  // Periksa apakah pelanggan berhak mendapatkan diskon
  if (totalPembelian &gt;= jumlahMinimumBelanjaUntukDiskon) {
    // Hitung jumlah diskon
    double jumlahDiskon = (totalPembelian * persentaseDiskon) / 100;

    // Hitung total yang harus dibayar setelah diskon diberikan
    double totalYangHarusDibayar = totalPembelian - jumlahDiskon;

    // Tampilkan rincian diskon dan total yang harus dibayar setelah diskon
    print(&quot;Selamat! Anda berhak mendapatkan diskon sebesar ${persentaseDiskon}%.&quot;);
    print(&quot;Jumlah diskon: ${jumlahDiskon.toStringAsFixed(2)}&quot;);
    print(&quot;Total yang harus dibayar setelah diskon: ${totalYangHarusDibayar.toStringAsFixed(2)}&quot;);
  } else {
    // Jika total pembelian pelanggan kurang dari jumlah minimum untuk mendapatkan diskon
    // Tampilkan pesan bahwa pelanggan tidak berhak mendapatkan diskon
    print(&quot;Maaf, Anda tidak berhak mendapatkan diskon. Belanjakan lebih dari ${jumlahMinimumBelanjaUntukDiskon} untuk mendapatkan diskon.&quot;);
    print(&quot;Total yang harus dibayar: ${totalPembelian.toStringAsFixed(2)}&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Contoh 2:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Contoh Point of Sale (POS) dengan Else IF di Dart

  // Total belanja pelanggan
  double totalPembelian = 800.0;

  // Jumlah minimum belanja untuk mendapatkan diskon
  double jumlahMinimumBelanjaUntukDiskon = 300.0;

  // Persentase diskon untuk setiap level belanja
  double diskonLevel1 = 10.0;
  double diskonLevel2 = 15.0;
  double diskonLevel3 = 20.0;

  // Variabel untuk menyimpan persentase diskon yang akan diberikan
  double persentaseDiskon = 0.0;

  // Periksa berapa level diskon yang diberikan berdasarkan total belanja
  if (totalPembelian &gt;= jumlahMinimumBelanjaUntukDiskon &amp;&amp; totalPembelian &lt; 500) {
    persentaseDiskon = diskonLevel1;
  } else if (totalPembelian &gt;= 500 &amp;&amp; totalPembelian &lt; 1000) {
    persentaseDiskon = diskonLevel2;
  } else if (totalPembelian &gt;= 1000) {
    persentaseDiskon = diskonLevel3;
  } else {
    persentaseDiskon = 0.0; // Tidak ada diskon untuk total belanja di bawah jumlahMinimumBelanjaUntukDiskon
  }

  // Hitung jumlah diskon berdasarkan persentase diskon yang diberikan
  double jumlahDiskon = (totalPembelian * persentaseDiskon) / 100;

  // Hitung total yang harus dibayar setelah diskon diberikan
  double totalYangHarusDibayar = totalPembelian - jumlahDiskon;

  // Tampilkan rincian diskon dan total yang harus dibayar setelah diskon
  if (persentaseDiskon &gt; 0.0) {
    print(&quot;Selamat! Anda berhak mendapatkan diskon sebesar ${persentaseDiskon}%.&quot;);
    print(&quot;Jumlah diskon: ${jumlahDiskon.toStringAsFixed(2)}&quot;);
    print(&quot;Total yang harus dibayar setelah diskon: ${totalYangHarusDibayar.toStringAsFixed(2)}&quot;);
  } else {
    print(&quot;Maaf, Anda tidak berhak mendapatkan diskon. Belanjakan lebih dari ${jumlahMinimumBelanjaUntukDiskon} untuk mendapatkan diskon.&quot;);
    print(&quot;Total yang harus dibayar: ${totalPembelian.toStringAsFixed(2)}&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Tugas Mentor</strong>:</p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Ajak student menebak output dari soal statement IF</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><strong>Kasus 1</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  int qty = 2;
  double price = 100;
  double total = qty * price;

  if (total &gt; 200) {
    print(&quot;A: Kode masuk ke block A&quot;);
  } else {
    print(&quot;B: Kode masuk ke block B&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Kasus 2</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  int qty = 2;
  double price = 100;
  double total = qty * price;

  if (total &gt; 300) {
    print(&quot;A: Kode masuk ke block A&quot;);
  } else if (total &gt; 200) {
    print(&quot;B: Kode masuk ke block B&quot;);
  } else if (total == 200 + 100) {
    print(&quot;C: Kode masuk ke block C&quot;);
  } else {
    print(&quot;D: Kode masuk ke block D&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Kasus 3</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  int qty = 2;
  double price = 100;
  double total = qty * price;

  if (total &gt; 200) {
    print(&quot;A: Kode masuk ke block A&quot;);
  } else if (total &gt; 50) {
    print(&quot;B: Kode masuk ke block B&quot;);
  } else if (total == 200) {
    print(&quot;C: Kode masuk ke block C&quot;);
  } else {
    print(&quot;D: Kode masuk ke block D&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Kasus 4</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  int qty = 2;
  double price = 100;
  double total = qty * price;

  if (total == 200 &amp;&amp; qty &lt; 2) {
    print(&quot;A: Kode masuk ke block A&quot;);
  } else if (total == 200 &amp;&amp; qty &gt; 1) {
    print(&quot;B: Kode masuk ke block B&quot;);
  } else {
    print(&quot;D: Kode masuk ke block D&quot;);
  }
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-list-dan-map">List dan Map</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p><strong>Analogi:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Rak buku, </p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Sebuah variabel yang bisa digunakan untuk menyimpan lebih dari 1 nilai.<br>Perbedaannya:<br>Penyimpanan List menggunakan <strong>index,</strong> sedangkan <strong>Map </strong>menggunakan <strong>key</strong> and <strong>value</strong>.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Penting untuk dikuasai</strong> <strong>terkait List</strong>:</p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Mendeklarasikan List</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mendapatkan panjang List</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengambil nilai dari Listindex n</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengubah nilai dari Listindex n</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Menambahkan item baru ke List</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Membuang item dari List</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengosongkan List</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Membaca List dengan looping for-item</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><strong>Penting untuk dikuasai terkait Map</strong></p>
<!-- /wp:paragraph -->

<!-- wp:list {"ordered":true} -->
<ol><!-- wp:list-item -->
<li>Mendeklarasikan Map</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengambil nilai dari Map dengan key</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Mengubah nilai dari Map dengan key</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Menambahkan item dengan key baru ke Map</li>
<!-- /wp:list-item -->

<!-- wp:list-item -->
<li>Membuang item dengan key dari Map</li>
<!-- /wp:list-item --></ol>
<!-- /wp:list -->

<!-- wp:paragraph -->
<p><strong>Contoh List</strong></p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Studi Kasus: Produk-produk dalam Toko

  List&lt;String&gt; products = [&quot;ODOL&quot;, &quot;MIE INSTANT&quot;, &quot;SUSU KENTAL&quot;];

  // Mendapatkan panjang List
  int length = products.length;
  print(&quot;Jumlah produk: $length&quot;); // Output: 3

  // Mengambil nilai dari List index n
  String productAtIndex1 = products[1];
  print(&quot;Produk pada index 1: $productAtIndex1&quot;); // Output: MIE INSTANT

  // Mengubah nilai dari List index n
  products[0] = &quot;SABUN&quot;;
  print(&quot;List produk setelah mengubah nilai index 0: $products&quot;); // Output: [SABUN, MIE INSTANT, SUSU KENTAL]

  // Menambahkan item baru ke List
  products.add(&quot;KOPI&quot;);
  print(&quot;List produk setelah menambahkan item baru: $products&quot;); // Output: [SABUN, MIE INSTANT, SUSU KENTAL, KOPI]

  // Membuang item dari List berdasarkan nilai
  products.remove(&quot;SUSU KENTAL&quot;);
  print(&quot;List produk setelah membuang item SUSU KENTAL: $products&quot;); // Output: [SABUN, MIE INSTANT, KOPI]

  // Membuang item dari List berdasarkan index
  int indexToRemove = 1;
  products.removeAt(indexToRemove);
  print(&quot;List produk setelah membuang item pada index $indexToRemove: $products&quot;); // Output: [SABUN, KOPI]

  // Mengosongkan List
  products.clear();
  print(&quot;List produk setelah dikosongkan: $products&quot;); // Output: []

  // Membaca List dengan looping for-in
  List&lt;String&gt; fruits = [&quot;Apple&quot;, &quot;Banana&quot;, &quot;Orange&quot;, &quot;Grapes&quot;];

  for (String fruit in fruits) {
    print(&quot;Buah: $fruit&quot;);
  }
  // Output:
  // Buah: Apple
  // Buah: Banana
  // Buah: Orange
  // Buah: Grapes
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p><strong>Contoh Map</strong>:</p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // Mendeklarasikan Map
  Map&lt;String, int&gt; scores = {
    &quot;John&quot;: 90,
    &quot;Alice&quot;: 85,
    &quot;Bob&quot;: 78,
  };

  // Mengambil nilai dari Map dengan key
  int johnScore = scores[&quot;John&quot;];
  print(&quot;Nilai John: $johnScore&quot;); // Output: Nilai John: 90

  // Mengubah nilai dari Map dengan key
  scores[&quot;Alice&quot;] = 88;
  print(&quot;Map setelah mengubah nilai Alice: $scores&quot;); // Output: Map setelah mengubah nilai Alice: {John: 90, Alice: 88, Bob: 78}

  // Menambahkan item baru ke Map
  scores[&quot;Eva&quot;] = 95;
  print(&quot;Map setelah menambahkan item Eva: $scores&quot;); // Output: Map setelah menambahkan item Eva: {John: 90, Alice: 88, Bob: 78, Eva: 95}

  // Membuang item dari Map
  scores.remove(&quot;Bob&quot;);
  print(&quot;Map setelah membuang item Bob: $scores&quot;); // Output: Map setelah membuang item Bob: {John: 90, Alice: 88, Eva: 95}
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:heading -->
<h2 class="wp-block-heading" id="h-null-safety">Null Safety</h2>
<!-- /wp:heading -->

<!-- wp:paragraph -->
<p>Null safety adalah konsep yang dirancang untuk mengatasi masalah umum terkait kehadiran nilai null, yang dapat menyebabkan bug dan kesalahan di aplikasi.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>Dulu, sebelum adanya fitur ini, sering sekali ketika Aplikasi berjalan kita mendapati error ini (contoh).</p>
<!-- /wp:paragraph -->

<!-- wp:image {"id":18798,"width":150,"height":299,"sizeSlug":"large","linkDestination":"none"} -->
<figure class="wp-block-image size-large is-resized"><img src="https://9code.id/kelas-online-full-stack/wp-content/uploads/2023/07/image-512x1024.png" alt="" class="wp-image-18798" style="width:150px;height:299px" width="150" height="299"/></figure>
<!-- /wp:image -->

<!-- wp:paragraph -->
<p>Nah agar bisa mengurangi error seperti ini.<br>Dibuatlah fitur Null Safety agar developer lebih aware ketika sebuah variabel berpotensi bernilai null.<br>Maka programmer harus mengatasinya.</p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Contoh Penerapan Null Safety dan Operator-nya</strong>:</p>
<!-- /wp:paragraph -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // ! non-nullable | nilainya tidak boleh null
  String name = &quot;Deniansyah&quot;;
  // name = null; //tidak bisa dilakukan, karena name non-nullable

  // ! nullable | nilainya, mungkin saja null
  int? age = 23;
  age = null;

  print(&quot;name: $name&quot;);
  print(&quot;age: $age&quot;);

  //----
  // ! Null Assertion
  // Jika kamu yakin variabel message tidak mungkin null,
  // Maka kamu bisa menggunakan operator null assertion !
  String? message;
  sendMessage(message!);
  //ini tetap akan error, jika ternyata nilai-nya null

  //-----
  // ?? Null-aware coalescing operator
  // Digunakan untuk memberi nilai, jika nilainya null
  String? category;
  String? yourCategory = category ?? &quot;Umum&quot;;
  print(yourCategory);

  //-----
  // ??= null-aware assignment operator
  // Digunakan untuk memberi nilai jika nilai variabel-nya null
  String? productName;
  productName ??= &quot;GG FILTER 12&quot;;
  print(productName);
}

sendMessage(String message) {
  print(message);
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:codemirror-blocks/code-block {"mode":"dart","mime":"application/dart"} -->
<div class="wp-block-codemirror-blocks-code-block code-block"><pre>void main() {
  // non-nullable | nilainya tidak boleh null
  String name = &quot;Deniansyah&quot;;
  name = null;

  // nullable | nilainya, mungkin saja null
  int? age = 23;
  age = null;

  print(&quot;name: $name&quot;);
  print(&quot;age: $age&quot;);
}
</pre></div>
<!-- /wp:codemirror-blocks/code-block -->

<!-- wp:paragraph -->
<p></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p><strong>Tugas Mentor:</strong></p>
<!-- /wp:paragraph -->

<!-- wp:paragraph -->
<p>QA dengan Student terkait Materi Basic Pemrograman Dart</p>
<!-- /wp:paragraph -->