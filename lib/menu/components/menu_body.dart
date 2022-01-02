import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/menu/components/bar.dart';
import 'package:starbucks/menu/components/menu_category.dart';
import 'package:starbucks/menu/components/menu_category_name.dart';
import 'package:starbucks/menu/components/top_list.dart';

class MenuBody extends StatelessWidget {
  const MenuBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: baseColor.withOpacity(0.1),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopList(),
              MenuCategoryName( name: 'DRINKS',),
              Category(categories: drinks),
              Bar(),
              MenuCategoryName( name: 'FOOD',),
              Category(categories: food,),
              Bar(),
              MenuCategoryName( name: 'CUPS',),
              Category(categories: cups,),
            ],
          ),
        ),
      ),
    );
  }
}
