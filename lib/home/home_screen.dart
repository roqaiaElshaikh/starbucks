import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/product_card.dart';
import '../bar.dart';
import 'contentes/featured_products.dart';
import 'contentes/home_title.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("STARBUCKS", context),
      body: Container(
        color: baseColor.withOpacity(0.1),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HomeTitle(name: "FEATURED",),
              FeaturedProducts(),
              Bar(),
              HomeTitle(name: "PREVIOS ORDERS"),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => ProductCard(),
                ),
              ),
              Bar(),
              HomeTitle(name: "PREVIOS ORDERS"),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => ProductCard(),
                ),
              ),

            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
          backgroundColor: defoaltcolor,
          label: Text(
            "Pay in store",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
    ),
    );
  }
}
