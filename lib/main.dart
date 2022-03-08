import 'package:flutter/material.dart';

import 'BlackPicture.dart';

void main() {
  runApp(MyFirstApp());
}

class MyFirstApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: MyAppBar(),
        body: MyBody(),
      ),
    );
  }
}

class MyAppBar extends AppBar {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        "Проект студента группы 521828",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(color: Colors.black, blurRadius: 30)]),
      ),
    );
  }
}

class MyBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        BlackPicture(),
        BlackPicture(),
        BlackPicture(),
        RotationTransition(
            turns: AlwaysStoppedAnimation(15 / 360),
            child: Text(
              'Malevich',
              style: TextStyle(
                  fontSize: 30,
                  fontFamily: 'DancingScript',
                  color: Colors.blueAccent),
            )),
      ],
    );
  }
}
