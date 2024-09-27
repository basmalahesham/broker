import 'package:broker/features/home/presentation/views/widgets/custom_container.dart';
import 'package:flutter/material.dart';

class BuildFeatureRow extends StatelessWidget {
  const BuildFeatureRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        CustomContainer(
          text: '3 غرف',
        ),
        SizedBox(
          width: 10,
        ),
        CustomContainer(
          text: '2 حمام',
        ),
        SizedBox(
          width: 10,
        ),
        CustomContainer(
          text: '1 صاله',
        ),
      ],
    );
  }
}
