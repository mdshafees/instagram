import 'package:flutter/material.dart';
import 'package:flutter_application_1/helpers/constants.dart';

import 'home.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  var selectedTab = 0;
  PageController pageController = PageController(
    initialPage: 0,
    keepPage: true,
  );
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return Scaffold(
      backgroundColor: theme.onPrimary,
      body: PageView(
          controller: pageController,
          physics: NeverScrollableScrollPhysics(),
          children: [
            const HomeScreen(),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
            ),
            Container(
              color: Colors.black,
            ),
          ]),
      bottomNavigationBar: Container(
          height: 70,
          decoration: BoxDecoration(
              border: Border(
                  top: BorderSide(color: Colors.black.withOpacity(0.2)))),
          padding: EdgeInsets.only(bottom: spacing),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              BottomIcon(
                image: 'assets/images/home.png',
                selectedImage: "assets/images/homeFill.png",
                isSelected: selectedTab == 0,
                callbackAction: () {
                  selectedTab = 0;
                  setState(() {});
                  callbackFun();
                },
              ),
              BottomIcon(
                image: 'assets/images/search.png',
                selectedImage: "assets/images/searchFill.png",
                isSelected: selectedTab == 1,
                callbackAction: () {
                  selectedTab = 1;
                  setState(() {});
                  callbackFun();
                },
              ),
              BottomIcon(
                image: 'assets/images/add.png',
                isSelected: selectedTab == 2,
                callbackAction: () {
                  selectedTab = 2;
                  setState(() {});
                  callbackFun();
                },
              ),
              BottomIcon(
                image: 'assets/images/Like.png',
                selectedImage: "assets/images/likeFill.png",
                isSelected: selectedTab == 3,
                callbackAction: () {
                  selectedTab = 3;
                  setState(() {});
                  callbackFun();
                },
              ),
              BottomIcon(
                image: 'assets/images/Comment.png',
                isSelected: selectedTab == 4,
                callbackAction: () {
                  selectedTab = 4;
                  setState(() {});
                  callbackFun();
                },
              ),
            ],
          )),
    );
  }

  callbackFun() {
    return pageController.animateToPage(selectedTab,
        duration: Duration(milliseconds: 500), curve: Curves.ease);
  }
}
