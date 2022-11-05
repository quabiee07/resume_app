import 'package:flutter/material.dart';
import 'package:hng_task_two/presentation/sections/about/about_page.dart';
import 'package:hng_task_two/presentation/sections/intro/intro_page.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return PageView(
      pageSnapping: true,
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        IntroPage(),
        AboutPage(),
      ],
    );
  }
}
