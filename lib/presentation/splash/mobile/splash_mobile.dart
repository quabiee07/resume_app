import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/resources/color_manager.dart';
import 'package:hng_task_two/resources/route_manager.dart';

class SplashMobile extends StatefulWidget {
  const SplashMobile({super.key});

  @override
  State<SplashMobile> createState() => _SplashMobileState();
}

class _SplashMobileState extends State<SplashMobile>
    with SingleTickerProviderStateMixin {
  Timer? _timer;
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 3000))
    ..repeat(reverse: false);
  late final Animation<AlignmentGeometry> _animation =
      Tween(begin: Alignment.bottomRight, end: Alignment.center).animate(
    CurvedAnimation(parent: _controller, curve: Curves.easeIn),
  );
  _startDelay() {
    _timer = Timer(const Duration(seconds: 5), _goNext);
  }

  _goNext() {
    Navigator.pushReplacementNamed(context, Routes.homeRoute);
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AlignTransition(
        alignment: _animation,
        child: Container(
          color: ColorManager.primaryColor,
          child: Center(
            child: SvgPicture.asset(
              height: 180,
              'Vector.svg',
            ),
          ),
        ),
      ),
    );
  }
}
