import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/products/components/product_card.dart';
import '../bar.dart';
import 'contentes/start_category.dart';
import 'contentes/start_category_name.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

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
              StartCategoryName(name: "FEATURED",),
              StartCategory(),
              Bar(),
              StartCategoryName(name: "PREVIOS ORDERS"),
              SizedBox(
                height: 220,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context, index) => ProductCard(),
                ),
              ),
              Bar(),
              StartCategoryName(name: "PREVIOS ORDERS"),
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
