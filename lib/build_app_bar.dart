import 'package:flutter/material.dart';


AppBar BuildAppBar (String myTitle, BuildContext context) {
  return AppBar(
    shadowColor: Colors.white,
    backgroundColor: Colors.white,
    iconTheme: IconThemeData(color: Colors.black),
    title: Text(
      myTitle,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontWeight: FontWeight.w700,
        color: Colors.black,
        //fontSize: 25.0,
      ),
    ),
    actions: [
      IconButton(
        icon: Icon(Icons.search),
        color: Colors.black,
        iconSize: 35.0,
        onPressed: () {},
      ),
      SizedBox(width: 10,),
      IconButton(
        icon: Icon(Icons.account_circle_outlined),
        color: Colors.black,
        iconSize: 35.0,
        onPressed: () {},
      ),
      SizedBox(width: 10,),
    ],

  );
}