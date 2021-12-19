import 'package:besomar/screens/screens.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The Garden screen.
// TODO: Change the background picture.

class FrontDoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/front_door.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Container(
              child: StoryBox(
                storyText: Text(
                  'The floorboards on the deck creak under your steps as you walk to the front door.'
                  '\nIt has an old, rusted doorknob in the shape of a lion.'
                  '\nLooks like nobbody has lived here for decades.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 35),
                ),
              ),
            ),
            Container(
              child: RouteButton(
                routeText: Text(
                  'Open front door',
                  style: TextStyle(color: Colors.grey, fontSize: 40),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstFloor()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
