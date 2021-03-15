import 'package:flutter/material.dart';

import 'chatbody.dart';

class Homepage extends StatefulWidget {
  Homepage({Key key}) : super(key: key);

  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Frenzy Chat",
                style: TextStyle(color: Colors.black, fontSize: 15))),
        backgroundColor: Colors.cyanAccent,
      ),
      body: new chatbody(),
    );
  }
}
