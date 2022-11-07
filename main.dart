import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
//import 'package:english_words/english_words.dart';
//import 'package:audioplayers/audio_cache.dart';


void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void PlaySound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }
  @deprecated
  Expanded buildKey({Color color, int soundNumber }) {
return Expanded(
child: FlatButton(
color: color,
onPressed: () {
  PlaySound(soundNumber);
},
),
);

  }
  @override
  @deprecated

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.red.shade900,soundNumber: 1),
              buildKey(color: Colors.red.shade800,soundNumber: 2),
              buildKey(color: Colors.red.shade600,soundNumber: 3),
              buildKey(color: Colors.red.shade500,soundNumber: 4),
              buildKey(color: Colors.red.shade400,soundNumber: 5),
              buildKey(color: Colors.red.shade300,soundNumber: 6),
              buildKey(color: Colors.red.shade200,soundNumber: 7),
            ],
          ),

    )
    )
    );









  }
}
