import 'package:flutter/material.dart';

Container singleProduct(BuildContext context, String imageUrl) {
  return Container(
    child: Stack(
      children: [
        Positioned(
          right: 20,
          top: 30,
          child: CircleAvatar(
            radius: 10,
            child: Icon(
              Icons.favorite_border,
              size: 14,
              color: Colors.pink[200],
            ),
            backgroundColor: Colors.white,
          ),
        ),
        Positioned(
          left: 20,
          top: 30,
          child: CircleAvatar(
            radius: 10,
            child: Icon(
              Icons.alarm,
              size: 14,
              color: Colors.pink[200],
            ),
            backgroundColor: Colors.white,
          ),
        )
      ],
    ),
    width: double.infinity,
    height: MediaQuery.of(context).size.height * 0.65,
    decoration: BoxDecoration(
        boxShadow: [],
        borderRadius: BorderRadius.circular(30),
        image: DecorationImage(image: AssetImage(imageUrl), fit: BoxFit.fill)),
  );
}
