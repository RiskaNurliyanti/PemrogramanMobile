import 'package:flutter/material.dart';
import 'package:kebab_ned/constants.dart';
import 'package:kebab_ned/models/Product.dart';

import 'package:kebab_ned/screens/details/descriptions.dart';
import 'package:kebab_ned/screens/details/image_product.dart';

class Build extends StatelessWidget {
  final Product product;

  const Build({Key? key, required this.product}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
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
                      topLeft: Radius.circular(24),
                      topRight: Radius.circular(24),
                    ),
                  ),
                  child: Column(
                    children: <Widget>[
                      //     ColorAndSize(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
                      description(product: product),
                      const SizedBox(height: kDefaultPaddin / 2),
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
