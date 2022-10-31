import 'package:flutter/material.dart';

class ChooseCategory extends StatelessWidget {
  const ChooseCategory({
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
              "Choose Category",
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
        SizedBox(
          height: 30,
        ),
        CategoryRow(),
      ],
    );
  }
}

class CategoryRow extends StatelessWidget {
  const CategoryRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CategoryCard(
          image: Image.asset(
            'images/1.png',
            fit: BoxFit.contain,
            height: 100,
            width: 50,
          ),
          name: Text(
            "Beach",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
        SizedBox(
          width: 25,
        ),
        CategoryCard(
          image: Image.asset(
            'images/3.png',
            fit: BoxFit.contain,
            height: 50,
            width: 50,
          ),
          name: Text(
            "Mountain",
            style: TextStyle(
              fontSize: 16,
            ),
          ),
        ),
      ],
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
