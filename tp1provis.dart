//import library async untuk mendukung operasi asynchronous
import 'dart:async';

//mendefinisikan kelas Product untuk merepresentasikan produk
class Product {
  //deklarasi atribut name dan price sebagai final
  final String name;
  final double price;

  //konstruktor untuk inisialisasi atribut name dan price
  Product(this.name, this.price);
}

//mendefinisikan kelas ShoppingCart untuk merepresentasikan keranjang belanja
class ShoppingCart {
  //deklarasi atribut _items untuk menyimpan produk dalam keranjang
  List<Product> _items = [];

  //metode addToCart untuk menambahkan produk ke dalam keranjang
  void addToCart(Product product) {
    _items.add(product);
    //mencetak pesan bahwa produk telah ditambahkan ke keranjang
    print('${product.name} ditambahkan ke keranjang belanja.');
  }

  //metode removeFromCart untuk menghapus produk dari keranjang
  void removeFromCart(Product product) {
    _items.remove(product);
    //mencetak pesan bahwa produk telah dihapus dari keranjang
    print('${product.name} dihapus dari keranjang belanja.');
  }

  //metode calculateTotalPrice untuk menghitung total harga produk dalam keranjang
  double calculateTotalPrice() {
    double total = 0;
    //melakukan iterasi untuk setiap produk dalam keranjang dan menambahkan harganya ke total
    for (var item in _items) {
      total += item.price;
    }
    return total;
  }

  //metode checkout yang berjalan secara asynchronous
  Future<void> checkout() async {
    //mencetak pesan bahwa proses checkout sedang berlangsung
    print('Melakukan proses checkout...');
    //menunda proses selama 2 detik untuk simulasi
    await Future.delayed(Duration(seconds: 2));
    //mencetak pesan bahwa pembelian selesai beserta total pembayaran
    print('Pembelian selesai! Total pembayaran: ${calculateTotalPrice()}');
  }
}

//fungsi utama aplikasi
void main() {
  //membuat objek cart dari kelas ShoppingCart
  final cart = ShoppingCart();

  //membuat dua objek produk
  final product1 = Product('Laptop', 1200);
  final product2 = Product('Smartphone', 800);

  //menambahkan produk ke keranjang
  cart.addToCart(product1);
  cart.addToCart(product2);

  //menghapus satu produk dari keranjang
  cart.removeFromCart(product1);

  //proses checkout secara asynchronous
  cart.checkout();
  //mencetak pesan bahwa program selesai
  print('Program selesai.');
}
