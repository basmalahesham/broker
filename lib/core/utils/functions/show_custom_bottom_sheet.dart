import 'package:broker/features/home/presentation/views/widgets/custom_bottom_login_sheet.dart';
import 'package:flutter/material.dart';

void showCustomBottomSheet(BuildContext context) {
  showModalBottomSheet(
    context: context,
    builder: (context) => const CustomBottomLoginSheet(),
  );
}
