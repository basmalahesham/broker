import 'package:broker/constants.dart';
import 'package:broker/features/add/presentation/views/talab_aqar_add_view.dart';
import 'package:broker/features/add/presentation/views/talab_documented_add_view.dart';
import 'package:broker/features/auth/presentation/views/login_view.dart';
import 'package:broker/features/auth/presentation/views/phone_register_view.dart';
import 'package:broker/features/auth/presentation/views/otp_view.dart';
import 'package:broker/features/auth/presentation/views/register_view.dart';
import 'package:broker/features/home/presentation/views/most_interactive_ad_details_view.dart';
import 'package:broker/features/home/presentation/views/talab_aqar_view.dart';
import 'package:broker/features/home/presentation/views/talab_documented_view.dart';
import 'package:broker/features/layout/home_layout.dart';
import 'package:broker/features/layout/views/call_us_view.dart';
import 'package:broker/features/layout/views/personnel_services_view.dart';
import 'package:broker/features/messages/presentation/views/archive_view.dart';
import 'package:broker/features/messages/presentation/views/chat_view.dart';
import 'package:broker/features/splash/presentation/views/splash_view1.dart';
import 'package:broker/features/splash/presentation/views/splash_view2.dart';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(
    ScreenUtilInit(
      builder: (child, context) => DevicePreview(
        enabled: false,
        builder: (context) => const MyApp(),
      ),
      minTextAdapt: true,
      splitScreenMode: true,
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('ar'),
      ],
      locale: const Locale('ar'),
      theme: ThemeData.light().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
      initialRoute: SplashView1.routeName,
      routes: {
        SplashView1.routeName: (context) => const SplashView1(),
        SplashView2.routeName: (context) => const SplashView2(),
        HomeLayout.routeName: (context) => const HomeLayout(selectedIndex: 0),
        ArchiveView.routeName: (context) => const ArchiveView(),
        ChatView.routeName: (context) => const ChatView(),
        MostInteractiveAdDetailsView.routeName: (context) =>
            const MostInteractiveAdDetailsView(),
        TalabAqarView.routeName: (context) => const TalabAqarView(),
        TalabDocumentedView.routeName: (context) => const TalabDocumentedView(),
        LoginView.routeName: (context) => const LoginView(),
        PhoneRegisterView.routeName: (context) => const PhoneRegisterView(),
        OTPView.routeName: (context) => const OTPView(),
        RegisterView.routeName: (context) => const RegisterView(),
        CallUsView.routeName: (context) => const CallUsView(),
        PersonnelServicesView.routeName: (context) =>
            const PersonnelServicesView(),
        TalabAqarAddView.routeName: (context) => const TalabAqarAddView(),
        TalabDocumentedAddView.routeName: (context) =>
            const TalabDocumentedAddView(),
      },
    );
  }
}
