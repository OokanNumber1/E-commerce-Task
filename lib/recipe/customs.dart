import 'package:flutter/material.dart';

List<String> upList = [
  'labour',
  'le_paris',
  'stor1',
  'labour1',
  'stor',
];

List<String> downList = [
  'stor',
  'labour1',
  'labour',
  'le_paris',
  'stor1',
];
List<String> categories = ['Cafe', 'Bakery', 'Italian', 'Vegetarian'];
List<String> drank = ['4.8', '4.5', '4.9', '4.4', '4.6'];
List<String> rank = ['4.4', '4.8', '4.9', '4.5', '4.6'];
TextStyle medium = TextStyle(fontSize: 16, fontWeight: FontWeight.bold);
Widget spacedHeight(double height) {
  return SizedBox(
    height: height,
  );
}

Widget spacedWidth(double width) {
  return SizedBox(
    width: width,
  );
}

class ViewItem extends StatelessWidget {
  const ViewItem({required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.4,
            height: MediaQuery.of(context).size.width * 0.33,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage('assets/recipe/${upList[index]}.png'),
              ),
            ),
            //image: AssetImage('assets/${getRandomElement(upList)}.png'))),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '  ${upList[index]} Cafe',
                style: medium,
              ),
              spacedHeight(4),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                    size: 15,
                  ),
                  Text(
                    rank[index],
                    style: medium,
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}

Container categoryChip(String label) {
  return Container(
    padding: EdgeInsets.all(3),
    height: 50,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      border: Border.all(color: Colors.grey),
    ),
    child: Chip(
      label: Text(label),
    ),
  );
}
