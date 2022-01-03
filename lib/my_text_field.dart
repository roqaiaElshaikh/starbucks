import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';

class MyTextField extends StatefulWidget {
  MyTextField(
      @ required this.hint,
      {Key? key}) : super(key: key);

  late String hint;

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  late String userData;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
        child: TextField(
          //textInputAction: widget.hint=="User name"? TextInputAction.next: TextInputAction.send,
          decoration: InputDecoration(
            icon: widget.hint=="mail"? Icon(Icons.mail,color: defoaltcolor,): Icon(Icons.password_rounded,color: defoaltcolor,),
            hintText: widget.hint,
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
              borderSide: BorderSide(
                color: defoaltcolor,
              ),
            ),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
          ),
        ),
      );
  }
}