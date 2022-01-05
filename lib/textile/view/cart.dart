import 'package:flutter/material.dart';
import 'package:testing/textile/customs/appbar.dart';
import 'package:testing/textile/customs/custom.dart';
import 'package:testing/textile/customs/in_cart_item.dart';
import 'package:testing/textile/model/model.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        toolbarHeight: 45,
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: GestureDetector(
          child: settings(),
        ),
        title: Text(
          'Cart',
          style: medium.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        actions: [profile()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: Column(
            children: [
              //TODO => to implement with listviewBuilder, there would be a list of carted goods
              // CartedItem(products[0]), spacedHeight(18),
              // CartedItem(products[1]), spacedHeight(18),
              // CartedItem(products[2]), spacedHeight(18),
              // CartedItem(products[3]), spacedHeight(25),
              ListView.builder(
                shrinkWrap: true,
                itemCount: listInCart.length,
                itemBuilder: (context, index) => CartedItem(listInCart[index]),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total',
                        style:
                            medium.copyWith(fontSize: 20, color: Colors.grey),
                      ),
                      spacedHeight(7),
                      Text(
                        '\$0.00',
                        style: large,
                      )
                    ],
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Pay Now'),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18)),
                      primary: Colors.pink[200],
                      minimumSize: Size(width * 0.45, height * 0.07),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
