import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/home/components/change_state.dart';

class InputData extends StatefulWidget {
  const InputData({Key? key}) : super(key: key);

  @override
  _InputDataState createState() => _InputDataState();
}

class _InputDataState extends State<InputData> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 80,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
      child: ElevatedButton(
        onPressed: (){},
        style: ElevatedButton.styleFrom(
          primary: defoaltcolor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
          ),
        ),
        child: Text(
          login==true?"Login":"Sign up",
          style: TextStyle(
            fontSize: 18,
          ),
        ),
          //backgroundColor: Color(0x026242),
        ),

      );
  }
}
