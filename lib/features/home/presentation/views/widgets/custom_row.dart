import 'package:broker/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomRow extends StatelessWidget {
  const CustomRow({
    super.key, required this.text,
  });

  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16,bottom: 16,),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: Styles.textStyle16
                .copyWith(color: Colors.black.withOpacity(0.7)),
          ),
          Row(
            children: [
              Text(
                'شاهد الكل',
                style: Styles.textStyle10,
              ),
              Icon(
                Icons.arrow_forward,
                size: 16,
                color: Colors.black.withOpacity(0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
