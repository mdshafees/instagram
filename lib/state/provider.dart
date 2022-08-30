import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class ThemeManagement extends ChangeNotifier {
  var brightness = SchedulerBinding.instance.window.platformBrightness;
  late bool _isdark = brightness == Brightness.dark;
  bool get isDark => _isdark;

  void changetheme() {
    _isdark = !_isdark;
    notifyListeners();
  }
}
