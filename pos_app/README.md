**Langkah 1: Membuat Database MySQL**

1. Buka terminal atau command prompt Anda.

2. Login ke server MySQL dengan perintah berikut (mungkin perlu memasukkan kata sandi MySQL jika Anda mengaturnya sebelumnya):

   ```bash
   mysql -u root -p
   ```

3. Setelah berhasil masuk, Anda dapat membuat database dengan nama `pos_db` dengan perintah SQL berikut:

   ```sql
   CREATE DATABASE pos_db;
   ```

   Ini akan membuat database baru dengan nama `pos_db`.

4. Keluar dari klien MySQL dengan mengetikkan:

   ```sql
   exit
   ```

**Langkah 2: Buat Proyek Laravel**

1. Kembali ke terminal atau command prompt Anda.

2. Buat proyek Laravel baru dengan menjalankan perintah berikut:

   ```bash
   composer create-project laravel/laravel pos_app
   ```

   Ini akan membuat proyek Laravel baru dengan nama "pos_app."

**Langkah 3: Konfigurasi Database**

1. Buka file `.env` dalam direktori proyek Laravel Anda menggunakan editor teks.

2. Atur koneksi database sesuai dengan informasi yang Anda miliki:

   ```
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=pos_db
   DB_USERNAME=root
   DB_PASSWORD=
   ```

   Pastikan `DB_DATABASE` sesuai dengan nama database yang telah Anda buat sebelumnya.

**Langkah 4: Migrasi Database**

1. Buat migrasi untuk tabel produk dan pesanan dengan perintah berikut:

   ```bash
   php artisan make:migration create_products_table
   php artisan make:migration create_orders_table
   php artisan make:migration create_order_products_table
   ```

   Ini akan membuat tiga file migrasi baru dalam direktori `database/migrations`.

2. Buka file migrasi `create_products_table.php`, `create_orders_table.php`, dan `create_order_products_table.php` yang baru dibuat dalam direktori `database/migrations`. Tentukan struktur tabel sesuai dengan kebutuhan Anda. Gunakan `integer` untuk kolom `order_id` dan `product_id`, serta ubah nama tabel perantara menjadi `order_products`.

   Contoh untuk tabel `products`:

   ```php
   public function up()
   {
       Schema::create('products', function (Blueprint $table) {
           $table->id();
           $table->string('photo');
           $table->string('product_name');
           $table->double('price');
           $table->text('description');
           $table->timestamps();
       });
   }
   ```

   Contoh untuk tabel `orders` dan tabel perantara `order_products`:

   ```php
   public function up()
   {
       Schema::create('orders', function (Blueprint $table) {
           $table->id();
           $table->string('customer_name');
           $table->text('address');
           $table->timestamps();
       });
   }
   ```

   Contoh untuk tabel `order_products` dan tabel perantara `order_products`:

   ```php
   public function up()
   {
        Schema::create('order_products', function (Blueprint $table) {
           $table->id();
           $table->integer('order_id');
           $table->integer('product_id');
           $table->integer('quantity');
           $table->timestamps();
       });
   }
   ```

3. Jalankan migrasi untuk membuat tabel-tabel ini:

   ```bash
   php artisan migrate
   ```

**Langkah 5: Membuat Model**

1. Buat model untuk produk dan pesanan dengan perintah berikut:

   ```bash
   php artisan make:model Product
   php artisan make:model Order
   ```

2. Dalam model `Order`, Anda dapat mendefinisikan relasi dengan produk sebagai berikut:

   ```php
    protected $fillable = [
        'customer_name',
        'address',
    ];
    
   public function products()
   {
       return $this->belongsToMany(Product::class, 'order_products')
            ->as('order_product')
            ->withPivot('quantity');
   }
   ```

3. Dalam model `Product`, tambahkan konfigurasi ini:
    ```php
    protected $fillable = [
        'photo',
        'product_name',
        'price',
        'description',
    ];
    ```

**Langkah 6: Membuat Controller**

