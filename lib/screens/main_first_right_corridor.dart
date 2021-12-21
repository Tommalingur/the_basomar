import 'package:besomar/backend/player.dart';
import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/backend.dart';
import 'package:provider/provider.dart';

// The right side corridor of the Main Hall.

class MainHallFirstRightCorridor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);
    Player player = Provider.of<Player>(context);

    bool hasVisited = visited.hasVisited('MainHallFirstRightCorridor');
    visited.addVisit('MainHallFirstRightCorridor');
    bool hasItem = player.hasItem('secretSwitch');

    return player.hasItem('secretSwitch')
        ? Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/images/main_first_corridor_right_secret.jpg'),
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
                        'Go through the door on the northern wall',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiningHall()));
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: RouteButton(
                      routeText: Text(
                        'Go through the secret door',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SecretRoom()));
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: RouteButton(
                      routeText: Text(
                        'Go through the door on the eastern wall',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LibraryFirst()));
                      },
                    ),
                  ),
                  hasVisited
                      ? Container()
                      : StoryBox(
                          storyText: Text(
                            'When you arrive at the right-side corridor of the main hall you see that the bookshelf has shifted open.'
                            '\nNow there is a doorway that was not there before.'
                            '\n“Great, a creepy secret door inside a mansion.'
                            '\nA cold shiver streams through your body, you are not sure whether it’s because of the creepy secret room or \nthe cliché that there is one inside a creepy old mansion.',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 30),
                          ),
                        ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RouteButton(
                      routeText: Text(
                        'Go back',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainHallFirstRight()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          )
        : Scaffold(
            backgroundColor: Colors.black,
            body: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image:
                      AssetImage('assets/images/main_first_corridor_right.jpg'),
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
                        'Go through the door on the northern wall',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DiningHall()));
                      },
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: RouteButton(
                      routeText: Text(
                        'Go through the door on the eastern wall',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LibraryFirst()));
                      },
                    ),
                  ),
                  hasVisited
                      ? Container()
                      : StoryBox(
                          storyText: Text(
                            'There are two more doors here and a bookshelf on the left.'
                            '\nYou can‘t help but wonder.'
                            '\n\n„Why does a fellow college professor want to meet my dad here?“'
                            '\n„What mistakes could they possibly have made that can‘t be talked about in a coffe shop?“',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.grey, fontSize: 30),
                          ),
                        ),
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: RouteButton(
                      routeText: Text(
                        'Go back',
                        style: TextStyle(color: Colors.grey, fontSize: 30),
                      ),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MainHallFirstRight()));
                      },
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}
