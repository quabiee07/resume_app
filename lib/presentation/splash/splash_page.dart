import 'package:flutter/material.dart';
import 'package:hng_task_two/core/responsive_layout.dart';
import 'package:hng_task_two/presentation/splash/desktop/splash_large.dart';
import 'package:hng_task_two/presentation/splash/mobile/splash_mobile.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: SplashDesktop(),
      smallScreen: SplashMobile(),
    );
  }
}
