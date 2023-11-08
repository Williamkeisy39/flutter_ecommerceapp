import 'package:flutter/material.dart';
import 'package:flutter_minimal_ecemmerceapp/models/shop.dart';
import 'package:flutter_minimal_ecemmerceapp/pages/cart_page.dart';
import 'package:flutter_minimal_ecemmerceapp/pages/intro_page.dart';
import 'package:flutter_minimal_ecemmerceapp/pages/shop_page.dart';
import 'package:flutter_minimal_ecemmerceapp/themes/ligth_mode.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => Shop(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        // ignore: prefer_const_constructors
        home: IntroPage(),
        theme: lightMode,
        routes: {
          '/intro_page': (context) => const IntroPage(),
          '/shop_page': (context) => const ShopPage(),
          '/cart_page': (context) => const CartPage(),
        });
  }
}
