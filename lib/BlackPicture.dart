import 'package:flutter/cupertino.dart';

import 'Rotatable.dart';

class BlackPicture extends RotatableWidget {
  BlackPicture(deg) {
    this.deg = deg;
  }

  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: AlwaysStoppedAnimation(deg / 360),
        child: Image(
          image: AssetImage('assets/images/black_picture.png'),
          width: 100,
        ));
  }
}
