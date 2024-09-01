import 'package:broker/core/utils/styles.dart';
import 'package:broker/features/home/data/models/model.dart';
import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  const CustomImage({super.key, required this.model});

  final Model model;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 119,
      width: 108,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        image: DecorationImage(
          image: AssetImage(
            model.image,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Padding(
          padding: const EdgeInsets.only(right: 10.0,bottom: 10),
          child: Text(
            model.title,
            style: Styles.textStyle16.copyWith(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
