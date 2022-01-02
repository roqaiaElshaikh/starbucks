import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/menu/components/bar.dart';
import 'package:starbucks/prosucts/components/product_card.dart';
import 'package:starbucks/start/contentes/start_category.dart';
import 'package:starbucks/start/contentes/start_category_name.dart';

import '../../constants.dart';

class StartBody extends StatelessWidget {
  const StartBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Container(
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
      );
  }
}
