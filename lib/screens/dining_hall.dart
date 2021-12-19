import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The dining hall.

// TODO: Create items to interact with.

class DiningHall extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('DiningHall');
    visited.addVisit('DiningHall');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dining_hall.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'You are standing in a huge dining hall.'
                      '\nThere are pictures on the wall of a man and a woman.'
                      '\n„It probably seated about twenty people in its heyday. “'
                      '\nThere are two doors. \nThe one you came in and on identical on the other side of the room.'
                      '\nIt must lead to the other side of the main hall.',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RouteButton(
                routeText: Text(
                  'Go back to the Main Hall',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstLeftCorridor()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Go back to the Main Hall',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstRightCorridor()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
