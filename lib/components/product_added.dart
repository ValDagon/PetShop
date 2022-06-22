import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';

class ProductAdded extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orangeAccent,
      body: Body(context),
    );
  }
}

Widget Body(context) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Icon(
        Icons.check_circle_outline,
        size: 72,
        color: Colors.white,
      ),
      Padding(
        padding: const EdgeInsets.all(20.0),
        child: Text(
          "Продукт добавлен в список покупок",
          style: TextStyle(color: Colors.white),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultButton(
          text: "К списку покупок ",
          press: () {},
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(10.0),
        child: DefaultButton(
          text: "Дополнить список",
          press: () {},
        ),
      ),
    ],
  );
}
