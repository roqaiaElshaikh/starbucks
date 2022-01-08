import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';

class GiftDetails extends StatefulWidget {
  const GiftDetails({Key? key}) : super(key: key);

  @override
  _GiftDetailsState createState() => _GiftDetailsState();
}

class _GiftDetailsState extends State<GiftDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            color: baseColor.withOpacity(0.1),
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    IconButton(onPressed: (){
                      Navigator.pop(context);
                    }, icon: Icon(Icons.close_outlined)),
                    SizedBox(width: 75,),
                    Center(
                      child: Text(
                        "CREAT GIFT CARD",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                  ],
                ),
                Image(image: AssetImage("images/gift.jpg"),
                  height: 200,
                  width: double.infinity,
                ),
                SizedBox(height: 5,),
                Text("Gift Amount",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5,),
                RepeatedField("Price"),
                SizedBox(height: 5,),
                Text("To",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5,),
                RepeatedField("Recioient Name"),
                SizedBox(height: 5,),
                RepeatedField("Recioient Email"),
                SizedBox(height: 5,),
                Text("From",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5,),
                RepeatedField("Sender Name"),
                SizedBox(height: 5,),
                RepeatedField("Sender Email"),
                SizedBox(height: 5,),
                Text("Message",
                  style: TextStyle(fontWeight: FontWeight.w500),
                ),
                SizedBox(height: 5,),
                RepeatedField("Message"),
                SizedBox(height: 5,),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    primary: defoaltcolor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "To Checkout" ,
                          style: TextStyle(
                            fontSize: 18,
                          ),
                        ),
                        Icon(
                          Icons.arrow_forward_rounded
                        )
                      ],
                    ),
                  ),
                  //backgroundColor: Color(0x026242),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget RepeatedField(String hint){
    return TextField(
      decoration: InputDecoration(
        hintText: hint,
        fillColor: baseColor.withOpacity(0.3),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0),
          borderSide: BorderSide.none,
        )
      ),
    );
  }
}
