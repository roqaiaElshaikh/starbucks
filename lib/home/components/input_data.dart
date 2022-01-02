import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/menu/menu_screen.dart';
import 'package:starbucks/start/start_screen.dart';

class InputData extends StatefulWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 80,
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
          child: ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StartScreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              primary: defoaltcolor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
            ),
            child: Text(
              login! ? "Login" : "Sign up",
              style: TextStyle(
                fontSize: 18,
              ),
            ),
            //backgroundColor: Color(0x026242),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage("images/google.png"),
                ),
              ),
              //SizedBox(width: 20,),
              Container(
                height: 40,
                width: 40,
                child: Image(
                  image: AssetImage("images/facebook.png"),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    //login= login==true? false:true;
                    login = !login!;
                  });
                },
                child: Text(
                  login! ? "Sign up" : "Login",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                    decoration: TextDecoration.underline,
                    color: Color(0xff026242),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
