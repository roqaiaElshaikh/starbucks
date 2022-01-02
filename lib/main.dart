import 'package:flutter/material.dart';
import 'package:starbucks/featured/featured_screen.dart';
import 'package:starbucks/home/home_screen.dart';
import 'package:starbucks/my_navigator.dart';
import 'package:starbucks/start/start_screen.dart';

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
      home: MyNavigator(),
    );
  }
}
