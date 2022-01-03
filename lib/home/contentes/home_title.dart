import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeTitle extends StatefulWidget {
  const HomeTitle( {
    required this.name,
    Key? key}) : super(key: key);
  final String? name;

  @override
  _HomeTitleState createState() => _HomeTitleState();
}

class _HomeTitleState extends State<HomeTitle> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 15,
        left: 15,
        right: 15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              CircleAvatar(
                backgroundColor: Color(0XffC99543).withOpacity(0.3),
                radius: 12.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10,top: 3),
                child: Text(
                  widget.name!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize:16 ,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff9D5217)
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Text(
                "See all ",
                style: TextStyle(
                    fontSize:16 ,
                    fontWeight: FontWeight.w300,
                    color: Color(0xff9D5217)
                ),
              ),
              Icon(
                Icons.arrow_forward_outlined,
                color: Color(0xff9D5217),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
