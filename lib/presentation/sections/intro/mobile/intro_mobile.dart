import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/presentation/sections/intro/mobile/widgets/introductory_text_mobile.dart';
import 'package:hng_task_two/presentation/sections/intro/mobile/widgets/social_buttons_mobile.dart';
import 'package:hng_task_two/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../../../resources/asset_manager.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_manager.dart';
import '../../../../resources/string_manager.dart';
import '../components/horizontal_line.dart';
import '../components/vertical_line.dart';

class IntroMobile extends StatelessWidget {
  const IntroMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeProvider>(
        builder: (_, themeProvider, __) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              child: Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 25, left: 20),
                        child: Text(
                          AppStrings.title,
                          textAlign: TextAlign.center,
                          style: getBlackStyle(
                            fontSize: FontSize.s16,
                            color: themeProvider.brightness == Brightness.light
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                      ),
                      const Spacer(),
                      Container(
                        padding: const EdgeInsets.only(top: 30, right: 20),
                        child: IconButton(
                          onPressed:
                              context.read<ThemeProvider>().changeBrightness,
                          icon: themeProvider.brightness == Brightness.light
                              ? Icon(Icons.sunny,
                                  color: ColorManager.primaryColor)
                              : const Icon(Icons.nightlight,
                                  color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  Positioned(
                    top: 150,
                    left: 100,
                    right: 100,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        AssetManager.headshot,
                        fit: BoxFit.cover,
                        // scale: 10,
                      ),
                    ),
                  ),
                  const Positioned(
                    right: 80,
                    top: 130,
                    child: HorizontalLine(),
                  ),
                  const Positioned(
                    right: 80,
                    top: 130,
                    child: VerticalLine(),
                  ),
                  const Positioned(
                    top: 400,
                    left: 50,
                    child: IntroductoryTextMobile(),
                  ),
                  const Positioned(
                    left: 20,
                    top: 620,
                    child: SocialButtonsMobile(),
                  ),
                  Positioned(
                      top: 720,
                      left: 0,
                      right: 0,
                      child: SvgPicture.asset(
                        AssetManager.downward,
                        color: ColorManager.primaryColor,
                      ))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
