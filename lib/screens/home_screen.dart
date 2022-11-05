import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travel_app/widgets/ChooseCategory.dart';
import 'package:travel_app/widgets/app_bar.dart';
import 'package:travel_app/widgets/choose_place.dart';
import 'package:travel_app/widgets/popular_packages.dart';
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
          Expanded(

            child: ListView(
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
                SizedBox(
                  height: 30,
                ),
                ChoosePlace(),
                SizedBox(
                  height: 10,
                ),
                PopularPackages(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
