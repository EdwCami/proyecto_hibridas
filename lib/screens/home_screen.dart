import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import 'product_detail_screen.dart';

class HomeScreen extends StatelessWidget {
  final List<Product> products = [
    Product(
      id: '1',
      name: 'CASCO CERTIFICADO SPARTAN DRAKEN NEGRO ROJO',
      description: 'Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205.',
      price: 250000,
      imageUrl: 'assets/images/imagen1.jpeg',
    ),
    Product(
      id: '2',
      name: 'CASCO CERTIFICADO SPARTAN DRAKEN NEGRO AZUL',
      description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
      price: 250000,
      imageUrl: 'assets/images/imagen2.jpeg',
    ),
  ];

  HomeScreen({super.key});

  String formatPrice(int price) {
    final formatter = NumberFormat.decimalPattern();
    return formatter.format(price);
  }

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
            child: Image.asset(products[i].imageUrl, fit: BoxFit.cover),
            footer: GridTileBar(
            backgroundColor: Colors.black87,
            title: Column(
            children: [
                  Text(
                    products[i].name,
                    textAlign: TextAlign.center,
                  ),
                  Text(
                    '\$${formatPrice(products[i].price)}',
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}