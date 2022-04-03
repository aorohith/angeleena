import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xylophone extends StatelessWidget {
  const Xylophone({Key? key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SafeArea(
        child: Center(
          child: Column(children: [
            Piano(id: 1, clr: Colors.red),
            Piano(id: 2, clr: Colors.blue),
            Piano(id: 3, clr: Colors.green),
            Piano(id: 4, clr: Colors.white),
            Piano(id: 5, clr: Colors.pink),
            Piano(id: 6, clr: Colors.black),
            Piano(id: 7, clr: Colors.grey),
          ]),
        ),
      ),
    );
  }
}

class Piano extends StatelessWidget {
  final id;
  final clr;
  const Piano({ Key? key, required this.id, required this.clr }) : super(key: key);
  makeNoice(id){
    final player = AudioCache(prefix: "assets/audios/");
    player.play('note$id.wav');
  }
  @override
  Widget build(BuildContext context) {
    return Expanded(
              child: SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                
                  style: ElevatedButton.styleFrom(primary: clr,) ,
                  onPressed: () {
                    makeNoice(id);
                  },
                  child: Text(""),
                ),
              ),
            );
  }
}

