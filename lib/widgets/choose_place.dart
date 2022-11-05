import 'package:flutter/material.dart';

class ChoosePlace extends StatelessWidget {
  const ChoosePlace({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 350,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.all(8),
        children: [
          PlaceCard(
            imagePath: 'images/4.png',
            placeLocation: "Bali, Indonesia",
            placeName: "Kuta Beach",
          ),
          SizedBox(
            width: 20,
          ),
          PlaceCard(
              imagePath: 'images/6.png',
              placeLocation: "Goa , India",
              placeName: "Baga Beach"),
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  final String placeName;
  final String placeLocation;
  final String imagePath;
  const PlaceCard({
    Key? key,
    required this.imagePath,
    required this.placeName,
    required this.placeLocation,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 186,
        height: 186,
        padding: EdgeInsets.fromLTRB(10, 10, 15, 0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            image: DecorationImage(
              image: AssetImage('$imagePath'),
              fit: BoxFit.fill,
            )), //s
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 32,
                height: 32,
                padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white),
                alignment: Alignment.center,
                child: Image.asset('images/heart.png'),
              ),
            ),
            SizedBox(
              height: 100,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 50),
              child: Column(
                children: [
                  Text(
                    "$placeName",
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('images/location.png'),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "$placeLocation",
                        style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Stars(),
                ],
              ),
            ),
          ],
        ));
  }
}

class Stars extends StatelessWidget {
  const Stars({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          width: 10,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
          size: 12,
        ),
        Icon(
          Icons.star,
          color: Colors.white,
          size: 12,
        ),
        SizedBox(
          width: 5,
        ),
        Text(
          "4.2",
          style: TextStyle(
              fontSize: 12,
              color: Colors.white,
              fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
