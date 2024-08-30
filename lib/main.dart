import 'package:broker/constants.dart';
import 'package:broker/features/splash/presentation/views/splash_view1.dart';
import 'package:broker/features/splash/presentation/views/splash_view2.dart';
import 'package:broker/layout/home_layout.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      initialRoute: SplashView1.routeName,
      routes: {
        SplashView1.routeName: (context) => SplashView1(),
        SplashView2.routeName: (context) => SplashView2(),
        HomeLayout.routeName: (context) => HomeLayout(),
      },
    );
  }
}
