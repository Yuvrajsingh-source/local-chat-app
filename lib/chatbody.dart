import 'package:flutter/material.dart';

import 'chatmessage.dart';

class chatbody extends StatefulWidget {
  @override
  _chatbodyState createState() => _chatbodyState();
}

class _chatbodyState extends State<chatbody> {
  TextEditingController _controller = TextEditingController();
  List<chatmessage> _message = <chatmessage>[];
  void _handleSubmitted(String text) {
    _controller.clear();
    chatmessage message = new chatmessage(
      text: text,
    );
    setState(() {
      _message.insert(0, message);
    });
  }

  Widget _composer() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 19.0),
      child: Row(
        children: [
          new Flexible(
            child: TextField(
              decoration:
                  InputDecoration.collapsed(hintText: "Enter a message"),
              controller: _controller,
              onSubmitted: _handleSubmitted,
            ),
          ),
          IconTheme(
            data: IconThemeData(color: Colors.cyanAccent),
            child: new Container(
              child: IconButton(
                icon: Icon(Icons.send),
                onPressed: () => _handleSubmitted(_controller.text),
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: [
        new Flexible(
          child: new ListView.builder(
            padding: new EdgeInsets.all(8.0),
            reverse: true,
            itemBuilder: (_, int index) => _message[index],
            itemCount: _message.length,
          ),
        ),
        new Divider(height: 1.0),
        new Container(
          decoration: new BoxDecoration(
            color: Theme.of(context).cardColor,
          ),
          child: _composer(),
        )
      ],
    );
  }
}
