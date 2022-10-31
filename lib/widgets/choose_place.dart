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
          PlaceCard(),
          PlaceCard(),
        ],
      ),
    );
  }
}

class PlaceCard extends StatelessWidget {
  const PlaceCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 186,
        height: 186,
        padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage('images/4.png'),
        )), //s
        child: Column(
          children: [
            Container(
              alignment: Alignment.centerRight,
              child: Container(
                width: 32,
                height: 32,
                padding: EdgeInsets.fromLTRB(3, 0, 0, 0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(15.0)),
                    color: Colors.white),
                alignment: Alignment.centerRight,
                child: Text(
                  "ssss",
                ),
              ),
            ),
            Text(
              "Mountain",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ));
  }
}
