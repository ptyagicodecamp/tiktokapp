import 'package:flutter/material.dart';
import 'package:tiktokapp/part1/bottom_nav_bar.dart';
import 'package:tiktokapp/part1/pages/main_page.dart';
import 'package:tiktokapp/part1/widgets/header_widgets.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            HomeScreen(),
            BottomNavigation(),
            header(),
            search(),
          ],
        ),
      ),
    );
  }
}
