import 'package:flutter/material.dart';

import '../helpers/constants.dart';

class PostFooter extends StatelessWidget {
  const PostFooter({
    super.key,
    required this.theme,
  });

  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(spacing),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              SizedBox(
                height: 27,
                width: 27,
                child: Image(
                  image: const AssetImage("assets/images/Like.png"),
                  color: theme.primary,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                height: 27,
                width: 27,
                child: Image(
                  image: const AssetImage("assets/images/Comment.png"),
                  color: theme.primary,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              SizedBox(
                height: 27,
                width: 27,
                child: Image(
                  image: const AssetImage("assets/images/Messanger.png"),
                  color: theme.primary,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 27,
            width: 27,
            child: Image(
              image: const AssetImage("assets/images/Save.png"),
              color: theme.primary,
            ),
          ),
        ],
      ),
    );
  }
}
