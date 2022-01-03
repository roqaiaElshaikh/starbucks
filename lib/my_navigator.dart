import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/featured/featured_screen.dart';
import 'package:starbucks/home/home_screen.dart';
import 'package:starbucks/menu/menu_screen.dart';
import 'package:starbucks/products/products_screen.dart';
import 'package:starbucks/start/start_screen.dart';

class MyNavigator extends StatefulWidget {
  const MyNavigator({Key? key}) : super(key: key);

  @override
  _MyNavigatorState createState() => _MyNavigatorState();
}

class _MyNavigatorState extends State<MyNavigator> {

  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    MenuScreen(),
    Scaffold(),
    Scaffold()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            //backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.coffee),
            label: 'Order',
            //backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Gift',
            //backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.store_mall_directory_outlined),
            label: 'Stores',
            //backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        unselectedItemColor: Colors.black54,
        selectedItemColor: defoaltcolor,
        onTap: _onItemTapped,
      ),
    );
  }
}
