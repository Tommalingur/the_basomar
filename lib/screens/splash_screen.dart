import 'package:flutter/material.dart';
import 'screens.dart';

// The splash screen for the game.
// TODO: Create a button to start the game.
// TODO: Change the background picture.
// TODO: Change the logo picture.
// TODO: Change the letter style to something that fits better.

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(image: AssetImage('images/yellow_eyes.png')),
            Text(
              'THE BESOMAR',
              style: TextStyle(
                fontFamily: 'RockSalt',
                color: Colors.white,
                fontSize: 40.0,
              ),
            ),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/garden'),
              child: Text('Click here to start'),
            ),
          ],
        ),
      ),
    );
  }
}
