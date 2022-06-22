import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/models/Cart.dart';
import 'package:shop_app/models/Product.dart';

import '../../../size_config.dart';

import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            // DiscountBanner(),
            // Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
            DefaultButton(
              text: "Купить",
              press: () {
                demoCarts.add(Cart(product: demoProducts[0], numOfItem: 1));
                demoCarts.add(Cart(product: demoProducts[1], numOfItem: 2));
                demoCarts.add(Cart(product: demoProducts[2], numOfItem: 3));
                demoCarts.add(Cart(product: demoProducts[3], numOfItem: 4));
              },
            )
          ],
        ),
      ),
    );
  }
}
