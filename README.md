# TP1PROVIS
Talitha Fayarina Adhigunawan
2201271
Ilmu Komputer C2

Implementasi OOP dalam kode tersebut terjadi melalui pembuatan kelas Product dan ShoppingCart. Berikut adalah penjelasan implementasi OOP:

Kelas Product:
- Kelas ini merepresentasikan sebuah produk dengan atribut nama dan harga.
- Pada konstruktor, terdapat inisialisasi atribut name dan price.
- Kelas ini menggunakan konsep encapsulation dengan mendeklarasikan atribut name dan price sebagai final, sehingga nilai-nilai atribut tersebut tidak dapat diubah setelah objek Product dibuat.
  
Kelas ShoppingCart:
- Kelas ini merepresentasikan keranjang belanja dengan daftar produk yang ditambahkan ke dalamnya.
- Metode addToCart digunakan untuk menambahkan produk ke dalam keranjang belanja.
- Metode removeFromCart digunakan untuk menghapus produk dari keranjang belanja.
- Metode calculateTotalPrice digunakan untuk menghitung total harga dari semua produk yang ada di keranjang belanja.
- Metode checkout merupakan metode asynchronous yang mensimulasikan proses pembayaran dengan menunggu selama 2 detik sebelum menyelesaikan proses checkout.

Penggunaan di dalam main:
- Objek Product (yaitu product1 dan product2) dibuat untuk merepresentasikan produk tertentu.
- Objek ShoppingCart (yaitu cart) dibuat untuk merepresentasikan keranjang belanja.
- Produk ditambahkan ke dalam keranjang belanja menggunakan metode addToCart.
- Produk dihapus dari keranjang belanja menggunakan metode removeFromCart.
- Proses checkout dilakukan secara asynchronous menggunakan metode checkout.
- 
Implementasi asynchronous terjadi dalam metode checkout, di mana proses pembayaran ditunda selama 2 detik menggunakan Future.delayed untuk mensimulasikan proses yang berjalan secara asynchronous. Selama penundaan, program dapat menjalankan tugas lain tanpa harus menunggu proses tersebut selesai. Setelah penundaan selesai, proses checkout akan dilanjutkan dan output akan ditampilkan.
