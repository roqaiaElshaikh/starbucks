import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/prosucts/components/products_body.dart';

import '../build_app_bar.dart';

class productsScreen extends StatelessWidget {
  const productsScreen({
    required this.categoryName,
    Key? key}) : super(key: key);
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(this.categoryName,context),
      body: ProductsBody(),
    );
  }
}