1. Buat controller untuk produk (ProductController) dan pesanan (OrderController) dengan perintah berikut:

   ```bash
   php artisan make:controller ProductController
   php artisan make:controller OrderController
   ```

2. Dalam controller, Anda dapat mengisi metode-metode untuk CRUD produk dan menambahkan fitur Create Orders serta List Orders sesuai dengan kebutuhan Anda.

**Langkah 7: Membuat Controller (Lanjutan)**

1. Edit ProductController dan OrderController seperti dibawah ini:

**ProductController.php:**

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

class ProductController extends Controller
{
    public function index()
    {
        $products = Product::all();
        return response()->json(['data' => $products]);
    }

    public function store(Request $request)
    {
        $data = $request->validate([
            'photo' => 'required|string',
            'product_name' => 'required|string',
            'price' => 'required|numeric',
            'description' => 'required|string',
        ]);

        $product = Product::create($data);

        return response()->json(['message' => 'Product created successfully', 'data' => $product], 201);
    }

    public function show($id)
    {
        $product = Product::findOrFail($id);
        return response()->json(['data' => $product]);
    }

    public function update(Request $request, $id)
    {
        $data = $request->validate([
            'photo' => 'string',
            'product_name' => 'string',
            'price' => 'numeric',
            'description' => 'string',
        ]);

        $product = Product::findOrFail($id);
        $product->update($data);

        return response()->json(['message' => 'Product updated successfully', 'data' => $product]);
    }

    public function destroy($id)
    {
        $product = Product::findOrFail($id);
        $product->delete();

        return response()->json(['message' => 'Product deleted successfully']);
    }
}
```

3. Buka controller `OrderController` yang baru saja dibuat dalam direktori `app/Http/Controllers` dan isi dengan metode-metode yang diperlukan untuk Create Orders dan List Orders:

**OrderController.php:**

```php
<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Order;
use App\Models\Product;

class OrderController extends Controller
{
    public function create(Request $request)
    {
        $data = $request->validate([
            'customer_name' => 'required|string',
            'address' => 'required|string',
            'products' => 'required|array',
        ]);

        $order = Order::create([
            'customer_name' => $data['customer_name'],
            'address' => $data['address'],
        ]);

        foreach ($data['products'] as $productData) {
            $product = Product::findOrFail($productData['product_id']);
            $quantity = $productData['quantity'];

            $order->products()->attach($product, ['quantity' => $quantity]);
        }

        return response()->json(['message' => 'Order created successfully', 'data' => $order], 201);
    }

