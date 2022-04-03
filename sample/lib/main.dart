import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int indx1 = 1;
  int indx2 = 1;
  @override
  Widget build(BuildContext context) {
    
    return Container(
        child: Center(
          child: Row  (
      children: [
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              onPressed: (){
                setState(() {
                  indx1 = Random().nextInt(6)+1;
                  indx2 = Random().nextInt(6)+1;
                });
              },
              child:Image.asset("assets/images/dice$indx1.png")),
            ),
          Expanded(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(primary: Colors.red) ,
              onPressed: (){
                setState(() {
                  indx1 = Random().nextInt(6)+1;
                  indx2 = Random().nextInt(6)+1;
                });
              },child: Image.asset("assets/images/dice$indx2.png")),
            ),
      ],
    ),
        ));
  }
}
