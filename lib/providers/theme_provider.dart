import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  Brightness? _brightness;
  Brightness? get brightness => _brightness;

  set brightnessMode(Brightness? newBrightness) {
    _brightness = newBrightness;
    notifyListeners();
  }

  void changeBrightness() {
    _brightness =
        _brightness == Brightness.light ? Brightness.dark : Brightness.light;
    notifyListeners();
  }
}
