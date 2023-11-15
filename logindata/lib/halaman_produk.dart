import 'package:flutter/material.dart';

class Produk {
  final String nama;
  final double harga;

  Produk({required this.nama, required this.harga});
}

class halamanProduk extends StatefulWidget {
  const halamanProduk({Key? key}) : super(key: key);

  @override
  State<halamanProduk> createState() => _halamanProdukState();
}

class _halamanProdukState extends State<halamanProduk> {
  final List<Produk> produkList = [
    Produk(nama: 'Bando 08', harga: 2000),
    Produk(nama: 'Bando 2 cagak', harga: 3000),
    Produk(nama: 'Bando 20 DN', harga: 1000),
    Produk(nama: 'Bando 3 daun', harga: 2000),
    Produk(nama: 'Bando 30', harga: 2000),
    Produk(nama: 'Bando 35', harga: 2000),
    Produk(nama: 'Bando 47', harga: 3000),
    Produk(nama: 'Bando 50', harga: 3000),
    Produk(nama: 'Bando 75', harga: 7000),
    // Tambahkan produk lainnya di sini
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Produk'),
      ),
      body: ListView.builder(
        itemCount: produkList.length,
        itemBuilder: (BuildContext context, int index) {
          final Produk produk = produkList[index];
          final int nomorUrut = index + 1;

          return ListTile(
            leading: CircleAvatar(
              child: Text('$nomorUrut'),
            ),
            title: Text(produk.nama),
            subtitle: Text('Harga: ${produk.harga.toString()}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                setState(() {
                  produkList.removeAt(index);
                });
              },
            ),
            onTap: () {
              // Aksi ketika item dipilih (jika diperlukan)
            },
          );
        },
      ),
    );
  }
}
