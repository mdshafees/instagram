import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/mainHome.dart';
import '../state/provider.dart';
import 'package:provider/provider.dart';

import 'home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  var nameCon = TextEditingController();
  var passwordCon = TextEditingController();
  bool name = false;
  bool pass = false;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;

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
                  color: theme.primary),
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
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: theme.onSurface),
                          color: theme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: nameCon,
                        decoration: InputDecoration(
                          hintStyle: TextStyle(color: theme.surface),
                          hintText: "Username",
                          contentPadding: const EdgeInsets.only(bottom: 5),
                          border: InputBorder.none,
                        ),
                        onChanged: (newVal) {
                          if (newVal.length > 5) {
                            name = true;
                          } else {
                            name = false;
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Container(
                      height: 44,
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      decoration: BoxDecoration(
                          border: Border.all(color: theme.onSurface),
                          color: theme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(5)),
                      child: TextField(
                        controller: passwordCon,
                        decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: TextStyle(color: theme.surface),
                          contentPadding: const EdgeInsets.only(bottom: 5),
                          border: InputBorder.none,
                        ),
                        onChanged: (newVal) {
                          if (newVal.length > 5) {
                            pass = true;
                          } else {
                            pass = false;
                          }
                          setState(() {});
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 19,
                    ),
                    const Text(
                      "Forgot Password?",
                      style: TextStyle(
                          color: Color(0xff3797EF),
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  if (name && pass) {
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const MainHome()),
                        (route) => true);
                  }
                },
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 16),
                  width: MediaQuery.of(context).size.width,
                  alignment: Alignment.center,
                  height: 44,
                  decoration: BoxDecoration(
                      color:
                          name && pass ? Color(0xff3797EF) : Color(0xff9BCBF7),
                      borderRadius: BorderRadius.circular(5)),
                  child: const Text(
                    "Log in",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () => context.read<ThemeManagement>().changetheme(),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/images/fb.png"),
                      height: 20,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Log in with Facebook",
                      style: TextStyle(
                          color: Color(0xff3797EF),
                          fontWeight: FontWeight.w600),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      height: 1,
                      width: MediaQuery.of(context).size.width,
                      color: theme.onSurface,
                    ),
                    Container(
                      width: 80,
                      alignment: Alignment.center,
                      color: theme.onPrimary,
                      child: Text(
                        "OR",
                        style: TextStyle(
                            color: theme.surface, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Text.rich(TextSpan(
                  text: "Don’t have an account? ",
                  style: TextStyle(color: theme.surface),
                  children: [
                    TextSpan(
                        text: 'Sign up.',
                        recognizer: TapGestureRecognizer()..onTap = () {},
                        style: TextStyle(color: Color(0xff3797EF))),
                  ]))
            ],
          ),
        ),
      ),
    );
  }
}
