import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("Dice Game"),
          ),
          body: DicePage(),
      ),
    )
  );
}

class MgMg extends StatelessWidget {
  MgMg({Key? key}) : super(key: key);
  String name = "This is Mg Mg Widget";

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      padding: EdgeInsets.all(8.0),
      margin: EdgeInsets.all(8.0),
      child: Text(name),
    );
  }
}


class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  // declaring varaible
  int diceOneNumber = 1;
  int diceTwoNumber = 1;
  int sum = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("$sum Points", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 36),),
        ),
        Row(
          children: [
            Expanded(
                child: TextButton(
                    onPressed: () {
                      generateRandomDice();
                    },
                    child: Image(image: AssetImage("assets/images/dice-$diceOneNumber.png"),)
                )
            ),
            Expanded(
                child: TextButton(
                    onPressed: () {
                      generateRandomDice();
                    },
                    child: Image(image: AssetImage("assets/images/dice-$diceTwoNumber.png"),)
                )
            )
          ],
        ),
      ],
    );
  }

  void generateRandomDice(){


    setState(() {
      diceOneNumber = Random().nextInt(6);
      diceOneNumber = diceOneNumber + 1;
      print("diceOneNumber is $diceTwoNumber");

      diceTwoNumber = Random().nextInt(6);
      diceTwoNumber = diceTwoNumber + 1;
      print("diceTwoNumber is $diceTwoNumber");

      sum = diceOneNumber + diceTwoNumber;
    });
  }
}


