import 'package:flutter/material.dart';

import '../../models/Product.dart';
import 'components/body.dart';
import 'components/custom_app_bar.dart';

class ProductDetailsScreen extends StatelessWidget {
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final agrs =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      // Проблема в CustomAppBar
//      appBar: CustomAppBar(agrs.product.rating),
      appBar: buildAppBar(context),
      body: Body(product: agrs.product),
    );
  }
}

AppBar buildAppBar(BuildContext context) {
  return AppBar(
    title: Text(
      "Блюдо дня",
      style: TextStyle(color: Colors.black),
    ),
  );
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
