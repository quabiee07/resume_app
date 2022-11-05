import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class HorizontalLine extends StatelessWidget {
  const HorizontalLine({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:130,
      height: 2,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
