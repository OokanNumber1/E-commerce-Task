import 'package:flutter/material.dart';

import 'custom.dart';

GestureDetector gridItem(BuildContext context,
    {String? imageUrl,
    String? productName,
    String? productPrice,
    bool isFavorite = true,
    Function()? onTap}) {
  return GestureDetector(
    onTap: onTap,
    child: Column(
      children: [
        Expanded(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.36,
            //height: MediaQuery.of(context).size.height * 0.3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(imageUrl!),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName!,
                    style: small.copyWith(fontWeight: FontWeight.w500),
                  ),
                  spacedHeight(2),
                  Text(productPrice!,
                      style: small.copyWith(fontSize: 7, color: Colors.black54))
                ],
              ),
              CircleAvatar(
                backgroundColor: Colors.pink[200],
                radius: 10,
                child: GestureDetector(
                  onTap: () => isFavorite = !isFavorite,
                  child: Icon(
                    Icons.favorite,
                    color: isFavorite ? Colors.white : Colors.red,
                    size: 14,
                  ),
                ),
              )
            ],
          ),
        ),
        spacedHeight(10)
      ],
    ),
  );
}
