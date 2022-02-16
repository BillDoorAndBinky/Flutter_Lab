import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: const Text(
        "Проект студента группы 521828",
        style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            shadows: [Shadow(color: Colors.black, blurRadius: 30)]),
      ),
    ),
    body: Center(
      child: Column(children: <Widget>[
        FloatingActionButton(
          tooltip: 'Click this pls!',
          onPressed: () {},
          child: const Icon(Icons.desktop_windows),
        ),
        FloatingActionButton(
          tooltip: 'No click this!',
          onPressed: () {},
          child: const Icon(Icons.laptop),
        ),
      ]),
    ),
  )));
}
