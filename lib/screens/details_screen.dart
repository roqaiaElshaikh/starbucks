import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/screens/cart_screen.dart';

class DetailsScreen extends StatefulWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  late bool favorite;
  @override
  void initState() {
    favorite=false;
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: [
          Container(
            width: double.infinity,
            height: 400,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 25),
            color: baseColor.withOpacity(0.2),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.close_outlined),
                      color: selectColor,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 14),
                      child: Text(
                        "HOT TEAS",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 18,
                          color: selectColor,
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          favorite= !favorite;
                        });
                      },
                      icon: Icon(favorite? Icons.star:Icons.star_border_outlined),
                      color: selectColor,
                    ),
                  ],
                ),
                Image(
                  image: AssetImage("images/feature.png"),
                  height: 250,
                  width: 150,
                  //images/starbucks/hot_cofee/hot_cofee1.png
                  //images/feature.png
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: size.height * 0.40),
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            height: size.height,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                topRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(height: 15,),
                Container(
                  height: 6,
                  width: 55,
                  decoration: BoxDecoration(
                      color: Color(0xff9D5217),
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "Chai Latte",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(
                    "Black tea infused with cinnamon, clove and other warming spices is combined with steamed milk and topped eith foam",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 15,
                      color: Colors.black38,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(height: 15,),
                Text(
                  "\$4.95",
                  style: TextStyle(
                    color: Color(0xff9D5217),
                    fontSize: 30,
                  ),
                ),
                Divider(),
                ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: baseColor.withOpacity(0.7),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    )
                  ),
                  child: Text(
                    "Customizations",
                    style: TextStyle(
                      color: Color(0xff9D5217),
                    ),
                  ),
                ),
                SizedBox(height: 5,),
                RepeatedRow("Size", "Grand 16 floz  "),
                RepeatedRow("Add-ins", "Regular water  "),
                RepeatedRow("Espresso & shot options", " "),
                RepeatedRow("Flavors", ""),
                RepeatedRow("Tea", ""),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                  ),
                  width: double.infinity,
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                  child: Row(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.home),
                          Text("street......"),

                        ],
                      ),
                      Divider(),
                      IconButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => CartScreen()));
                        },
                        icon: Icon(Icons.shopping_cart),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ]
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: (){},
        backgroundColor: defoaltcolor,
        label: Text(
          "Add item",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }

  Widget RepeatedRow (String title,String action){
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
            ),
            Row(
              children: [
                Text(
                  action,
                  style: TextStyle(
                    color: selectColor,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: selectColor,
                  size: 16,
                )
              ],
            ),
          ],
        ),
        Divider(),
      ],
    );
  }
}

//
