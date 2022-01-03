import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FeaturedCard extends StatefulWidget {
  const FeaturedCard({Key? key}) : super(key: key);

  @override
  _FeaturedCardState createState() => _FeaturedCardState();
}

class _FeaturedCardState extends State<FeaturedCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
