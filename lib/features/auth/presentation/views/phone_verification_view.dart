import 'package:flutter/material.dart';

class PhoneVerificationView extends StatefulWidget {
  const PhoneVerificationView({super.key});
  static const String routeName = 'phone_verification_view';

  @override
  State<PhoneVerificationView> createState() => _PhoneVerificationViewState();
}

class _PhoneVerificationViewState extends State<PhoneVerificationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE8EEEC),
    );
  }
}
