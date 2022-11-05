import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/presentation/sections/intro/components/vertical_line.dart';
import 'package:hng_task_two/providers/sm_provider.dart';
import 'package:hng_task_two/providers/theme_provider.dart';
import 'package:hng_task_two/resources/asset_manager.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:provider/provider.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<SocialMediaProvider>(
      builder: ((context, value, child) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                context.read<SocialMediaProvider>().launchTwitter();
              },
              child: SvgPicture.asset(
                AssetManager.twitter,
                height: 25,
                color: ColorManager.primaryColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                context.read<SocialMediaProvider>().launchInstagram();
              },
              child: SvgPicture.asset(
                AssetManager.instagram,
                height: 25,
                color: ColorManager.primaryColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                context.read<SocialMediaProvider>().launchLinkedin();
              },
              child: SvgPicture.asset(
                AssetManager.linkedin,
                height: 25,
                color: ColorManager.primaryColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                context.read<SocialMediaProvider>().launchGithub();
              },
              child: SvgPicture.asset(
                AssetManager.github,
                height: 25,
                color: ColorManager.primaryColor,
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            const VerticalLine()
          ],
        );
      }),
    );
  }
}
