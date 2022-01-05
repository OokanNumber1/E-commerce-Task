import 'package:flutter/material.dart';
import 'customs.dart';

class HomeRecipe extends StatelessWidget {
  const HomeRecipe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ExplorePage(),
    );
  }
}

class ExplorePage extends StatefulWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  List pages = [
    Explore(),
    Container(),
    Container(),
    Container(),
  ];
  int selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedTab],
      // Padding(
      //   padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 10),
      //   child: pages[selectedTab],
      // ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) => setState(() {
          selectedTab = value;
        }),
        currentIndex: selectedTab,
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.stop_circle,
              ),
              label: 'Explore'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stop_circle), label: 'Visited'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stop_circle), label: 'Favourites'),
          BottomNavigationBarItem(
              icon: Icon(Icons.stop_circle), label: 'Profile'),
        ],
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle:
            TextStyle(fontSize: 14, fontWeight: FontWeight.w400),
        selectedLabelStyle:
            TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        selectedItemColor: Colors.black,
        selectedIconTheme: IconThemeData(color: Colors.black, size: 8),
        unselectedIconTheme: IconThemeData(color: Colors.white),
      ),
    );
  }
}

class Explore extends StatelessWidget {
  const Explore({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20, top: 30),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              TextField(
                cursorColor: Colors.grey,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.symmetric(horizontal: 20),
                  suffixIcon: Icon(Icons.search, color: Colors.grey),
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),
              spacedHeight(20),
              Text(
                'Explore restaurants',
                style: TextStyle(fontSize: 20),
              ),
              spacedHeight(20),
              Container(
                height: 40,
                child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) =>
                        categoryChip(categories[index]),
                    separatorBuilder: (context, index) => spacedWidth(15),
                    itemCount: categories.length),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: upList.length,
                    itemBuilder: (context, index) => ViewItem(index: index)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: upList.length,
                    itemBuilder: (context, index) => ViewItem(index: index)),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: upList.length,
                    itemBuilder: (context, index) => ViewItem(index: index)),
              )
            ]),
          ),
        ),
        floatingActionButton: FloatingActionButton(
          //shape: ,
          onPressed: () {},
          backgroundColor: Colors.green[500],
          child: Icon(
            Icons.place,
            size: 25,
          ),
        ));
  }
}
