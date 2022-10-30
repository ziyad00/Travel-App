import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/ChooseCategory.dart';
import 'package:travel_app/widgets/app_bar.dart';
import 'package:travel_app/widgets/seacrh.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                height: 50,
              ),
              AppBarCustom(
                name: 'Vineetha',
              ),
              SizedBox(
                height: 30,
              ),
              Search(),
              SizedBox(
                height: 30,
              ),
              ChooseCategory(),
            ],
          ),
        ],
      ),
    );
  }
}
