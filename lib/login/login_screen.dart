import 'package:flutter/material.dart';
import 'package:starbucks/my_navigator.dart';
import '../constants.dart';
import '../my_text_field.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: baseColor.withOpacity(0.1),
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Get free food,\ndrinks & more",
                    style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Image(
                    image: AssetImage("images/login.png"),
                    height: 200,
                    width: 200,
                  ),
                  MyTextField("mail"),
                  MyTextField("Password"),
                  Container(
                    width: double.infinity,
                    height: 80,
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => MyNavigator()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: defoaltcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Login" ,
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
                          onTap: () {},
                          child: Text(
                            "Sign up",
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
              ),
            ),
          ),
        ),
      ),
    );
  }
}

