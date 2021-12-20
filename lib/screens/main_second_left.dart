import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The left side of the main hall second floor.

class MainHallSecondLeft extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('MainHallSecondLeft');
    visited.addVisit('MainHallSecondLeft');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_second_left.jpg'),
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
                  'Go through second door',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MasterBedroom()));
                },
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: RouteButton(
                routeText: Text(
                  'Go through first door',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Bedroom()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'Two more doors on this balcony.'
                      '\n„Did my father live here when he was younger?“'
                      '\n„I have not seen a single picture of him.“',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back to the top of the stairs',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallSecondStairs()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
