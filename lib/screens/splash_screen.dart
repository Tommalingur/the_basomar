import 'package:besomar/screens/pre_story.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';
import 'package:besomar/widgets/widgets.dart';

// The splash screen for the game.
// TODO: Change the background picture.
// TODO: Change the logo picture.
// TODO: Change the letter style to something that fits better.

// Replaced Elevated button with route button widget from the newly created route_button.dart

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    player.loop('asset/audio/menu.wav');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bones.jpg'),
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
                    fontFamily: 'Padauk',
                    color: Colors.white,
                    fontSize: 35.0,
                  ),
                ),
                RouteButton(
                  routeText: Text(
                    'START',
                    style: TextStyle(color: Colors.grey, fontSize: 20),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => PreStory()));
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
