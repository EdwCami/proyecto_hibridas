import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'Producto 1',
      description: 'Descripción del producto 1',
      price: 29.99,
      imageUrl: 'https://via.placeholder.com/150',
    ),
    Product(
      id: '2',
      name: 'Producto 2',
      description: 'Descripción del producto 2',
      price: 49.99,
      imageUrl: 'https://via.placeholder.com/150',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ecommerce App'),
      ),
      body: GridView.builder(
        itemCount: products.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemBuilder: (ctx, i) => GestureDetector(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => ProductDetailScreen(product: products[i]),
              ),
            );
          },
          child: GridTile(
            child: Image.network(products[i].imageUrl, fit: BoxFit.cover),
            footer: GridTileBar(
              backgroundColor: Colors.black87,
              title: Text(
                products[i].name,
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
      ),
    );
  }
}