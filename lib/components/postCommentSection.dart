import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/postFooter.dart';

import '../helpers/constants.dart';
import 'postHeader.dart';

class PostCommentSection extends StatelessWidget {
  const PostCommentSection({
    super.key,
    required this.theme,
  });

  final ColorScheme theme;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: spacing),
          child: Row(
            children: [
              const CircleAvatar(
                  radius: 11,
                  foregroundImage: NetworkImage(
                      "https://i.picsum.photos/id/1013/4256/2832.jpg?hmac=UmYgZfqY_sNtHdug0Gd73bHFyf1VvzFWzPXSr5VTnDA")),
              const SizedBox(
                width: spacing / 1.5,
              ),
              RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.labelLarge,
                      text: "Liked by ",
                      children: [
                    const TextSpan(
                      text: "criag_love33 ",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                    TextSpan(
                        text: "and ",
                        style: Theme.of(context).textTheme.labelLarge),
                    const TextSpan(
                      text: "22 others",
                      style:
                          TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                    ),
                  ]))
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8, left: spacing, right: spacing),
          child: Row(
            children: [
              const Text(
                "ponting_23",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
              ),
              const SizedBox(
                width: spacing / 1.5,
              ),
              Expanded(
                child: Text(
                  "The game in Japan was amazing and I want to share some photos",
                  style: Theme.of(context).textTheme.labelLarge,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: spacing, right: spacing, top: 8),
          child: Text(
            "View all 22 comments",
            style: TextStyle(color: Colors.grey.shade600),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: spacing, right: spacing, top: 8),
          child: Text(
            "2 hours ago",
            style: TextStyle(color: Colors.grey.shade600, fontSize: 10),
          ),
        )
      ],
    );
  }
}
