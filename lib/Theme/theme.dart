import 'package:flutter/material.dart';
import 'package:food_delivery/Screens/login.dart';
import 'package:responsive_framework/responsive_framework.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) => ResponsiveWrapper.builder(
        child,
        maxWidth: 428,
        minWidth: 375,
        defaultScale: true,
        breakpoints: [
          const ResponsiveBreakpoint.autoScale(375, name: MOBILE),
        ],
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login' : (context) => const LoginApp(),      
      },
    );
  }
}
