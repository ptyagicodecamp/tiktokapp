import 'package:flutter/material.dart';
import 'package:tiktokapp/part1/widgets/side_navigation.dart';
import 'package:tiktokapp/part1/widgets/home_video_renderer.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        scrollDirection: Axis.vertical,
        itemBuilder: (context, position) {
          return Container(
            color: Colors.black,
            child: Stack(
              children: <Widget>[
                FlutterVideoPlayer(),
                sideNavigationBar(context)
              ],
            ),
          );
        },
        itemCount: 5);
  }
}
