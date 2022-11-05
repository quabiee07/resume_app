import 'package:flutter/material.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:provider/provider.dart';

import '../../../../../providers/theme_provider.dart';
import '../../../../../resources/font_manager.dart';
import '../../../../../resources/string_manager.dart';

class IntroductoryTextMobile extends StatelessWidget {
  const IntroductoryTextMobile({super.key});

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
                          fontSize: FontSize.s24,
                          color: value.brightness == Brightness.light
                              ? Colors.black
                              : Colors.white)),
                  TextSpan(
                      text: AppStrings.name,
                      style: getBlackStyle(
                          fontSize: FontSize.s24,
                          color: ColorManager.primaryColor)),
                  TextSpan(
                      text: AppStrings.whatIdo,
                      style: getBlackStyle(
                          fontSize: FontSize.s24,
                          color: ColorManager.primaryColor)),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              AppStrings.midIntroMobile,
              style: getSemiBoldStyle(
                  fontSize: FontSize.s16,
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
