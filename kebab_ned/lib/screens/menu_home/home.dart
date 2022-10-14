import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kebab_ned/constants.dart';
import 'package:kebab_ned/models/Product.dart';
import 'package:kebab_ned/screens/menu_home/build.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
        "Kebab Ned",
        style: TextStyle(
          fontSize: 17,
          color: kTextColor,
        ),
      ),
      actions: <Widget>[
        IconButton(
          icon: SvgPicture.asset(
            "Assets/icons/search.svg",
            color: kTextColor,
          ),
          onPressed: () {},
        ),
        SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
