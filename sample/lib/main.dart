import 'package:flutter/material.dart';
import 'package:sample/dice.dart';
import 'package:sample/xylophone.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text('Dicee Game'),
        ),
        body: Xylophone(),
      ),
    ),
  );
}


