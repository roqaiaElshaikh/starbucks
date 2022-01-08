import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:starbucks/constants.dart';
import 'package:starbucks/screens/products_screen.dart';

class Category extends StatefulWidget {
  const Category( {
    required this.categories,
    Key? key}) : super(key: key);

  final List<CategoryData>? categories;
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {

  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: SizedBox(
        height: 200,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.categories!.length,
          itemBuilder: (context, index) => buildCategory(index),
        ),
      ),
    );
  }


  Widget buildCategory(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index;
          {Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => productsScreen(categoryName: widget.categories![index].name,),
              ));
        }});
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundColor: baseColor.withOpacity(0.4),
              radius: 70,
              child: CircleAvatar(
                backgroundImage: AssetImage(widget.categories![index].img),
                radius: 60.0,
              ),
            ),
            Container(
              height: 5,
              width: 35,
              decoration: BoxDecoration(
                  color: selectedIndex == index ? selectColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(20)
              ),

            ),
            SizedBox(height: 5,),
            Text(
              widget.categories![index].name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black54,
              ),
            ),
            //SizedBox(height: 5,),
          ],
        ),
      ),
    );
  }
}
