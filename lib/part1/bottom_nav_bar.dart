import 'package:flutter/material.dart';
import 'package:tiktokapp/part1/widgets/tik_tok_icons_icons.dart';

class BottomNavigation extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _BottomNavigation();
}

class _BottomNavigation extends State<BottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Divider(
          height: 2,
          color: Colors.grey[700],
        ),
        Container(
          height: 47,
          color: Colors.transparent,
          child: Padding(
            padding: EdgeInsets.only(top: 7),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        TikTokIcons.home,
                        color: Colors.white,
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text(
                          "Home",
                          style: TextStyle(fontSize: 8.5, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(
                        TikTokIcons.search,
                        color: Colors.white,
                        size: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 2.0),
                        child: Text(
                          "Discover",
                          style: TextStyle(fontSize: 8.5, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Container(
                          width: 45.0,
                          height: 32.0,
                          child: Stack(children: [
                            Container(
                                margin: EdgeInsets.only(left: 10.0),
                                width: 100,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 250, 45, 108),
                                    borderRadius: BorderRadius.circular(9))),
                            Container(
                                margin: EdgeInsets.only(right: 10.0),
                                width: 200,
                                decoration: BoxDecoration(
                                    color: Color.fromARGB(255, 32, 211, 234),
                                    borderRadius: BorderRadius.circular(9))),
                            Center(
                                child: Container(
                              height: double.infinity,
                              width: 38,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(9)),
                              child: Icon(
                                Icons.add,
                                size: 20.0,
                              ),
                            )),
                          ]))
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(TikTokIcons.messages, color: Colors.white, size: 20),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          "Inbox",
                          style: TextStyle(fontSize: 8.5, color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    children: <Widget>[
                      Icon(TikTokIcons.profile, color: Colors.white, size: 20),
                      Padding(
                        padding: EdgeInsets.only(top: 2),
                        child: Text(
                          "Me",
                          style: TextStyle(fontSize: 8.5, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
