import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/details/beli.dart';

import 'package:toko_tanaman_polaris/screens/details/descriptions.dart';
import 'package:toko_tanaman_polaris/screens/details/image_product.dart';
import 'package:toko_tanaman_polaris/screens/details/stock.dart';

class Build extends StatelessWidget {
  final Product product;

  const Build({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Container(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPaddin,
                    right: kDefaultPaddin,
                  ),
                  decoration: const BoxDecoration(
                    color: kTextLightColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      stock(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      beli(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      //     AddToCart(product: product)
                    ],
                  ),
                ),
                image(product: product)
              ],
            ),
          )
        ],
      ),
    );
  }
}
