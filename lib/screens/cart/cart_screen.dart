import 'package:flutter/material.dart';
import 'components/body.dart';
import 'components/check_out_card.dart';

class CartScreen extends StatelessWidget {
  static String routeName = "/cart";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
      bottomNavigationBar: CheckoutCard(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Center(
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 30),
              child: Image.asset(
                "assets/images/five.png",
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Text(
                "Пятёрочка",
                style: TextStyle(color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 30),
              child: Icon(Icons.expand_more),
            ),
          ],
        ),
      ),
    );
  }
}
