import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The left side corridor of the Main Hall.

// Created the left side corridor of the Main Hall.

// TODO: Maybe create some things to interact with.
// TODO: Add story text.

class MainHallFirstLeftCorridor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('MainHallLeftRightCorridor');
    visited.addVisit('MainHallLeftRightCorridor');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_first_corridor_left.jpg'),
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
                      'Here there will be a story text',
                      style: TextStyle(color: Colors.grey, fontSize: 20),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RouteButton(
                routeText: Text(
                  'Go back',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstLeft()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Go through the door on the western wall',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bathroom()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Go through the door on the northern wall',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => DiningHall()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
