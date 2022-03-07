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
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.baseline,
        children: const <Widget>[
          Icon(Icons.adjust, size: 30, color: Colors.teal),
          Icon(Icons.adjust, size: 50, color: Colors.redAccent),
          Icon(Icons.adjust, size: 30, color: Colors.teal),
        ],
      ),
    ),
  )));
}
