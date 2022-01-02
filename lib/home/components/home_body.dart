import 'package:flutter/material.dart';
import 'package:starbucks/home/components/change_state.dart';
import 'package:starbucks/home/components/input_data.dart';
import 'package:starbucks/home/components/user_data.dart';

import '../../constants.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: baseColor,
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
                        ChangeState(),
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
