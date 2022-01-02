import 'package:flutter/cupertino.dart';

import 'constants.dart';

class Bar extends StatelessWidget {
  const Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8,horizontal: 20), //top padding 5
      height: 1,
      width: double.infinity,
      decoration: BoxDecoration(
          color: baseColor.withOpacity(0.4),
          //borderRadius: BorderRadius.circular(20)
      ),

    );
  }
}
