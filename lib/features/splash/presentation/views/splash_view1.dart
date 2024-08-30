import 'package:broker/features/splash/presentation/views/splash_view2.dart';
import 'package:flutter/material.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});
  static const String routeName = "splash_view1";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(
        seconds: 3,
      ),
      () => Navigator.of(context).pushReplacementNamed(
        SplashView2.routeName,
      ),
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            'assets/images/Splash 1.png',
          ),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
