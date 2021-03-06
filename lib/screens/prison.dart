import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

class Prison extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Prison');
    visited.addVisit('Prison');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/prison.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Hit the crystal with the stone',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrisonTwo()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'You stand in a room that used to be a cellar. Now it is some kind of a prison.'
                      '\nThere are strange, crumbled pillars in the room and a pedestal in the middle.'
                      '\nOn the pedestal there is a large crystal and at first you don’t notice the bodies.'
                      '\nYou look down to the floor and a terrifying image lies before you.'
                      '\nThere are four bodies on the floor. Three of them horribly mangled.'
                      '\nThe fourth has its throat cut and is holding a bloody knife.'
                      '\n\n“Did he do this to himself?”'
                      '\n\nIt’s then that you notice your father. Trapped inside the crystal.'
                      '\nYou don’t even think, you grab a large stone from one of the pillars and start smashing the crystal.'
                      '\n\n“HOLD ON DAD, I’M COMING FOR YOU!”',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
