import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:toko_tanaman_polaris/constants.dart';

import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/build.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Build(),
      // bottomNavigationBar: MyMainPage(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      title: Text(
        "Toko Tanaman Polaris",
        style: TextStyle(
          fontSize: 17,
          color: kTextColor,
        ),
      ),
    );
  }
}
