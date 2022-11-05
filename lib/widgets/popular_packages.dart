import 'package:flutter/material.dart';

import 'choose_place.dart';

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
                color: Color(0xFF767676),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
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
    return Column(
      children: [
        CategoryCard(
          title: 'Kuta Resort',
          price: 20000,
          desc:
              'A resort is a place used for\nvacation, relaxation or as a day...',
          imagePath: 'ph1.png',
        ),
        CategoryCard(
          title: 'Baga Beach Resort',
          price: 15000,
          desc:
              'A resort is a place used for\nvacation, relaxation or as a day...',
          imagePath: 'ph2.png',
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  final String title;
  final int price;
  final String desc;
  final String imagePath;
  const CategoryCard({
    Key? key,
    required this.title,
    required this.price,
    required this.desc,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 341,
        height: 163,
        padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFFC4C4C4)),
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
        ),
        child: Center(
            child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset('images/$imagePath',
                  fit: BoxFit.contain, height: 176, width: 86),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$title",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "\$${price.toString()}",
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Stars(),
                  Text(
                    "$desc",
                    style: TextStyle(fontSize: 12, color: Color(0xFF767676)),
                  ),
                ],
              ),
              Image.asset('images/heart.png'),
            ],
          ),
        )),
      ),
    );
  }
}
