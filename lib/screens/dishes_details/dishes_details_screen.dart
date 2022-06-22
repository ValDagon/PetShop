import 'package:flutter/material.dart';

import 'components/body.dart';

class DishesDetailsScreen extends StatelessWidget {
  static String routeName = "/dishes_details";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      appBar: AppBar(
        title: Text(
          "Информация о блюде",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Body(),
    );
  }
}
