import 'package:besomar/screens/garden.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The pre story screen.

// TODO: Add story text

// Replaced Elevated button with route button widget from the newly created route_button.dart

class PreStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pre_story.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Once upon a time in a galaxy very, very close. \nThere was a guy who wanted to be a programmer. \nThis programmer got an assignement witch he would have to work \nvery hard to achive. \nThe programmer created this screen here so that the player could read the story \nof the game the programmer was creating.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: 'Padauk',
                backgroundColor: Colors.white,
                color: Colors.black,
                fontSize: 20.0,
              ),
            ),
            RouteButton(
              routeText: Text(
                'CONTINUE',
                style: TextStyle(color: Colors.grey, fontSize: 20),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Garden()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
