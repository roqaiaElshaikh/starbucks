import 'package:flutter/cupertino.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/prosucts/components/product_card.dart';

class ProductsBody extends StatefulWidget {
  const ProductsBody({Key? key}) : super(key: key);

  @override
  _ProductsBodyState createState() => _ProductsBodyState();
}


class _ProductsBodyState extends State<ProductsBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}

