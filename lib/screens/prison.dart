import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

// TODO: Add story text.

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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: RouteButton(
                routeText: Text(
                  'Break the crystal prison',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {},
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
          ],
        ),
      ),
    );
  }
}
