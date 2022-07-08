import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp( XyloPhone() );
//  => Arrow Function to Specify Function body with Single Line of Instruction

class XyloPhone extends StatelessWidget {
  const XyloPhone({Key? key}) : super(key: key);

  // function for playing sounds
  void playSounds({required int soundNumber}) { // for using which argument go to whom function({int argumentName }) or function(int soundNumber)
    final player = AudioPlayer(); // making audioplayer to play sounds
    player.play(AssetSource("note$soundNumber.wav"));
    player.setVolume(100);
  }

  // For getting away from repeated code of Expanded Widget
  Expanded buildKey({required Color color,required int SoundNumber}){ // return type is Expanded widget and taking color and sound Number as Argument
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSounds(soundNumber: SoundNumber); // for specifying which argument it take or simply use playSounds(soundNumber)
        }, child: Container(),
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
            crossAxisAlignment: CrossAxisAlignment.stretch, // for stretching upto full width
            children:<Widget>[
              buildKey(color: Colors.red,SoundNumber: 1),
              buildKey(color: Colors.orange,SoundNumber: 2),
              buildKey(color: Colors.yellow,SoundNumber: 3),
              buildKey(color: Colors.green,SoundNumber: 4),
              buildKey(color: Colors.teal,SoundNumber: 5),
              buildKey(color: Colors.blue,SoundNumber: 6),
              buildKey(color: Colors.purple,SoundNumber: 7),
            ],
          ),
        ), // for Protecting it from edges of Screen
      ),
    );
  }
}

