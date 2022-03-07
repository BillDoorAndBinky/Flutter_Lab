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
      body: const RotationTransition(
        turns: AlwaysStoppedAnimation(15 / 360),
        child:
            Image(image: AssetImage('assets/images/black_picture.png')),
      ),
    ),
  ));
}
