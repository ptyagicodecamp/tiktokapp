import 'package:flutter/material.dart';

Widget header() {
  return Container(
    margin: EdgeInsets.only(top: 40),
    height: 50.0,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: Text(
            "Following",
            style: TextStyle(
                color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),
          ),
        ),
        SizedBox(
          width: 5,
        ),
        Padding(
          padding: EdgeInsets.only(left: 0, right: 10),
          child: Text(
            "For You",
            style: TextStyle(
                fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
      ],
    ),
  );
}

Widget search() {
  return Container(
    margin: EdgeInsets.only(top: 40, left: 320, right: 10),
    height: 50.0,
    child: Padding(
      padding: EdgeInsets.only(left: 30),
      child: IconButton(
        icon: Icon(
          Icons.search,
          color: Colors.white,
          size: 30,
        ),
      ),
    ),
  );
}
