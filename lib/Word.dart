import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_lab/Rotatable.dart';

class Word extends RotatableWidget {

  Word(deg) {
    this.deg = deg;
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: AlwaysStoppedAnimation(deg / 360),
        child: Text(
          'Malevich',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'DancingScript',
              color: Colors.blueAccent),
        ));
  }
}
