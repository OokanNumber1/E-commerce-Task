import 'package:flutter/material.dart';

import 'custom.dart';

Container overflowCard(BuildContext context) {
  return Container(
    height: MediaQuery.of(context).size.height * 0.18,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(22),
      color: Colors.pink[200],
    ),
    child: Stack(clipBehavior: Clip.none, children: [
      Positioned(
        right: 30,
        bottom: 25,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Big Sale',
              style: medium.copyWith(color: Colors.white),
            ),
            spacedHeight(8),
            Text(
              'Get the trendy',
              style: small.copyWith(color: Colors.white54),
            ),
            spacedHeight(4),
            Text(
              'fashion at a discount',
              style: small.copyWith(color: Colors.white54),
            ),
            spacedHeight(4),
            Text(
              'of up to 50%',
              style: small.copyWith(color: Colors.white54),
            )
          ],
        ),
      ),
      Positioned(
        top: -18,
        left: 10,
        child: Image.asset(
          'assets/textile/overflow.jpg',
          //alignment: Alignment.bottomCenter,
          //scale: 2,
          width: MediaQuery.of(context).size.width * 0.4,
          height: MediaQuery.of(context).size.height * 0.21,
        ),
      ),
    ]),
  );
}
