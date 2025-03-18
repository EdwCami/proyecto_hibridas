import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './screens/cart_screen.dart';
import './screens/login_screen.dart';
import './models/cart.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Cart()),
      ],
      child: MaterialApp(
        title: "Tienda Cam'es",
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: LoginScreen(), // Cambia aquí para iniciar desde la pantalla de inicio de sesión
        routes: {
          '/home': (ctx) => HomeScreen(),
          '/cart': (ctx) => CartScreen(),
        },
      ),
    );
  }
}