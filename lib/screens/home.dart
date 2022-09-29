import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/components/postCommentSection.dart';
import 'package:flutter_application_1/components/statusList.dart';
import 'package:flutter_application_1/helpers/constants.dart';
import 'package:flutter_application_1/state/provider.dart';
import 'package:provider/provider.dart';
import 'package:status_view/status_view.dart';

import '../components/postFooter.dart';
import '../components/postHeader.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var selectedTab = 0;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.onPrimary,
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
                },
              ),
              BottomIcon(
                image: 'assets/images/search.png',
                selectedImage: "assets/images/searchFill.png",
                isSelected: selectedTab == 1,
                callbackAction: () {
                  selectedTab = 1;
                  setState(() {});
                },
              ),
              BottomIcon(
                image: 'assets/images/add.png',
                isSelected: selectedTab == 2,
                callbackAction: () {
                  selectedTab = 2;
                  setState(() {});
                },
              ),
              BottomIcon(
                image: 'assets/images/Like.png',
                selectedImage: "assets/images/likeFill.png",
                isSelected: selectedTab == 3,
                callbackAction: () {
                  selectedTab = 3;
                  setState(() {});
                },
              ),
              BottomIcon(
                image: 'assets/images/Comment.png',
                isSelected: selectedTab == 4,
                callbackAction: () {
                  selectedTab = 4;
                  setState(() {});
                },
              ),
            ],
          )),
      appBar: AppBar(
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            padding: EdgeInsets.all(16),
            child: Image(
              image: const AssetImage("assets/images/Camera Icon.png"),
              color: theme.primary,
            ),
          ),
        ),
        actions: [
          GestureDetector(
            onTap: () => context.read<ThemeManagement>().changetheme(),
            child: Container(
              padding: const EdgeInsets.all(16),
              child: Image(
                image: const AssetImage("assets/images/IGTV.png"),
                color: theme.primary,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(8, 18, 18, 18),
            child: Image(
              image: const AssetImage("assets/images/Messanger.png"),
              color: theme.primary,
            ),
          ),
        ],
        title: Image(
            image: AssetImage("assets/images/logo.png"),
            width: 125,
            height: 50,
            color: theme.primary),
        elevation: 0,
        bottom: PreferredSize(
            preferredSize: const Size.fromHeight(4.0),
            child: Container(
              color: theme.outline,
              height: 1.0,
            )),
      ),
      body: ListView(
        physics: AlwaysScrollableScrollPhysics(),
        children: [
          const SizedBox(height: spacing),
          const StatusBar(),
          const SizedBox(height: spacing),
          Container(
            color: theme.outline,
            height: 1.0,
          ),
          ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  const PostHeader(),
                  Image(
                    image: NetworkImage(images[index]),
                  ),
                  PostFooter(theme: theme),
                  PostCommentSection(theme: theme),
                  SizedBox(
                    height: padding + 5,
                  )
                ]);
              })
        ],
      ),
    );
  }

  List images = [
    "https://i.picsum.photos/id/1055/5472/3648.jpg?hmac=1c293cGVlNouNQsjxT8y3nsYO-7qLCaOBEGvih0ibEU",
    "https://picsum.photos/300/300/?blur"
  ];
}

class BottomIcon extends StatelessWidget {
  BottomIcon(
      {super.key,
      required this.image,
      this.selectedImage,
      required this.callbackAction,
      required this.isSelected});
  String image;
  VoidCallback callbackAction;
  String? selectedImage;
  bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: InkWell(
      onTap: () {
        callbackAction();
      },
      child: Container(
        height: 70,
        padding: const EdgeInsets.all(spacing * 1.5),
        child: Image(
          image: AssetImage(isSelected ? selectedImage ?? image : image),
          color: Theme.of(context).colorScheme.primary,
        ),
      ),
    ));
  }
}
