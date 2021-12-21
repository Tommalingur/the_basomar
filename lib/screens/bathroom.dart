import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The bathroom.

class Bathroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Bathroom');
    visited.addVisit('Bathroom');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bathroom.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.topLeft,
              child: InspectButton(
                itemName: Text(
                  'Look in the bathtub',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Bathtub',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'You slowly investigate the bathtub, half expecting something horrible down there like in all the movies.'
                  '\n\nBut it’s just an old copper bathtub.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InspectButton(
                itemName: Text(
                  'Investigate cupboards under the sink ',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Bathroom cupboards',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is nothing in here other than old towels and some cleaning supplements.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'It’s a bathroom.'
                      '\nThe smell in here is awful.'
                      '\n\n“I guess the plumbing has seen better days.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back to the Main Hall',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
