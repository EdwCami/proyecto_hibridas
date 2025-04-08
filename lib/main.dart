import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import './screens/home_screen.dart';
import './screens/cart_screen.dart';
import './screens/login_screen.dart';
import './screens/user_screen.dart';
import './models/cart.dart';
import './services/user_service.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => Cart()),
        Provider(create: (_) => UserService()), // Añadir el servicio de usuarios
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
          '/users': (ctx) => UserScreen(), // Añadir la ruta de usuarios
        },
      ),
    );
  }
}