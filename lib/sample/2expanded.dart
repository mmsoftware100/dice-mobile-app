import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
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
      ),
    ),
  ));
}
