import 'package:flutter/material.dart';
import 'package:starbucks/screens/cart_screen.dart';
import 'package:starbucks/screens/login_screen.dart';
import 'package:starbucks/product_card.dart';
import 'package:starbucks/screens/details_screen.dart';
import 'package:starbucks/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        //primarySwatch: defo
      ),
      home: SplashScreen(),
    );
  }
}
