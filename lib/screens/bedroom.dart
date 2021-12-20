import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The Bedroom.

// TODO: Create items to interact with.

class Bedroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Bedroom');
    visited.addVisit('Bedroom');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/bedroom.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.topRight,
              child: InspectButton(
                itemName: Text(
                  'Look inside drawers',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Bedroom drawers',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'Mouldy clothes, bedsheets, nothing here except mould and a couple of spiders.'
                  '\n“I guess it was too much to think there could be something useful here.”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'There is a simple bedroom here.'
                      '\n„Probably a guest bedroom.“'
                      '\n„Or maybe my father‘s when was young?“',
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
