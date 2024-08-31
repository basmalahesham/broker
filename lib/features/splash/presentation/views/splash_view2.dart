import 'package:broker/core/utils/styles.dart';
import 'package:broker/layout/home_layout.dart';
import 'package:flutter/material.dart';

class SplashView2 extends StatelessWidget {
  const SplashView2({super.key});
  static const String routeName = "splash_view2";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacementNamed(
        HomeLayout.routeName,
      ),
    );
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/png-01.png'),
          Align(
            alignment: Alignment.topCenter,
            child: Text(
              'جد منزل احلامك بسهولة',
              style: Styles.textStyle20.copyWith(
                color: const Color(0xFFEA4335),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
