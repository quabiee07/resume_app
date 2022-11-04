import 'package:flutter/material.dart';

import '../../../../resources/color_manager.dart';

class HorizontalLineMobile extends StatelessWidget {
  const HorizontalLineMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width:70,
      height: 2,
      decoration: BoxDecoration(
        color: ColorManager.primaryColor,
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
