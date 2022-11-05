import 'package:flutter/material.dart';
import 'package:hng_task_two/core/responsive_layout.dart';
import 'package:hng_task_two/presentation/sections/about/mobile/about_mobile.dart';

import 'desktop/about_desktop.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: AboutDesktop(),
      smallScreen: AboutMobile(),
    );
  }
}
