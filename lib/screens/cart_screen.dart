import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/cart.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Tu carrito'),
      ),
      body: cart.itemCount == 0
          ? Center(
              child: Text(
                'Carrito vacío',
                style: TextStyle(fontSize: 20),
              ),
            )
          : Column(
              children: [
                Expanded(
                  child: ListView.builder(
                    itemCount: cart.itemCount,
                    itemBuilder: (ctx, i) {
                      final cartItem = cart.items.values.toList()[i];
                      return ListTile(
                        leading: Image.asset(cartItem.imageUrl, fit: BoxFit.cover), // Mostrar imagen del producto
                        title: Text(cartItem.name),
                        subtitle: Text('Total: \$${cartItem.price * cartItem.quantity}'),
                        trailing: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: Icon(Icons.remove),
                              onPressed: () {
                                cart.removeSingleItem(cartItem.id);
                              },
                            ),
                            Text('${cartItem.quantity} x'),
                            IconButton(
                              icon: Icon(Icons.add),
                              onPressed: () {
                                cart.incrementItemQuantity(cartItem.id);
                              },
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // Implementar la lógica de compra
                  },
                  child: Text('Ordenar ahora'),
                ),
              ],
            ),
    );
  }
}