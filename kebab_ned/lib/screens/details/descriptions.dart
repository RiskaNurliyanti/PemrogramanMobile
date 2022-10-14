import 'package:flutter/material.dart';
import 'package:kebab_ned/models/Product.dart';

import '../../../constants.dart';

class description extends StatelessWidget {
  const description({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Text(
        product.description,
        style: const TextStyle(height: 1.5),
      ),
    );
  }
}