import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SensitiveIcon extends StatefulWidget {
  bool isActive = false;

  @override
  State<StatefulWidget> createState() {
    return _SensitiveIconState();
  }
}

class _SensitiveIconState extends State<SensitiveIcon> {
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
