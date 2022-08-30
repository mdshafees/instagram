import 'package:flutter/material.dart';
import 'package:flutter_application_1/state/provider.dart';
import 'package:provider/provider.dart';
import '../screens/initial.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider<ThemeManagement>(create: (_) => ThemeManagement())
  ], child: const InitialScreen()));
}