    public function index(Request $request)
    {
        $query = Order::with('products'); // Menyertakan produk dalam respons JSON

        // Filter berdasarkan order_id jika parameter ada
        if ($request->has('order_id') && $request->input('order_id') != "") {
            $query->where('id', $request->input('order_id'));
        }

        // Filter berdasarkan customer_name dengan penggunaan LIKE jika parameter ada
        if ($request->has('customer_name')) {
            $customerName = $request->input('customer_name');
            $query->where('customer_name', 'LIKE', "%$customerName%");
        }

        // Pengurutan berdasarkan 'created_at' dengan urutan menurun (desc) jika parameter 'sort' adalah 'desc'
        if ($request->input('sort') === 'desc') {
            $query->orderBy('created_at', 'desc');
        }

        // Menambahkan paging dengan jumlah data per halaman (contoh: 10 data per halaman)
        $perPage = $request->input('per_page', 10); // Jumlah data per halaman, default 10
        $orders = $query->paginate($perPage);

        return response()->json($orders);
    }

}
```

**Langkah 8: Pembuatan Data Dummy Produk dan Pesanan**

Setelah membuat controller, langkah selanjutnya adalah membuat data dummy produk dan pesanan untuk menguji API Anda. Anda dapat melakukannya dengan cara menambahkan data ke dalam database menggunakan seeder Laravel. Berikut adalah langkah-langkahnya:

**Langkah 8a: Pembuatan Data Dummy Produk**

1. Buat seeder baru untuk produk dengan perintah berikut:

   ```bash
   php artisan make:seeder ProductSeeder
   ```

2. Buka file seeder yang baru dibuat dalam direktori `database/seeders/ProductSeeder.php` dan isi dengan data dummy produk. Contoh:

   ```php
   <?php

   namespace Database\Seeders;

   use Illuminate\Database\Seeder;
   use App\Models\Product;

   class ProductSeeder extends Seeder
   {
       public function run()
       {
           Product::create([
            'photo' => 'https://images.unsplash.com/photo-1526170375885-4d8ecf77b99f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2070&q=80',
            'product_name' => 'Camera Sony DX10',
            'price' => 93.99,
            'description' => 'Description for Product 1',
        ]);
 
        Product::create([
            'photo' => 'https://images.unsplash.com/photo-1581235720704-06d3acfcb36f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=2080&q=80',
            'product_name' => 'Car Miniature',
            'price' => 46.99,
            'description' => 'Description for Product 2',
        ]);

           // Tambahkan data produk lainnya sesuai kebutuhan
       }
   }
   ```

3. Jalankan seeder untuk menambahkan data dummy produk ke dalam database:

   ```bash
   php artisan db:seed --class=ProductSeeder
   ```

**Langkah 8b: Pembuatan Data Dummy Pesanan**

1. Buat seeder baru untuk pesanan dengan perintah berikut:

   ```bash
   php artisan make:seeder OrderSeeder
   ```

2. Buka file seeder yang baru dibuat dalam direktori `database/seeders/OrderSeeder.php` dan isi dengan data dummy pesanan. Contoh:

   ```php
   <?php

   namespace Database\Seeders;

   use Illuminate\Database\Seeder;
   use App\Models\Order;
   use App\Models\Product;

   class OrderSeeder extends Seeder
   {
       public function run()
       {
           // Membuat pesanan pertama
           $order1 = Order::create([
               'customer_name' => 'Customer A',
               'address' => 'Address A',
           ]);

           // Menambahkan produk ke pesanan pertama
           $product1 = Product::find(1);
           $product2 = Product::find(2);

           $order1->products()->attach($product1, ['quantity' => 3]);
           $order1->products()->attach($product2, ['quantity' => 2]);

           // Membuat pesanan kedua
           $order2 = Order::create([
               'customer_name' => 'Customer B',
               'address' => 'Address B',
           ]);

           // Menambahkan produk ke pesanan kedua
           $order2->products()->attach($product2, ['quantity' => 1]);

           // Tambahkan pesanan lainnya sesuai kebutuhan
       }
   }
   ```

3. Jalankan seeder untuk menambahkan data dummy pesanan ke dalam database:

   ```bash
   php artisan db:seed --class=OrderSeeder
   ```

**Langkah 9: Registrasi di routes/api.php**

1. Tambahkan endpoint-nya di routes/api.php
```php
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\OrderController;

// Rute untuk produk (ProductController)
Route::resource('products', ProductController::class);

// Rute untuk pesanan (OrderController)
Route::prefix('orders')->group(function () {
    Route::post('/', [OrderController::class, 'create']); // Membuat pesanan
    Route::get('/', [OrderController::class, 'index']); // Menampilkan semua pesanan
});
```
**Langkah 10: Pengujian API**

1. Untuk menguji API `ProductController` dan `OrderController`, Anda dapat menggunakan aplikasi seperti Postman atau Insomnia, atau Anda dapat menggunakan perintah `curl` atau JavaScript untuk membuat permintaan HTTP ke endpoint yang sesuai.
    ```bash
    php artisan serve --host 0.0.0.0
    ```

2. Contoh penggunaan API untuk menampilkan semua produk:

   ```
   GET http://localhost:8000/api/products
   ```

3. Contoh penggunaan API untuk membuat pesanan:

   ```
   POST http://localhost:8000/api/orders
   ```

   Dalam body permintaan, sertakan data pesanan, termasuk produk yang dipilih dan jumlahnya.

4. Contoh penggunaan API untuk menampilkan semua pesanan:

   ```
   GET http://localhost:8000/api/orders
   ```