import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/screens/gift_details.dart';

import 'home/contentes/home_title.dart';

class GiftScreen extends StatefulWidget {
  const GiftScreen({Key? key}) : super(key: key);

  @override
  _GiftScreenState createState() => _GiftScreenState();
}

class _GiftScreenState extends State<GiftScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("GIFT CARDS", context),
      body: SingleChildScrollView(
        child: Container(
          color: baseColor.withOpacity(0.1),
          child: Column(
            children: [
              HomeTitle(name: "Featured"),
              MyScroll(),
              Divider(),
              HomeTitle(name: "ST.PATRIC'S DAY"),
              MyScroll(),
              Divider(),
              HomeTitle(name: "Birthday"),
              MyScroll(),
            ],
          ),
        ),
      ),
    );
  }

  Widget MyScroll (){
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5,horizontal: 15),
      child: SizedBox(
        height: 230,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,

          itemCount: 9,
          itemBuilder: (context, index) => GestureDetector(
            onTap: (){
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context)=>GiftDetails())
              );
            },
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10,),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
              ),
              child: Image(
                image: AssetImage("images/gift.jpg"),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
