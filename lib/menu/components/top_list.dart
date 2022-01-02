import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';

class TopList extends StatefulWidget {
  const TopList({Key? key}) : super(key: key);

  @override
  _TopListState createState() => _TopListState();
}

class _TopListState extends State<TopList> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: SizedBox(
        height: 30,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 5,
          itemBuilder: (context, index) => myList(index),
        ),
      ),
    );
  }

  Widget myList(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(top: 5), //top padding 5
        height: 70,
        width: 100,
        decoration: BoxDecoration(
          color: selectedIndex == index ? selectColor : baseColor.withOpacity(0),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            "Features",
            style: TextStyle(
              color: selectedIndex == index ? Colors.white : Colors.black54,

            ),
          ),
        ),
      ),
    );
  }

}
