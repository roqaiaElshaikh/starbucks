import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/featured/featured_screen.dart';
import 'package:starbucks/products/products_screen.dart';
import 'package:starbucks/start/contentes/Featured_card.dart';

import '../../constants.dart';

class StartCategory extends StatefulWidget {
  const StartCategory( {
    Key? key}) : super(key: key);

  @override
  _StartCategoryState createState() => _StartCategoryState();
}

class _StartCategoryState extends State<StartCategory> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      child: SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: 9,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }


  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => FeaturedScreen()));
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
        child: FeaturedCard(),
      ),
    );
  }
}
