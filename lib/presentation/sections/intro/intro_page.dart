import 'package:flutter/material.dart';
import 'package:hng_task_two/core/responsive_layout.dart';
import 'package:hng_task_two/presentation/sections/intro/desktop/intro_desktop.dart';
import 'package:hng_task_two/presentation/sections/intro/tablet/intro_tablet.dart';

import 'mobile/intro_mobile.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({super.key});

  @override
  State<IntroPage> createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: IntroDesktop(),
      smallScreen: IntroMobile(),
      mediumScreen: IntroTablet(),
    );
  }
}
