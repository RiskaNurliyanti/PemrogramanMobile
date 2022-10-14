import 'package:flutter/material.dart';
import 'package:toko_tanaman_polaris/models/Product.dart';

import '../../../../constants.dart';

class stock extends StatelessWidget {
  const stock({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: RichText(
            text: TextSpan(
              style: const TextStyle(color: kTextColor),
              children: [
                const TextSpan(
                    text: "Stock\n",
                    style: TextStyle(fontSize: 23, fontWeight: bold)),
                TextSpan(
                    text: "${product.stock}",
                    style: const TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
