import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/main.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:toko_tanaman_polaris/screens/details/build.dart';
import 'package:toko_tanaman_polaris/screens/mainpage.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/home.dart';

class details extends StatelessWidget {
  final Product product;

  const details({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: buildAppBar(context),
      body: Build(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: kBackgroundColor,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset(
          'assets/icons/back.svg',
          color: kTextColor,
        ),
        onPressed: () => Get.back(),
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.home_filled, color: kTextColor),
          onPressed: () {
            Get.off(MyMainPage());
          },
        ),
        const SizedBox(width: kDefaultPaddin / 2)
      ],
    );
  }
}
