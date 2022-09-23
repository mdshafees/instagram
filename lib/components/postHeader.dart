import 'package:flutter/material.dart';

class PostHeader extends StatelessWidget {
  const PostHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.fromLTRB(8, 8, 0, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const CircleAvatar(
                  radius: 20,
                  foregroundImage: NetworkImage(
                      "https://i.picsum.photos/id/1013/4256/2832.jpg?hmac=UmYgZfqY_sNtHdug0Gd73bHFyf1VvzFWzPXSr5VTnDA")),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "ponting_23",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text(
                    "Tokyo Japan",
                    style: TextStyle(fontSize: 12),
                  ),
                ],
              )
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.more_horiz))
        ],
      ),
    );
  }
}
