import 'package:flutter/material.dart';
import 'package:hng_task_two/presentation/sections/about/components/service_card.dart';
import 'package:hng_task_two/providers/theme_provider.dart';
import 'package:provider/provider.dart';

import '../../../../resources/color_manager.dart';
import '../../../../resources/font_manager.dart';
import '../../../../resources/string_manager.dart';

class AboutMobile extends StatelessWidget {
  const AboutMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return SingleChildScrollView(
            physics: NeverScrollableScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 25,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'A little about',
                          style: getBlackStyle(
                            fontSize: FontSize.s24,
                            color: value.brightness == Brightness.light
                                ? Colors.black
                                : Colors.white,
                          ),
                        ),
                        TextSpan(
                          text: ' me.',
                          style: getBlackStyle(
                            fontSize: FontSize.s24,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Text(AppStrings.aboutMe,
                      style: getRegularStyle(
                        fontSize: FontSize.s18,
                        color: value.brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      )),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'I',
                          style: getBlackStyle(
                            fontSize: FontSize.s18,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' get the job done.',
                          style: getBlackStyle(
                            fontSize: FontSize.s18,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(
                      AppStrings.whatIcanDo,
                      style: getRegularStyle(
                        fontSize: FontSize.s18,
                        color: value.brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 10,
                ),
                Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      AppStrings.whatIcanDoList,
                      style: getRegularStyle(
                        fontSize: FontSize.s18,
                        color: value.brightness == Brightness.light
                            ? Colors.black
                            : Colors.white,
                      ),
                    )),
                SizedBox(
                  height: 50,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
