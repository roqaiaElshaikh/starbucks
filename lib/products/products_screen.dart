import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../build_app_bar.dart';
import '../constants.dart';
import 'components/product_card.dart';

class productsScreen extends StatelessWidget {
  const productsScreen({
    required this.categoryName,
    Key? key}) : super(key: key);
  final String categoryName;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar(this.categoryName,context),
      body: Container(
        color: baseColor.withOpacity(0.1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(15.0),
              child: Text(
                "ICED COFEE",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xff9D5217),
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: GridView.builder(
                    itemCount: 10,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 20.0,
                      crossAxisSpacing: 20.0,
                      childAspectRatio: 0.75,
                    ),
                    itemBuilder: (context, index) => ProductCard()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
