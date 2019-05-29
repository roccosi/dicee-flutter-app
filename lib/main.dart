import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text(
            'Dicee',
            style: TextStyle(
                color: Colors.red,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.0),
          ),
          backgroundColor: Colors.white,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void rollTheDice() {
    setState(() {
      leftDiceNumber = Random().nextInt(6) + 1;
      rightDiceNumber = Random().nextInt(6) + 1;
    });

    print('$leftDiceNumber & $rightDiceNumber');
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      highlightColor: Colors.white,
      splashColor: Colors.transparent,
      onTap: () {
        setState(() {
          rollTheDice();
        });
      },
      child: Center(
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$leftDiceNumber.png'),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//@override
//Widget build(BuildContext context) {
//  return Center(
//    child: Row(
//      children: <Widget>[
//        Expanded(
//          child: Padding(
//            padding: const EdgeInsets.all(16.0),
//            child: Image.asset('images/dice$leftDiceNumber.png'),
//          ),
//        ),
//        Expanded(
//          child: Padding(
//            padding: const EdgeInsets.all(16.0),
//            child: Image.asset('images/dice$rightDiceNumber.png'),
//          ),
//        ),
//      ],
//    ),
//  );
//}
//}
