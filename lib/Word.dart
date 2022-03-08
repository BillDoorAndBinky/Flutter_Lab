import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Word extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: AlwaysStoppedAnimation(15 / 360),
        child: Text(
          'Malevich',
          style: TextStyle(
              fontSize: 30,
              fontFamily: 'DancingScript',
              color: Colors.blueAccent),
        ));
  }
}
