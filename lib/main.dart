import 'package:flutter/material.dart';
import 'package:hng_task_two/resources/route_manager.dart';

import 'presentation/about/about_page.dart';
import 'presentation/home/home_page.dart';
import 'presentation/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
    );
  }
}

