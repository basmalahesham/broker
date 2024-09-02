import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/messages/presentation/views/archive_view.dart';
import 'package:broker/features/messages/presentation/views/widgets/custom_badge.dart';
import 'package:broker/features/messages/presentation/views/widgets/custom_row_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomMessage extends StatelessWidget {
  const CustomMessage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        showMenuFun(context);
      },
      child: Container(
        width: 343.w,
        height: 72.h,
        decoration: BoxDecoration(
          color: const Color(0xFFF4F4F4),
          borderRadius: BorderRadius.circular(7),
          border: Border.all(
            color: const Color(0xFFAFAFAF),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 16,
          ),
          child: Row(
            children: [
              CircleAvatar(
                radius: 25,
                child: Image.asset('assets/images/Ellipse 2.png'),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ابو نواف حميد',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    'مرحبا .. كيف بدي اساعدك اخي',
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w300,
                      color: Colors.black.withOpacity(0.7),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 58.w,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    '3:24 PM',
                    style: Styles.textStyle12.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFFAFAFAF),
                    ),
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  const CustomBadge(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  void showMenuFun(BuildContext context) {
    final RenderBox overlay =
        Overlay.of(context).context.findRenderObject() as RenderBox;
    showMenu(
      color: Colors.white,
      context: context,
      position: RelativeRect.fromRect(
        Rect.fromPoints(
          Offset.zero,
          Offset.zero,
        ),
        Offset.zero & overlay.size,
      ),
      items: [
        PopupMenuItem<int>(
          onTap: () {
            Navigator.pushNamed(context, ArchiveView.routeName,);
          },
          value: 0,
          child: const CustomRowMenu(
            text: 'الارشيف',
            icon: Icons.archive_outlined,
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const CustomRowMenu(
            text: 'مسح المحادثه',
            icon: Icons.restore_from_trash_rounded,
          ),
        ),
        PopupMenuItem<int>(
          onTap: () {},
          value: 1,
          child: const CustomRowMenu(
            text: 'تبلغ عن البائع ',
            icon: Icons.error_outline,
          ),
        ),
      ],
    );
  }
}

