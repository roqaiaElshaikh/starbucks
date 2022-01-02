import 'package:flutter/material.dart';

import '../../constants.dart';

class ChangeState extends StatefulWidget {
  ChangeState({
    Key? key}) : super(key: key);


  @override
  _ChangeStateState createState() => _ChangeStateState();
}

class _ChangeStateState extends State<ChangeState> {

  @override
  // void initState() {
  //   login=true;
  // }
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        setState(() {
          login= login==true? false:true;
        });
      },
      child: Text(
        login==true?"Sign up":"Login",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          decoration: TextDecoration.underline,
          color: Color(0xff026242),
        ),
      ),
    );
  }
}
