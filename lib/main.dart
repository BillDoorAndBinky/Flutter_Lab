import 'package:flutter/material.dart';
import 'package:flutter_lab/Word.dart';

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

class MyBody extends StatefulWidget {
  int value = 0;
  static const int step = 15;

  @override
  State<StatefulWidget> createState() {
    return _MyBodyState();
  }
}

class _MyBodyState extends State<MyBody> {
  int value = 0;
  static const int step = 15;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ElevatedButton(
            onPressed: () {
              setState(() {
                value += step;
                value %= 360;
              });
            },
            child: Text(
              "Click me",
              style: TextStyle(fontSize: 25),
            )),
        Text(
          "Current Value: $value",
          style: const TextStyle(fontSize: 30),
        ),
        BlackPicture(value),
        BlackPicture(value),
        BlackPicture(value),
        Word(value),
      ],
    );
  }
}
