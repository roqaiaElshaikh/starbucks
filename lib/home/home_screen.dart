import 'package:flutter/material.dart';
import '../constants.dart';
import 'components/input_data.dart';
import 'components/user_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                    image: AssetImage("images/home.png"),
                    height: 200,
                    width: 200,
                  ),
                  UserData("mail"),
                  UserData("Password"),
                  InputData(),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

