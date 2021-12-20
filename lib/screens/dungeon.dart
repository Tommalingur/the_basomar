import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

// TODO: Add story text.

class Dungeon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Dungeon');
    visited.addVisit('Dungeon');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dungeon_corridor.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: RouteButton(
                routeText: Text(
                  'Go through the door at the end of the corridor',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Prison()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'Here there will be a story text',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Back the secret room',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SecretRoom()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
