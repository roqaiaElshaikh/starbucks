import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/screens/featured_screen.dart';
import 'package:starbucks/screens/products_screen.dart';

import '../../../Featured_card.dart';

class FeaturedProducts extends StatefulWidget {
  const FeaturedProducts( {
    Key? key}) : super(key: key);

  @override
  _FeaturedProductsState createState() => _FeaturedProductsState();
}

class _FeaturedProductsState extends State<FeaturedProducts> {

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
