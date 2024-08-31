import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomAppBarHomeView extends StatelessWidget {
  const CustomAppBarHomeView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 16,
        right: 16,
        bottom: 16,
        top: 48,
      ),
      width: MediaQuery.of(context).size.width,
      height: 96,
      decoration: BoxDecoration(
        color: Color(0xFF332620),
      ),
      child: Row(
        children: [
          Text(
            'تسجيل دخول',
            style: Styles.textStyle11.copyWith(
              color: Colors.white,
            ),
          ),
          SizedBox(
            width: 188,
          ),
          Image.asset(
            'assets/images/Frame 1171275259.png',
          ),
        ],
      ),
    );
  }
}
