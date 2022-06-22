import 'package:flutter/material.dart';

import 'components/body.dart';

class MyProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(context),
      body: Body(),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      title: Text(
        "Редактировать профиль",
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
