import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget {
  final String name;
  const AppBarCustom({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Row(
      children: [
        Image.asset('images/Ellipse1.png'),
        SizedBox(
          width: 20,
        ),
        Text("Hello, ${name}", style: TextStyle(fontSize: 17)),
        SizedBox(
          width: 100,
        ),
        Image.asset('images/lamp.png'),
      ],
    ));
  }
}
