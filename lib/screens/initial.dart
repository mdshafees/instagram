import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/home.dart';
import 'package:flutter_application_1/screens/login.dart';
import 'package:flutter_application_1/state/provider.dart';
import 'package:provider/provider.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    final isDark = Provider.of<ThemeManagement>(context).isDark;
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: "SF-Pro-Text",
          backgroundColor: Colors.white,
          appBarTheme: AppBarTheme(backgroundColor: Color(0xffFAFAFA)),
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black,
              outline: Color(0xffA6A6AA).withOpacity(0.3),
              onPrimary: Colors.white,
              secondary: Colors.white,
              onSecondary: Colors.purple,
              error: Colors.red,
              onError: Colors.red,
              onBackground: Colors.white,
              background: Colors.white,
              surface: Colors.black.withOpacity(0.4),
              onPrimaryContainer: const Color(0xffFAFAFA),
              onSurface: Colors.black.withOpacity(0.04)),
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: "SF-Pro-Text",
            backgroundColor: Colors.black,
            appBarTheme: AppBarTheme(color: Color(0xff121212)),
            colorScheme: ColorScheme(
                brightness: Brightness.dark,
                outline: Color(0xffFFFFFF).withOpacity(0.1),
                primary: Colors.white,
                onPrimary: Colors.black,
                secondary: Colors.white,
                onSecondary: Colors.purple,
                error: Colors.red,
                onError: Colors.red,
                onBackground: Colors.white,
                background: Colors.white,
                onPrimaryContainer: const Color(0xff121212),
                surface: Colors.white.withOpacity(0.7),
                onSurface: Colors.white.withOpacity(0.08))),
        themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
        home: const LoginScreen());
  }
}

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold();
  }
}
