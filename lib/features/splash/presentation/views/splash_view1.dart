import 'package:broker/features/splash/presentation/views/splash_view2.dart';
import 'package:flutter/material.dart';

class SplashView1 extends StatelessWidget {
  const SplashView1({super.key});
  static const String routeName = "splash_view1";

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => Navigator.of(context).pushReplacement(
        createRoute(
          const SplashView2(),
        ),
      ),
    );
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/Splash 1.png'),
          fit: BoxFit.fill,
        ),
      ),
    );
  }

  PageRouteBuilder<dynamic> createRoute(Widget page) {
    return PageRouteBuilder(
      pageBuilder: (context, animation, secondaryAnimation) => page,
      transitionsBuilder: (context, animation, secondaryAnimation, child) {
        const begin = Offset(0.0, 1.0); // Slide from bottom
        const end = Offset.zero;
        const curve = Curves.easeInOut;

        final tween =
            Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
        final offsetAnimation = animation.drive(tween);

        return SlideTransition(
          position: offsetAnimation,
          child: child,
        );
      },
    );
  }
}
