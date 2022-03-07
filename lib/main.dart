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
    body: Container(
      decoration: const BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.all(Radius.circular(30)),
      ),
      width: 300,
      height: 300,
      padding: const EdgeInsets.only(left: 30, top: 30),
      margin: const EdgeInsets.only(left: 30, top: 30),
      child: const Text(
        'Text',
        style: TextStyle(fontSize: 30, color: Colors.greenAccent),
      ),
    ),
  )));
}
