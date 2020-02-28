import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiktokapp/part1/widgets/tik_tok_icons_icons.dart';

class Comments extends StatefulWidget {
  @override
  _CommentsState createState() => _CommentsState();
}

class _CommentsState extends State<Comments> {
  final List<CommentMessage> _messages = <CommentMessage>[
    CommentMessage(
        text:
            "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
        name: "Priyanka")
  ];
  final TextEditingController _textController = new TextEditingController();

  Widget _queryInputWidget(BuildContext context) {
    return Container(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
        child: Row(
          children: <Widget>[
            Flexible(
              child: TextField(
                controller: _textController,
                onSubmitted: _submitComment,
                decoration:
                    InputDecoration.collapsed(hintText: "Add a comment"),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 4.0),
              child: IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => _submitComment(_textController.text)),
            ),
          ],
        ),
      ),
    );
  }

  void _submitComment(String text) {
    _textController.clear();
    CommentMessage message = new CommentMessage(
      text: text,
      name: "Priyanka",
    );
    setState(() {
      _messages.insert(0, message);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: commentsBottomSheet(context),
    );
  }

  //showBottomSheet(context: context, builder: commentsBottomSheet);
  Widget commentsBottomSheet(BuildContext context) {
    return Column(children: <Widget>[
      Padding(
        padding: EdgeInsets.all(8.0),
        child: Center(
          child: Text("${_messages.length} comments"),
        ),
      ),
      Flexible(
          child: ListView.builder(
        padding: EdgeInsets.all(8.0),
        reverse: true, //To keep the latest messages at the bottom
        itemBuilder: (_, int index) => _messages[index],
        itemCount: _messages.length,
      )),
      Divider(height: 1.0),
      Container(
        decoration: new BoxDecoration(color: Theme.of(context).cardColor),
        child: _queryInputWidget(context),
      ),
    ]);
//    List<String> comments = [
//      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. ",
//      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
//    ];
//    var commentsWidget = Container(
//      child: ListView.builder(
//        shrinkWrap: true,
//        itemCount: comments == null ? 0 : comments.length,
//        itemBuilder: (context, index) {
//          return commentTile(context, comments[index]);
//        },
//      ),
//    );
//
//    return Column(
//      mainAxisAlignment: MainAxisAlignment.center,
//      children: <Widget>[
//        commentsWidget,
//      ],
//    );
  }

  Widget commentTile(BuildContext context, String comment) {
    return Container(
      child: Row(
        children: <Widget>[
          Icon(Icons.image),
          Text(comment),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(TikTokIcons.heart),
          )
        ],
      ),
    );
  }
}

class CommentMessage extends StatelessWidget {
  CommentMessage({this.text, this.name});

  final String text;
  final String name;

  List<Widget> otherMessage(context) {
    return <Widget>[
      Container(
        margin: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
            backgroundImage: AssetImage("assets/images/icons8-avatar-96.png")),
      ),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(this.name, style: TextStyle(fontWeight: FontWeight.bold)),
            Container(
              margin: const EdgeInsets.only(top: 5.0),
              child: Text(text),
            ),
          ],
        ),
      ),
      Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          Icon(Icons.thumb_up),
          Text("3"),
        ],
      )
    ];
  }

  List<Widget> actions(context) {
    return <Widget>[
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Icon(Icons.thumb_up),
            Text(this.name, style: Theme.of(context).textTheme.subhead),
          ],
        ),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      child: new Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: otherMessage(context),
      ),
    );
  }
}
