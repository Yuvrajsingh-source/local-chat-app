import 'package:flutter/material.dart';

import 'Homepage.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Chat App",
      home: Homepage(),
      theme: ThemeData.dark(),
    );
  }
}
