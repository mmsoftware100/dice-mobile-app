import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: DicePage(),
    ),
  ));
}
class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
              child: Image(image: AssetImage('assets/images/dice-1.png'),)
          ),
          Expanded(
              child: Image(image: AssetImage('assets/images/dice-2.png'),)
          )
        ],
      ),
    );
  }
}

