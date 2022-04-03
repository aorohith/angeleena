import 'dart:math';

import 'package:flutter/material.dart';

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
        child: Row(
          children: [
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      indx1 = Random().nextInt(6) + 1;
                      indx2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("assets/images/dice$indx1.png")),
            ),
            Expanded(
              child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      indx1 = Random().nextInt(6) + 1;
                      indx2 = Random().nextInt(6) + 1;
                    });
                  },
                  child: Image.asset("assets/images/dice$indx2.png")),
            ),
          ],
        ),
      ),
    );
  }
}