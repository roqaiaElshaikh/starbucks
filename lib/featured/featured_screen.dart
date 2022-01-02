import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/products/components/product_card.dart';
import 'package:starbucks/start/contentes/Featured_card.dart';

import '../bar.dart';

class FeaturedScreen extends StatelessWidget {
  const FeaturedScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("FEATURED", context),
      body: Container(
        color: baseColor.withOpacity(0.1),
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10),
            Text(
              "RAYES OF SUNSHINE",
              style: TextStyle(
                color: Color(0xff9D5217),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Treat your self to a day_brightening\ndrink or stisfying bite.",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            Container(
              height: 240,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.lightBlue,
                        Colors.pinkAccent,
                      ],
                      tileMode: TileMode.repeated
                  )
              ),
              child: Image(
                image: AssetImage("images/feature.png"),
                height: 100,
                width: 100,
              ),
            ),
            Text(
              "New Impossible Breakfast\nSandwich*",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 10),
            Text(
              "Delisious and protine-packed",
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 12,
              ),
            ),
            SizedBox(height: 10),
            Bar(),
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
                    itemBuilder: (context, index) => FeaturedCard()),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
