import 'package:flutter/material.dart';

class PopularPackages extends StatelessWidget {
  const PopularPackages({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Popular Package",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              width: 170,
            ),
            Text(
              "See all",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
        PackagesColumn(),
      ],
    );
  }
}

class PackagesColumn extends StatelessWidget {
  const PackagesColumn({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 50,
      child: ListView(
        children: [
          Text("ss"),
        ],
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final Image image;
  final Text name;
  const CategoryCard({
    Key? key,
    required this.image,
    required this.name,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 60,
      padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.all(Radius.circular(5.0)),
      ),
      child: Center(
          child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          image,
          name,
        ],
      )),
    );
  }
}
