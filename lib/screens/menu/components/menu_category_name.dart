import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MenuCategoryTitle extends StatelessWidget {
  const MenuCategoryTitle({
    required this.name,
    Key? key}) : super(key: key);

  final String? name;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
      ),
      child: Stack(
        children: [
          CircleAvatar(
            backgroundColor: Color(0XffC99543).withOpacity(0.3),
            radius: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Padding(
              padding: const EdgeInsets.only(top: 2.0),
              child: Text(
                this.name!,
                style: TextStyle(
                  fontSize:20 ,
                  fontWeight: FontWeight.w600,
                  color: Color(0xff9D5217)
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

}
