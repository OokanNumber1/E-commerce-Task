import 'package:flutter/material.dart';
import 'package:testing/textile/view/cart.dart';
import 'package:testing/textile/view/home.dart';

String name = 'Haila Zaskio';
String location = 'Jakarta,INIA';
TextStyle large = TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
TextStyle medium = TextStyle(fontWeight: FontWeight.w500, fontSize: 15);
TextStyle small = TextStyle(fontSize: 10);
Color bkGrndColor = Colors.white;

SizedBox spacedHeight(double height) {
  return SizedBox(height: height);
}

SizedBox spacedWidth(double width) {
  return SizedBox(width: width);
}

Container searchBar(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.7,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: BoxDecoration(
      color: Colors.white,
      borderRadius: BorderRadius.circular(20),
    ),
    child: TextField(
      decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.search,
            size: 18,
            color: Colors.grey[300],
          ),
          border: UnderlineInputBorder(borderSide: BorderSide.none)),
    ),
  );
}

Container searchDone(BuildContext context) {
  return Container(
    width: MediaQuery.of(context).size.width * 0.1,
    height: MediaQuery.of(context).size.height * 0.05,
    decoration: BoxDecoration(
      color: Colors.pink[100],
      borderRadius: BorderRadius.circular(12),
    ),
    child: Icon(Icons.linear_scale),
  );
}
