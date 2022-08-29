import 'package:flutter/material.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          brightness: Brightness.light,
          fontFamily: "SF-Pro-Text",
          backgroundColor: Colors.white,
          colorScheme: ColorScheme(
              brightness: Brightness.light,
              primary: Colors.black,
              secondary: Colors.green,
              onSecondary: Colors.purple,
              onPrimary: Colors.white,
              error: Colors.red,
              onError: Colors.red,
              onBackground: Colors.white,
              background: Colors.white,
              surface: Colors.pink,
              onPrimaryContainer: const Color(0xffFAFAFA),
              onSurface: Colors.black.withOpacity(0.04)),
        ),
        darkTheme: ThemeData(
            brightness: Brightness.dark,
            fontFamily: "SF-Pro-Text",
            backgroundColor: Colors.black,
            colorScheme: ColorScheme(
                brightness: Brightness.dark,
                primary: Colors.white,
                secondary: Colors.green,
                onSecondary: Colors.purple,
                onPrimary: Colors.white,
                error: Colors.red,
                onError: Colors.red,
                onBackground: Colors.white,
                background: Colors.white,
                onPrimaryContainer: const Color(0xff121212),
                surface: Colors.pink,
                onSurface: Colors.white.withOpacity(0.08))),
        themeMode: ThemeMode.light,
        home: const SplashScreen());
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
    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                  image: const AssetImage("assets/images/logo.png"),
                  width: 150,
                  color: Theme.of(context).colorScheme.primary),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onSurface),
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 44,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Theme.of(context).colorScheme.onSurface),
                          color:
                              Theme.of(context).colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(5)),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(color: Color(0xff3797EF)),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                width: MediaQuery.of(context).size.width,
                alignment: Alignment.center,
                height: 44,
                decoration: BoxDecoration(
                    color: Color(0xff3797EF),
                    borderRadius: BorderRadius.circular(5)),
                child: const Text(
                  "Log in",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
