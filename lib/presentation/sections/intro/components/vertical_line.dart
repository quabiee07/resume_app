import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class VerticalLine extends StatelessWidget {
  const VerticalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2,
      height: 130,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
