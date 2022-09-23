import 'package:flutter/material.dart';
import 'package:status_view/status_view.dart';

class StatusBar extends StatefulWidget {
  const StatusBar({super.key});

  @override
  State<StatusBar> createState() => _StatusBarState();
}

class _StatusBarState extends State<StatusBar> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      height: 114,
      child: ListView.builder(
          itemCount: obje.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            var item = obje[index];
            return GestureDetector(
              onTap: () {
                item['seen'] = 1;
                setState(() {});
              },
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Column(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                        child: StatusView(
                          radius: 37,
                          spacing: 15,
                          strokeWidth: 2,
                          indexOfSeenStatus: item['seen']!,
                          numberOfStatus: 1,
                          padding: 4,
                          seenColor: Colors.grey,
                          unSeenColor: Colors.pinkAccent,
                          centerImageUrl: item['image']!,
                        ),
                      ),
                      // Container(
                      //   margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                      //   height: 70,
                      //   width: 70,
                      //   decoration: const BoxDecoration(
                      //       shape: BoxShape.circle, color: Colors.green),
                      //   child: ClipRRect(
                      //     borderRadius: BorderRadius.circular(50),
                      //     child: Image(
                      //         fit: BoxFit.cover,
                      //         image: NetworkImage(item['image']!)),
                      //   ),
                      // ),
                      Container(
                          width: 70,
                          alignment: Alignment.center,
                          child: Text(
                            index == 0 ? "Your story" : item["name"]!,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            style: TextStyle(fontSize: 12),
                          ))
                    ],
                  ),
                  item['live']
                      ? Positioned(
                          bottom: 25,
                          child: Container(
                            alignment: Alignment.center,
                            height: 20,
                            width: 35,
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color: theme.onPrimary, width: 1.5),
                                gradient: const LinearGradient(
                                    begin: Alignment.centerLeft,
                                    end: Alignment.bottomRight,
                                    colors: [
                                      Color(0xffC90083),
                                      Color(0xffD22463),
                                      Color(0xffE10038)
                                    ]),
                                borderRadius: BorderRadius.circular(4)),
                            child: const Text(
                              "LIVE",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600),
                            ),
                          ),
                        )
                      : Container()
                ],
              ),
            );
          }),
    );
  }

  List<Map<String, dynamic>> obje = [
    {
      "name": "You",
      "seen": 0,
      "live": false,
      "image":
          "https://i.picsum.photos/id/1013/4256/2832.jpg?hmac=UmYgZfqY_sNtHdug0Gd73bHFyf1VvzFWzPXSr5VTnDA"
    },
    {
      "name": "Samantha",
      "seen": 0,
      "live": false,
      "image":
          "https://i.picsum.photos/id/1054/3079/1733.jpg?hmac=Rk5_Xt3oLlDLJHH3ZDyHCqua0s45mhNjXmID277ZOMI"
    },
    {
      "name": "John",
      "seen": 0,
      "live": true,
      "image":
          "https://i.picsum.photos/id/1042/3456/5184.jpg?hmac=5xr8Veg2D_kEQQO6rvGj_Yk8s_N4iq3-eZ9_KclSXNQ"
    },
    {
      "name": "Kate",
      "seen": 0,
      "live": false,
      "image":
          "https://i.picsum.photos/id/1035/5854/3903.jpg?hmac=DV0AS2MyjW6ddofvSIU9TVjj1kewfh7J3WEOvflY8TM"
    },
    {
      "name": "Ramke",
      "seen": 0,
      "live": false,
      "image":
          "https://i.picsum.photos/id/1039/6945/4635.jpg?hmac=tdgHDygif2JPCTFMM7KcuOAbwEU11aucKJ8eWcGD9_Q"
    },
    {
      "name": "Kane Kite",
      "seen": 0,
      "live": false,
      "image":
          "https://i.picsum.photos/id/1033/2048/1365.jpg?hmac=zEuPfX7t6U866nzXjWF41bf-uxkKOnf1dDrHXmhcK-Q"
    },
  ];
}
