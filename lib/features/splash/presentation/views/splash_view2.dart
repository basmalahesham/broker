import 'package:broker/layout/home_layout.dart';
import 'package:flutter/material.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});
  static const String routeName = "splash_view2";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
          () => Navigator.of(context).pushReplacementNamed(
        HomeLayout.routeName,
      ),
    );
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Splash 2.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
