import 'package:flutter/material.dart';

const baseColor= Color(0xffE4DFD7);
const defoaltcolor =Color(0xff026242);
const selectColor =Color(0xffC99543);
bool? login=true;

//Map food=["Meal", "Bakes","Dessert"] ;

//Map cups=["Cups","Heat Cups","Bottles"];

class CategoryData{
  late String name;
  late String img;

  CategoryData({
   required this.name,required this.img,
});
}


List<CategoryData> drinks=[
  CategoryData(name: "Hot Cofee", img: "images/starbucks/hot_cofee/hot_cofee1.png"),
  CategoryData(name: "Ice Cofee", img: "images/starbucks/ice_cofee/iced_cofee1.jpg"),
  CategoryData(name: "juice", img: "images/starbucks/juice/juice1.jpg"),
  CategoryData(name: "tea", img: "images/starbucks/tea/tea1.png")
];

List<CategoryData> food=[
  CategoryData(name: "Meals", img: "images/starbucks/meals/meal1.png"),
  CategoryData(name: "Bakes", img: "images/starbucks/food/food1.jpg"),
  CategoryData(name: "Dessert", img: "images/starbucks/food/food2.jpg"),
];

List<CategoryData> cups=[
  CategoryData(name: "Cups", img: "images/starbucks/cups/cup2.jpg"),
  CategoryData(name: "Heat Cups", img: "images/starbucks/heat_cups/heat_cup1.jpg"),
  CategoryData(name: "Bottles", img: "images/starbucks/bottles/bottle1.png"),
];