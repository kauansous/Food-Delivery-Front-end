import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/login.dart';
import 'package:food_delivery/Screens/menu_favorite.dart';
import 'package:food_delivery/Screens/menu_home.dart';
import 'package:food_delivery/Screens/signup.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login' : (context) => const LoginApp(),
        '/signup' : (context) => const SignupApp(),
        '/menu_home' : (context) => const MenuHomeApp(),
        '/menu_favorite' : (context) => const MenuFavoriteApp(),
      },
    );
  }
}
