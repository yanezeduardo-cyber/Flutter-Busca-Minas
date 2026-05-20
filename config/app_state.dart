import 'package:flutter/material.dart';
import 'constants.dart';

class AppState extends ChangeNotifier {
  Difficulty _difficulty = Difficulty.easy;
  ThemeMode _themeMode = ThemeMode.system;
  NumberStyle _numberStyle = NumberStyle.classic;
  bool _animationsEnabled = true;
  bool _soundEnabled = false;

  Difficulty get difficulty => _difficulty;
  ThemeMode get themeMode => _themeMode;
  NumberStyle get numberStyle => _numberStyle;
  bool get animationsEnabled => _animationsEnabled;
  bool get soundEnabled => _soundEnabled;

  void setDifficulty(Difficulty d) { _difficulty = d; notifyListeners(); }
  void setThemeMode(ThemeMode tm) { _themeMode = tm; notifyListeners(); }
  void setNumberStyle(NumberStyle ns) { _numberStyle = ns; notifyListeners(); }
  void setAnimations(bool b) { _animationsEnabled = b; notifyListeners(); }
  void setSound(bool b) { _soundEnabled = b; notifyListeners(); }

  void loadSettings() async {}
}
