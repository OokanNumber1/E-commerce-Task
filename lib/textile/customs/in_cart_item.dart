import 'package:flutter/material.dart';

import 'custom.dart';

class CartedItem extends StatefulWidget {
  CartedItem(this.details);
  Map<String, dynamic> details;
  @override
  _CartedItemState createState() => _CartedItemState();
}

class _CartedItemState extends State<CartedItem> {
  //int quantity = widget.details['quantity'];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 6,
      ),
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.12,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
      ),
      child: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.104,
            width: 50,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              image: DecorationImage(
                  image: AssetImage(widget.details['imageUrl']),
                  fit: BoxFit.fill),
            ),
          ),
          //child: Image.asset()),
          spacedWidth(15),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              spacedHeight(8),
              Text(
                widget.details['name'],
                style:
                    medium.copyWith(fontWeight: FontWeight.bold, fontSize: 12),
              ),
              spacedHeight(2),
              Text(
                'Women Style',
                style: small.copyWith(fontSize: 9, color: Colors.grey),
              ),
              spacedHeight(10),
              Text(
                (widget.details['price']),
                style: large.copyWith(fontSize: 20),
              )
            ],
          ),
          spacedWidth(95),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              spacedHeight(5),
              Icon(
                Icons.verified_user_rounded,
                color: Colors.pink[200],
              ),
              spacedHeight(25),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.details['quantity']++;
                      });
                    },
                    child: Icon(
                      Icons.add,
                      size: 12,
                    ),
                  ),
                  Text(widget.details['quantity'].toString()),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.details['quantity']--;
                      });
                    },
                    child: Icon(
                      Icons.remove,
                      size: 12,
                    ),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
