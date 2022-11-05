import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/providers/theme_provider.dart';
import 'package:provider/provider.dart';
import '../../../../resources/asset_manager.dart';
import '../../../../resources/color_manager.dart';
import '../../../../resources/font_manager.dart';
import '../../../../resources/string_manager.dart';
import '../components/email_section.dart';
import '../components/horizontal_line.dart';
import '../components/introductory_text.dart';
import '../components/social_buttons.dart';
import '../components/vertical_line.dart';

class IntroDesktop extends StatelessWidget {
  const IntroDesktop({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeProvider>(builder: (_, themeProvider, __) {
        return Stack(
          children: [
            Positioned(
              left: 30,
              top: 20,
              child: Text(AppStrings.title,
                  style: getBlackStyle(
                      fontSize: FontSize.s18,
                      color: themeProvider.brightness == Brightness.light
                          ? Colors.black
                          : Colors.white)),
            ),
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.only(top: 20),
                child: IconButton(
                  onPressed: context.read<ThemeProvider>().changeBrightness,
                  icon: themeProvider.brightness == Brightness.light
                      ? Icon(Icons.sunny, color: ColorManager.primaryColor)
                      : const Icon(Icons.nightlight, color: Colors.white),
                ),
              ),
            ),
            Positioned(
              right: 150,
              top: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: SizedBox(
                  height: 300,
                  width: 300,
                  child: Image.asset(
                    AssetManager.headshot,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const Positioned(
              right: 50,
              top: 150,
              child: EmailSection(),
            ),
            const Positioned(
              right: 120,
              top: 110,
              child: HorizontalLine(),
            ),
            const Positioned(
              right: 120,
              top: 110,
              child: VerticalLine(),
            ),
            const Positioned(
              top: 200,
              left: 150,
              child: IntroductoryText(),
            ),
            const Positioned(
              top: 200,
              left: 50,
              child: SocialButtons(),
            ),
            Positioned(
                bottom: 30,
                left: 0,
                right: 0,
                child: SvgPicture.asset(
                  AssetManager.downward,
                  color: ColorManager.primaryColor,
                ))
          ],
        );
      }),
    );
  }
}
