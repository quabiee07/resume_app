import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/presentation/sections/intro/components/vertical_line.dart';
import 'package:hng_task_two/resources/asset_manager.dart';
import 'package:hng_task_two/resources/color_manager.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SvgPicture.asset(
          AssetManager.twitter,
          height: 25,
          color: ColorManager.primaryColor,
        ),
        const SizedBox(
          height: 25,
        ),
        SvgPicture.asset(
          AssetManager.instagram,
          height: 25,
          color: ColorManager.primaryColor,
        ),
        const SizedBox(
          height: 25,
        ),
        SvgPicture.asset(
          AssetManager.linkedin,
          height: 25,
          color: ColorManager.primaryColor,
        ),
        const SizedBox(
          height: 25,
        ),
        SvgPicture.asset(
          AssetManager.github,
          height: 25,
          color: ColorManager.primaryColor,
        ),
        const SizedBox(
          height: 25,
        ),
        const VerticalLine()
      ],
    );
  }
}
