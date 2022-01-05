import 'package:flutter/material.dart';

Widget settings() {
  return Transform.scale(
    scale: 0.6,
    child: CircleAvatar(
      backgroundColor: Colors.white,
      //radius: 30,
      child: Icon(
        Icons.grid_view,
        color: Colors.pink,
        size: 25,
      ),
    ),
  );
}

CircleAvatar profile() {
  return CircleAvatar(
      minRadius: 15, backgroundImage: AssetImage('assets/textile/hoodie.jpg'));
}
