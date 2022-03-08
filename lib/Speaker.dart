import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Speaker extends StatefulWidget {
  bool isActive = false;

  @override
  State<StatefulWidget> createState() {
    return _SpeakerState();
  }
}

class _SpeakerState extends State<Speaker> {
  bool isActive = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      iconSize: 50,
      onPressed: () {
        setState(() {
          isActive = !isActive;
        });
      },
      icon: isActive
          ? const Icon(
              Icons.volume_up_sharp,
              color: Colors.green,
            )
          : const Icon(
              Icons.volume_off_sharp,
              color: Colors.red,
            ),
    );
  }
}
