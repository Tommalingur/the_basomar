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
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/bones.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 70.0, horizontal: 20.0),
          child: Container(
            color: Colors.black,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image(
                  image: AssetImage('images/yellow_eyes.png'),
                ),
                Text(
                  'THE BESOMAR',
                  style: TextStyle(
                    fontFamily: 'RockSalt',
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.pushNamed(context, '/garden'),
                  child: Text('Click here to start'),
                  style: ElevatedButton.styleFrom(
                    primary: Colors.black,
                    textStyle:
                        TextStyle(fontSize: 20.0, fontFamily: 'RockSalt'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
