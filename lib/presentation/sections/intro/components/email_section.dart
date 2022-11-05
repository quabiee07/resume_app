import 'package:flutter/material.dart';
import 'package:hng_task_two/presentation/sections/intro/components/vertical_line.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:hng_task_two/resources/font_manager.dart';
import 'package:hng_task_two/resources/string_manager.dart';

class EmailSection extends StatelessWidget {
  const EmailSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      RotatedBox(
        quarterTurns: 3,
        child: Text(
          AppStrings.email,
          style: getMediumStyle(
              fontSize: FontSize.s18,
              color: ColorManager.primaryColor,
              letterSpacing: 1.5),
        ),
      ),
      const SizedBox(
        height: 25,
      ),
      const VerticalLine()
    ]);
  }
}
