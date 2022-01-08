import 'package:flutter/material.dart';
import '../../build_app_bar.dart';
import '../../constants.dart';
import 'components/menu_category.dart';
import 'components/menu_category_name.dart';
import 'components/top_list.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("MENU",context),
      body: Container(
        color: baseColor.withOpacity(0.1),
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TopList(),
              MenuCategoryTitle( name: 'DRINKS',),
              Category(categories: drinks),
              Divider(),
              MenuCategoryTitle( name: 'FOOD',),
              Category(categories: food,),
              Divider(),
              MenuCategoryTitle( name: 'CUPS',),
              Category(categories: cups,),
            ],
          ),
        ),
      ),
    );
  }
}

