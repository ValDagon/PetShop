import 'package:flutter/material.dart';
import 'package:shop_app/screens/my_profile/my_profile_screen.dart';
import 'package:shop_app/services/auth.dart';

import 'profile_menu.dart';
import 'profile_pic.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: Column(
        children: [
          ProfilePic(),
          SizedBox(height: 20),
          ProfileMenuButton(
            text: "Мой профиль",
            icon: "assets/icons/User Icon.svg",
            press: () => {
              print("My Profile"),
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyProfileScreen()))
            },
          ),
          ProfileMenuButton(
            text: "Настройки",
            icon: "assets/icons/Settings.svg",
            press: () {},
          ),
          ProfileMenuButton(
            text: "Помощь",
            icon: "assets/icons/Question mark.svg",
            press: () {},
          ),
          ProfileMenuButton(
            text: "Выйти из аккаунта",
            icon: "assets/icons/Log out.svg",
            press: () {
              AuthService().logOut();
            },
          ),
        ],
      ),
    );
  }
}
