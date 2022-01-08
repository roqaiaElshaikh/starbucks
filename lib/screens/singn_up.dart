import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/my_text_field.dart';

import '../constants.dart';
import '../my_navigator.dart';
import 'login_screen.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                  Image(image: AssetImage("images/splash.png"),
                    height: 130,
                    width: 130,
                  ),
                  MyTextField("mail",Icon(Icons.mail_outline)),
                  MyTextField("user name", Icon(Icons.account_circle)),
                  MyTextField("phone", Icon(Icons.phone)),
                  MyTextField("password", Icon(Icons.password)),
                  MyTextField("password", Icon(Icons.password)),
                  Container(
                    width: double.infinity,
                    height: 50,
                    padding: EdgeInsets.symmetric(horizontal: 20,),
                    child: ElevatedButton(
                      onPressed: () {
                        // Navigator.pushReplacement(
                        //     context,
                        //     MaterialPageRoute(builder: (context) => MyNavigator()));
                      },
                      style: ElevatedButton.styleFrom(
                        primary: defoaltcolor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                      ),
                      child: Text(
                        "Sign Up" ,
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
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginScreen()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical:35),
                      child: Text(
                        "Alrady have an account!",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          decoration: TextDecoration.underline,
                          color: Color(0xff026242),
                        ),
                      ),
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
