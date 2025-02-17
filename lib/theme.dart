import 'package:fluent_ui/fluent_ui.dart';
import 'package:flutter/foundation.dart';
import 'package:system_theme/system_theme.dart';
import 'package:flutter_acrylic/flutter_acrylic.dart' as flutter_acrylic;

enum NavigationIndicators { sticky, end }

class AppTheme extends ChangeNotifier {
  AccentColor _color = AccentColor('normal', const <String, Color>{
    'darkest': Color(0xff126568),
    'darker': Color(0xff146D70),
    'dark': Color(0xff157477),
    'normal': Color(0xff167C80),
    'light': Color(0xff188387),
    'lighter': Color(0xff198A8E),
    'lightest': Color(0xff1B9296),
  }); //Alpine landing FTW
  AccentColor get color => _color;
  set color(AccentColor color) {
    _color = color;
    notifyListeners();
  }

  ThemeMode _mode = ThemeMode.system;
  ThemeMode get mode => _mode;
  set mode(ThemeMode mode) {
    _mode = mode;
    notifyListeners();
  }

  PaneDisplayMode _displayMode = PaneDisplayMode.top;
  PaneDisplayMode get displayMode => _displayMode;
  set displayMode(PaneDisplayMode displayMode) {
    _displayMode = displayMode;
    notifyListeners();
  }

  NavigationIndicators _indicator = NavigationIndicators.sticky;
  NavigationIndicators get indicator => _indicator;
  set indicator(NavigationIndicators indicator) {
    _indicator = indicator;
    notifyListeners();
  }

  /*flutter_acrylic.AcrylicEffect _acrylicEffect =
      flutter_acrylic.AcrylicEffect.disabled;
  flutter_acrylic.AcrylicEffect get acrylicEffect => _acrylicEffect;
  set acrylicEffect(flutter_acrylic.AcrylicEffect acrylicEffect) {
    _acrylicEffect = acrylicEffect;
    notifyListeners();
  }*/
}

AccentColor get systemAccentColor {
  if (defaultTargetPlatform == TargetPlatform.windows ||
      defaultTargetPlatform == TargetPlatform.android ||
      kIsWeb) {
    return AccentColor('normal', {
      'darkest': SystemTheme.accentInstance.darkest,
      'darker': SystemTheme.accentInstance.darker,
      'dark': SystemTheme.accentInstance.dark,
      'normal': SystemTheme.accentInstance.accent,
      'light': SystemTheme.accentInstance.light,
      'lighter': SystemTheme.accentInstance.lighter,
      'lightest': SystemTheme.accentInstance.lightest,
    });
  }
  return Colors.blue;
}
