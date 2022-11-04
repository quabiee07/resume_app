import 'package:flutter/material.dart';
import 'package:hng_task_two/core/responsive_layout.dart';
import 'package:hng_task_two/presentation/home/desktop/home_desktop.dart';
import 'package:hng_task_two/presentation/home/mobile/home_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      largeScreen: HomeDesktop(),
      smallScreen: HomeMobile(),
    );
  }
}
