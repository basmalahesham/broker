import 'package:broker/constants.dart';
import 'package:broker/features/home/presentation/views/widgets/most_interactive_ad_details_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MostInteractiveAdDetailsView extends StatelessWidget {
  const MostInteractiveAdDetailsView({super.key});

  static const String routeName = "most_interactive_ad_details_view";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Row(
          children: [
            SizedBox(
              width: 7.w,
            ),
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios,
                color: Color(0xFF332620),
              ),
            ),
            const Icon(
              Icons.chat,
              color: kSecondaryColor,
            ),
          ],
        ),
        title: Image.asset('assets/images/Group 3646.png'),
        centerTitle: true,
        actions: [
          const Icon(
            Icons.favorite,
            color: Color(0xFFFFAEAF),
          ),
          SizedBox(
            width: 10.w,
          ),
          const Icon(
            Icons.share_outlined,
            color: Color(0xFF212121),
          ),
          SizedBox(
            width: 10.w,
          ),
        ],
      ),
      body: const MostInteractiveAdDetailsViewBody(),
    );
  }
}

