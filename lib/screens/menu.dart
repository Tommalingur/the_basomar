import 'package:besomar/screens/intro.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The splash screen for the game.

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
                Image.asset(
                  'images/title.jpg',
                  scale: 1.5,
                ),
                RouteButton(
                  routeText: Text(
                    'START',
                    style: TextStyle(color: Colors.grey, fontSize: 30),
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
