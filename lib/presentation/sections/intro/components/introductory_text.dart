import 'package:flutter/material.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:provider/provider.dart';

import '../../../../providers/theme_provider.dart';
import '../../../../resources/font_manager.dart';
import '../../../../resources/string_manager.dart';

class IntroductoryText extends StatelessWidget {
  const IntroductoryText({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: ((context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                      text: AppStrings.salutaion,
                      style: getBlackStyle(
                          fontSize: FontSize.s60,
                          color: value.brightness == Brightness.light
                              ? Colors.black
                              : Colors.white)),
                  TextSpan(
                      text: AppStrings.name,
                      style: getBlackStyle(
                          fontSize: FontSize.s60,
                          color: ColorManager.primaryColor)),
                  TextSpan(
                      text: AppStrings.whatIdo,
                      style: getBlackStyle(
                          fontSize: FontSize.s60,
                          color: ColorManager.primaryColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Text(
              AppStrings.midIntro,
              style: getSemiBoldStyle(
                  fontSize: FontSize.s20,
                  color: value.brightness == Brightness.light
                      ? Colors.black
                      : Colors.white),
            ),
          ],
        );
      }),
    );
  }
}
