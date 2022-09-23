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
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;

    return Scaffold(
      backgroundColor: theme.onPrimary,
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
              itemCount: 2,
              itemBuilder: (context, index) {
                return Column(children: [
                  const PostHeader(),
                  const Image(
                    image: NetworkImage(
                        "https://i.picsum.photos/id/1055/5472/3648.jpg?hmac=1c293cGVlNouNQsjxT8y3nsYO-7qLCaOBEGvih0ibEU"),
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
}
