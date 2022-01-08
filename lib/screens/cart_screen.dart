import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/build_app_bar.dart';
import 'package:starbucks/constants.dart';

import 'menu/components/menu_category_name.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  _CartScreenState createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: BuildAppBar("MY CART (5)", context),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return Item();
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MenuCategoryTitle(name: "IN TOTal"),
                ],
              ),
              Container(
                margin: EdgeInsets.all(30),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: baseColor.withOpacity(0.2),
                ),
                child: Column(
                  children: [
                    Total("order", "\$14.75"),
                    Divider(),
                    Total("delevery", "\$1.0"),
                    Divider(),
                    Total("Sammary", "\$15.75S")
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10.0,horizontal: 20),
                child: ElevatedButton(
                  onPressed: (){},
                  style: ElevatedButton.styleFrom(
                    primary: defoaltcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    )
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                            "To Checkout",
                          style: TextStyle(
                            color: Colors.white,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
  
  Widget Total(String title,String price){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w500
          ),
        ),
        Text(
          price,
          style: TextStyle(
            color: Color(0xff9D5217),
            fontWeight: FontWeight.w400,
          ),
        )
      ],
    );
  }
  Widget Item(){
    return Column(
      children: [
        Container(
          height: 120,
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Card(
            elevation: 0.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(
                        "images/starbucks/ice_cofee/iced_cofee1.jpg"),
                    radius: 45,
                  ),
                  SizedBox(width: 8,),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              "Mocha Cookie Crumble",
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              "Grand 16 fl oz",
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black38,
                              ),
                            ),
                            Text(
                              "\$4.25",
                              style: TextStyle(
                                color: Color(0xff9D5217),
                                fontSize: 16,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              onPressed: (){},
                              icon: Icon(Icons.close_outlined),
                            ),
                            Container(
                              padding: EdgeInsets.all(3),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Color(0xff9D5217).withOpacity(0.2),
                              ),
                              child: Text(
                                "X2",
                                style: TextStyle(
                                  color: Color(0xff9D5217),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        Divider()
      ],
    );
  }
}
