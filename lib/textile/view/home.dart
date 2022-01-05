import 'package:flutter/material.dart';
import 'package:testing/textile/customs/appbar.dart';
import 'package:testing/textile/customs/category.dart';
import 'package:testing/textile/customs/custom.dart';
import 'package:testing/textile/customs/grid_item.dart';
import 'package:testing/textile/customs/overflow_card.dart';
import 'package:testing/textile/model/model.dart';
import 'package:testing/textile/view/cart.dart';
import 'package:testing/textile/view/single_product.dart';

class HomeT extends StatelessWidget {
  const HomeT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeTextile(),
    );
  }
}

class HomeTextile extends StatefulWidget {
  const HomeTextile({Key? key}) : super(key: key);

  @override
  State<HomeTextile> createState() => _HomeTextileState();
}

class _HomeTextileState extends State<HomeTextile> {
  int pageIndex = 0;
  final pages = [HomeTxtl(), Scaffold(), CartPage(), Scaffold()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.pink[100],
        unselectedItemColor: Colors.black26,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        currentIndex: pageIndex,
        onTap: (index) {
          setState(() {
            pageIndex = index;
          });
          //print(index);
        },
        iconSize: 15,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'HOME'),
          BottomNavigationBarItem(icon: Icon(Icons.list_alt), label: 'LIST'),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart), label: 'CART'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'HOME'),
        ],
      ),
    );
  }
}

class HomeTxtl extends StatefulWidget {
  const HomeTxtl({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeTxtl> createState() => _HomeTxtlState();
}

class _HomeTxtlState extends State<HomeTxtl> {
  categories selectedCategory = categories.All;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.grey[200],
        elevation: 0,
        leading: GestureDetector(
          child: settings(),
        ),
        title: Column(
          children: [
            Text(
              name,
              style: small.copyWith(color: Colors.grey),
            ),
            Text(
              location,
              style: medium.copyWith(color: Colors.black),
            )
          ],
        ),
        centerTitle: true,
        actions: [profile()],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  searchBar(context),
                  searchDone(context),
                ],
              ),
              spacedHeight(30),
              overflowCard(context),
              spacedHeight(20),
              Container(
                height: 30,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  separatorBuilder: (context, index) => spacedWidth(10),
                  itemCount: categories.values.length,
                  itemBuilder: (context, index) => GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedCategory = listOfCategories[index].enumCat;
                      });
                    },
                    child: Chip(
                        label: Text(listOfCategories[index].label),
                        backgroundColor:
                            listOfCategories[index].enumCat == selectedCategory
                                ? Colors.pink.shade200
                                : null),
                  ),
                ),
              ),
              spacedHeight(20),
              Container(
                height: MediaQuery.of(context).size.height * 0.6,
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 0.65,
                  ),
                  itemBuilder: (context, index) => gridItem(
                    context,
                    imageUrl: products[index]['imageUrl'],
                    productName: products[index]['name'],
                    productPrice: products[index]['price'],
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleProduct(products[index]),
                      ),
                    ),
                  ),
                  itemCount: products.length,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
