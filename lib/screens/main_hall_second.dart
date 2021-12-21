import 'package:besomar/backend/player.dart';
import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/backend.dart';
import 'package:provider/provider.dart';

// The Main Hall second floor screen.

class MainHallSecondStairs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);
    Player player = Provider.of<Player>(context);

    bool hasVisited = visited.hasVisited('MainHallSecondStairs');
    visited.addVisit('MainHallSecondStairs');
    bool hasItem = player.hasItem('ornamentKey');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main_second_stairs.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            player.hasItem('ornamentKey')
                ? RouteButton(
                    routeText: Text(
                      'Open double door',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => MasterOffice()));
                    },
                  )
                : Container(
                    alignment: Alignment.topCenter,
                    child: InspectButton(
                      itemName: Text(
                        'Open double door',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                      ),
                      title: Text(
                        'Locked',
                        style: TextStyle(color: Colors.grey, fontSize: 35.0),
                        textAlign: TextAlign.center,
                      ),
                      content: Text(
                        'The door is locked.'
                        '\n\n"I will have to find a key."',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Go to the right side of the balcony',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallSecondRight()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RouteButton(
                routeText: Text(
                  'Go to the left side of the balcony',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallSecondLeft()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'You walk up the stairs to the second floor of the main hall.'
                      '\nThere is a large double door right in front of you and balconies \nto the sides overlooking the first floor.'
                      '\n\n“Those doors look like they could lead somewhere important.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back downstairs',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
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
