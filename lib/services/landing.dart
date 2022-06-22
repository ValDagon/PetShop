import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';

import '../domain/AuthUser.dart';

class LandingPage extends StatelessWidget {
  static String routeName = "/landing";

  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final AuthUser? user = Provider.of<AuthUser?>(context);
    final bool isLoggedIn = user != null;

    return isLoggedIn ? HomeScreen() : SplashScreen();
  }
}
