import 'package:flutter/material.dart';
import 'package:hng_task_two/providers/theme_provider.dart';
import 'package:hng_task_two/resources/route_manager.dart';
import 'package:hng_task_two/resources/theme_manager.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with WidgetsBindingObserver {
  late ThemeProvider _themeProvider;

  @override
  void initState() {
    WidgetsBinding.instance.addObserver(this);
    _themeProvider = ThemeProvider();
    _themeProvider.brightnessMode =
        WidgetsBinding.instance.window.platformBrightness;
    super.initState();
  }

  @override
  void dispose() {
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    if (mounted) {
      _themeProvider.brightnessMode =
          WidgetsBinding.instance.window.platformBrightness;
    }
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return ListenableProvider(
      create: (_) => _themeProvider,
      child: Builder(
        builder: (context) {
          final themeProvider = Provider.of<ThemeProvider>(
            context,
            listen: true,
          );
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            onGenerateRoute: RouteGenerator.getRoute,
            initialRoute: Routes.splashRoute,
            theme: themeProvider.brightness == Brightness.light
                ? ThemeManager.lightTheme
                : ThemeManager.darkTheme,
          );
        },
      ),
    );
  }
}
