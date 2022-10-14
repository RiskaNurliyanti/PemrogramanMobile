import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/constants.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';
import 'package:toko_tanaman_polaris/screens/details/stock.dart';
import 'package:toko_tanaman_polaris/screens/details/descriptions.dart';
import 'package:toko_tanaman_polaris/screens/menu_home/item.dart';

class Build extends StatelessWidget {
  const Build({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
            child: GridView.builder(
                itemCount: products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: kDefaultPaddin,
                  crossAxisSpacing: kDefaultPaddin,
                  childAspectRatio: 0.75,
                ),
                itemBuilder: (context, index) => ItemCard(
                      product: products[index],
                    )),
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        ),
      ],
    );
  }
}
