import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:intl/intl.dart';
import '../models/product.dart';
import '../models/cart.dart';
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
  Product(
    id: '3',
    name: 'Casco SHAFT SH-526 SP EVO Rickvival',
    description: 'Con el casco integral Shaft 526SP EVO Evo Rickvival, una edición especial de la espectacular serie Rick y Morty con la cual tendrás la comodidad y seguridad que necesitas en tu día a día. Este casco trae un tapizado fabricado con materiales que garantizan tu comodidad, un spoiler que te brinda mayor aerodinamia y su visor es de policarbonato que complementa el estilo de tu casco. *Incluye visor transparente adicional y sistema de visor',
    price: 520000,
    imageUrl: 'assets/images/imagen3.jpeg',
  ),
  Product(
    id: '4',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN NEGRO VERDE',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen4.jpeg',
  ),
  Product(
    id: '5',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN BLANCO NEGRO',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen5.jpeg',
  ),
  Product(
    id: '6',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN AMARILLO NEGRO',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen6.jpeg',
  ),
  Product(
    id: '7',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN GRIS NEGRO',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen7.jpeg',
  ),
  Product(
    id: '8',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN NARANJA NEGRO',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen8.jpeg',
  ),
  Product(
    id: '9',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN ROSADO NEGRO',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen9.jpeg',
  ),
  Product(
    id: '10',
    name: 'CASCO CERTIFICADO SPARTAN DRAKEN BLANCO AZUL',
    description: 'Marca: Spartan, Tipo: Integral, Material: APS (Advance polycarbonate shell), Visor: Policarbonato 3mm, Tapizado: Microfibra de poliéster antibacterial, Sistema de retención: Cierre micrométrico, Certificación: Ece 2205, Incluye tula en poliéster, Incluye película antiempañante, Peso: 1450g +/-',
    price: 250000,
    imageUrl: 'assets/images/imagen10.jpeg',
  ),
];


  HomeScreen({super.key});

  String formatPrice(int price) {
    final formatter = NumberFormat.decimalPattern();
    return formatter.format(price);
  }

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Tienda Cam\'es'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.of(context).pushNamed('/cart');
            },
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                cart.itemCount.toString(),
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 10), // Ajusta el margen aquí
            child: Image.asset(
              'assets/images/Logo.jpg', // Cambia esta ruta a la imagen deseada
              fit: BoxFit.cover,
              width: double.infinity,
              height: 325,
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 2 / 2,
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
          ),
        ],
      ),
    );
  }
}