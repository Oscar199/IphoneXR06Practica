import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  Expanded construirTecla({Color color, int numeroAudio, MaterialColor Colors}){
    return Expanded(
      child:FlatButton(
        color: color,
        onPressed: (){
          reproducirAudio(numeroAudio);
        },
      ),
    );
  }

  void reproducirAudio( int numeroNota){
    final player = AudioCache();
    player.play("note$numeroNota.wav");
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
             construirTecla(color:Colors.red,numeroAudio: 1),
              construirTecla(color:Colors.orange,numeroAudio: 2),
              construirTecla(color:Colors.yellow,numeroAudio: 3),
              construirTecla(color:Colors.green,numeroAudio: 4),
              construirTecla(color:Colors.teal,numeroAudio: 5),
              construirTecla(color:Colors.blue,numeroAudio: 6),
              construirTecla(color:Colors.purple,numeroAudio: 7),
            ],
          ),
          ),
        ),
      );
  }
}
