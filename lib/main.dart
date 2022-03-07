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
          child: Stack(
            alignment: Alignment.center,
            children: const <Widget>[
              Icon(Icons.adjust, size: 150, color: Colors.redAccent),
              Icon(Icons.adjust, size: 100, color: Colors.amber),
              Icon(Icons.adjust, size: 50, color: Colors.teal),
              Positioned(
                  top: 100,
                  child: Text('TEST', style: TextStyle(fontSize: 30))),
            ],
          )),
    ),
  ));
}
