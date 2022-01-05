import 'package:flutter/material.dart';
import 'package:testing/textile/customs/custom.dart';
import 'package:testing/textile/customs/single_product.dart';
import 'package:testing/textile/model/model.dart';

class SingleProduct extends StatelessWidget {
  const SingleProduct(this.details);

  final details;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        body: Column(
      children: [
        singleProduct(context, details['imageUrl']),
        //spacedHeight(15),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    details['name'],
                    style: medium.copyWith(fontWeight: FontWeight.bold),
                  ),
                  Text(
                    details['price'],
                    style: medium.copyWith(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              spacedHeight(2),
              Text(
                details['designer'],
                style: small.copyWith(color: Colors.grey),
              ),
              spacedHeight(15),
              Text(
                details['info'],
                style: small.copyWith(color: Colors.grey),
              ),
              spacedHeight(height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Buy Now',
                      style: small.copyWith(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size(width * 0.7, height * 0.08),
                        primary: Colors.pink[200],
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        )),
                  ),
                  GestureDetector(
                    onTap: () {
                      setState() {
                        listInCart.add(details);
                      }
                    },
                    child: CircleAvatar(
                      backgroundColor: Colors.grey[200],
                      radius: height * 0.04,
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.pink[200],
                        size: 15,
                      ),
                    ),
                  )
                ],
              ),
              //ChoiceChip(label: label, selected: selected)
            ],
          ),
        )
      ],
    ));
  }
}
