import 'package:flutter/material.dart';

class PhoneRegisterView extends StatefulWidget {
  const PhoneRegisterView({super.key});
  static const String routeName = 'phone_register_view';

  @override
  State<PhoneRegisterView> createState() => _PhoneRegisterViewState();
}

class _PhoneRegisterViewState extends State<PhoneRegisterView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xFFE8EEEC),
    );
  }
}
