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
                  padding: const EdgeInsets.only(left: 20),
                  child: Container(
                    height: 330,
                    padding: const EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        color: ColorManager.primaryColor),
                    child: Text(AppStrings.aboutMe + AppStrings.hobby,
                        style: getRegularStyle(
                          fontSize: FontSize.s18,
                          color: value.brightness == Brightness.light
                              ? Colors.black
                              : Colors.white,
                        )),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'What',
                          style: getBlackStyle(
                            fontSize: FontSize.s18,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' I',
                          style: getBlackStyle(
                            fontSize: FontSize.s18,
                            color: ColorManager.primaryColor,
                          ),
                        ),
                        TextSpan(
                          text: ' can do.',
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
                    padding: const EdgeInsets.only(left: 20),
                    child: Text(
                      AppStrings.whatIcanDo,
                      style: getMediumStyle(
                          fontSize: FontSize.s18,
                          color: value.brightness == Brightness.light
                              ? Colors.black
                              : Colors.white,
                          letterSpacing: 0),
                    )),
                SizedBox(
                  height: 15,
                ),
                Container(
                    height: 230,
                    padding: const EdgeInsets.only(left: 20, bottom: 20),
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        ServiceCard(
                          title: AppStrings.whatIcanDoList[0],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ServiceCard(
                          title: AppStrings.whatIcanDoList[1],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ServiceCard(
                          title: AppStrings.whatIcanDoList[2],
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        ServiceCard(
                          title: AppStrings.whatIcanDoList[3],
                        ),
                      ],
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