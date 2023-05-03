import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(const XylophoneApp());

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({super.key});

  void playSound(int i){
    final player = AudioPlayer();
    player.play(AssetSource('audio/note$i.wav'));
  }
  Expanded createButton(MaterialColor keyColor,noteNum){
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: keyColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.zero,
            )
        ),
        onPressed: (){
          playSound(noteNum);
        },
        child: const Text(
            ''
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              createButton(Colors.red, 1),
              createButton(Colors.orange, 2),
              createButton(Colors.yellow, 3),
              createButton(Colors.green, 4),
              createButton(Colors.teal, 5),
              createButton(Colors.blue, 6),
              createButton(Colors.purple, 7),
            ],
          ),
        ),
      ),
    );
  }
}