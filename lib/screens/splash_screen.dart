import 'package:flutter/material.dart';
import 'screens.dart';

// The splash screen for the game.
// Note. Images, text styles and other widgets are in a test state. Will change before release.
// Need to add a Textbutton to start the game.
void main() {
  runApp(Menu());
}

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const <Widget>[
              Image(image: AssetImage('images/monster_eye.jpg')),
              Text(
                'THE BESOMAR',
                style: TextStyle(
                  fontFamily: 'RockSalt',
                  color: Colors.white,
                  fontSize: 40.0,
                ),
              ),
              Text(
                'Press any key to start',
                style: TextStyle(
                  fontFamily: 'RockSalt',
                  color: Colors.white,
                  fontSize: 20,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
