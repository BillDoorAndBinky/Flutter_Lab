import 'package:flutter/cupertino.dart';

class BlackPicture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RotationTransition(
        turns: AlwaysStoppedAnimation(15 / 360),
        child: Image(image: AssetImage('assets/images/black_picture.png'),width: 100,));
  }
}
