import 'package:flutter/material.dart';
import 'package:tiktokapp/part1/widgets/comments.dart';
import 'package:tiktokapp/part1/widgets/spinner_animation.dart';
import 'package:tiktokapp/part1/widgets/tik_tok_icons_icons.dart';
import 'package:tiktokapp/part1/widgets/audio_spinner_icon.dart';
import 'package:tiktokapp/part1/widgets/user_profile.dart';
import 'package:tiktokapp/part1/widgets/video_desc.dart';

Widget sideNavigationBar(BuildContext buildContext) {
  return Container(
    child: Row(
      children: <Widget>[
        Expanded(flex: 5, child: videoDescription()),
        Expanded(
          flex: 1,
          child: Container(
            padding: EdgeInsets.only(bottom: 60, right: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                userAvatar(),
                buildAction(icon: TikTokIcons.heart, label: "15k"),
                buildCommentsAction(
                  buildContext,
                  icon: TikTokIcons.chat_bubble,
                  label: "15",
                ),
                buildAction(
                  icon: TikTokIcons.reply,
                  label: "Share",
                ),
                SpinnerAnimation(
                  body: audioSpinner("assets/images/icons8-avatar-96.png"),
                )
              ],
            ),
          ),
        )
      ],
    ),
  );
}

buildCommentsAction(BuildContext context, {IconData icon, String label}) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: () {
            showModalBottomSheet(
                context: context, builder: (context) => Comments());
          },
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Text(
            label ?? "",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        )
      ],
    ),
  );
}

Widget buildAction({IconData icon, String label, Future<dynamic> action}) {
  return Padding(
    padding: EdgeInsets.only(top: 10, bottom: 10),
    child: Column(
      children: <Widget>[
        IconButton(
          icon: Icon(icon),
          color: Colors.white,
          onPressed: () => action.catchError((error) => print(error)),
        ),
        Padding(
          padding: EdgeInsets.only(top: 5.0, bottom: 5.0),
          child: Text(
            label ?? "",
            style: TextStyle(fontSize: 10, color: Colors.white),
          ),
        )
      ],
    ),
  );
}
