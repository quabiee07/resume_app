import 'package:flutter/material.dart';
import 'package:hng_task_two/presentation/home.dart';
import 'package:hng_task_two/presentation/sections/about/about_page.dart';
import 'package:hng_task_two/presentation/splash/splash_page.dart';
import 'package:hng_task_two/resources/string_manager.dart';

import '../presentation/sections/intro/intro_page.dart';

class Routes{
  static const String splashRoute = "/";
  static const String home = "/home";
  static const String introRoute = "/intro";
  static const String aboutRoute = "/about";

}

class RouteGenerator{
  static Route<dynamic> getRoute(RouteSettings routeSettings){
    switch(routeSettings.name){
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashPage());
        case Routes.home:
        return MaterialPageRoute(builder: (_) => const Home());
      case Routes.introRoute:
        return MaterialPageRoute(builder: (_) => const IntroPage());
      case Routes.aboutRoute:
        return MaterialPageRoute(builder: (_) => const AboutPage());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute(){
    return MaterialPageRoute(builder: (_) =>
        Scaffold(
          appBar: AppBar(
            title: const Text(AppStrings.noRoute),
          ),
          body: const Center(child: Text(AppStrings.noRoute)),
        )
    );
  }
}