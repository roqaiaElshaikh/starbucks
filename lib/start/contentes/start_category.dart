import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/prosucts/products_screen.dart';

import '../../constants.dart';

class StartCategory extends StatefulWidget {
  const StartCategory( {
    Key? key}) : super(key: key);

  @override
  _StartCategoryState createState() => _StartCategoryState();
}

class _StartCategoryState extends State<StartCategory> {

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
        setState(() {});
      },
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 170,
              width: 150,
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
                height: 60,
                width: 60,
              ),
            ),
            SizedBox(height: 15,),
            Text(
              "Iced Cofee",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 16,
              ),
            ),
            //SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
