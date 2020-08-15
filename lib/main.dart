import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
// add it to your class as a static member
    final player = AudioCache();
    // call this method when desired
    player.play('note$soundNumber.wav');
  }

  Container buildKey({int number, Color color}) {
    return Container(
      width: 125,
      height: 100,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
        child: Expanded(
          child: FlatButton(
            color: color,
            onPressed: () {
              playSound(number);
            },
            child: null,
          ),
        ),
      ),
    );
  }

  Color randomColor() {
    return Color((math.Random().nextDouble() * 0xFFFFFF).toInt())
        .withOpacity(1.0);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Wrap(
            direction: Axis.vertical,
            alignment: WrapAlignment.end,
            runSpacing: 10,
            spacing: 10,
            children: [
              buildKey(number: 1, color: Colors.red),
              buildKey(number: 2, color: Colors.orange),
              buildKey(number: 3, color: Colors.yellow),
              buildKey(number: 4, color: Colors.green),
              buildKey(number: 5, color: Colors.blue),
              buildKey(number: 6, color: Colors.indigo),
              buildKey(number: 7, color: Colors.purple),
              buildKey(number: 8, color: randomColor()),
              buildKey(number: 9, color: randomColor()),
              buildKey(number: 10, color: randomColor()),
              buildKey(number: 11, color: randomColor()),
              buildKey(number: 12, color: randomColor()),
              buildKey(number: 13, color: randomColor()),
              buildKey(number: 14, color: randomColor()),
              buildKey(number: 15, color: randomColor()),
              buildKey(number: 16, color: randomColor()),
              buildKey(number: 17, color: randomColor()),
              buildKey(number: 18, color: randomColor()),
              buildKey(number: 19, color: randomColor()),
              buildKey(number: 20, color: randomColor()),
              buildKey(number: 21, color: randomColor()),
            ],
          ),
        ),
      ),
    );
  }
}
