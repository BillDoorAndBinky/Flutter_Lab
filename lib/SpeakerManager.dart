import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'Speaker.dart';

class SpeakerManager extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SpeakerManagerState();
  }

  State<StatefulWidget> AddSpeaker() {
    var state = _SpeakerManagerState();
    state.AddSpeaker();
    return state;
  }

  State<StatefulWidget> RemoveLastSpeaker() {
    var state = _SpeakerManagerState();
    state.RemoveLastSpeaker();
    return state;
  }
}

class _SpeakerManagerState extends State<SpeakerManager> {
  List<Speaker> speakers = <Speaker>[];

/*  @protected
  @mustCallSuper
  void initState() {
    speakers = <Speaker>[];
  }*/

  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Current Value: ${speakers.length}",
            style: const TextStyle(fontSize: 30),
          ),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  AddSpeaker();
                });
              },
              child: const Text(
                "Add speaker",
                style: TextStyle(fontSize: 25),
              )),
          ElevatedButton(
              onPressed: () {
                setState(() {
                  RemoveLastSpeaker();
                });
              },
              child: const Text(
                "Remove last speaker",
                style: TextStyle(fontSize: 25),
              )),
          Expanded(
            child: ListView(
                shrinkWrap: true,
                children: speakers), // nested ScrollView
          ),
        ]);
  }

  void AddSpeaker() {
    setState(() {
      speakers.add(Speaker());
    });
  }

  void RemoveLastSpeaker() {
    if (speakers.isEmpty) return;

    setState(() {
      speakers.removeLast();
    });
  }
}
