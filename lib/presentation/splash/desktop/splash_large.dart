import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hng_task_two/resources/color_manager.dart';

import 'package:hng_task_two/resources/route_manager.dart';
import 'package:hng_task_two/resources/value_manager.dart';

import '../../../resources/asset_manager.dart';

class SplashDesktop extends StatefulWidget {
  const SplashDesktop({super.key});

  @override
  State<SplashDesktop> createState() => _SplashDesktopState();
}

class _SplashDesktopState extends State<SplashDesktop>
    with TickerProviderStateMixin {
  Timer? _timer;
  late final AnimationController _controller = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 3000))
    ..repeat(reverse: false);
  late final AnimationController _controller1 = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> _animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastLinearToSlowEaseIn,
  );

  late final Animation<double> _animation1 = CurvedAnimation(
    parent: _controller1,
    curve: Curves.fastOutSlowIn,
  );

  _startDelay() {
    _timer = Timer(const Duration(seconds: 3), _goNext);
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
    _controller.dispose();
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorManager.primaryColor,
        child: SizeTransition(
          sizeFactor: _animation,
          axis: Axis.vertical,
          axisAlignment: -1,
          child: ScaleTransition(
            scale: _animation1,
            child: Center(
              child: SvgPicture.asset(
                height: AppSize.s180,
                AssetManager.splashVector,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
