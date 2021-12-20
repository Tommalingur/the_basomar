import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The Master Bedroom.

// TODO: Create items to interact with.

class MasterBedroom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('MasterBedroom');
    visited.addVisit('MasterBedroom');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/master_bedroom.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: InspectButton(
                itemName: Text(
                  'A book on the night table',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Old Ledger',
                  style: TextStyle(color: Colors.grey, fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is an old ledger on the night table.'
                  '\nYou turn a few pages but all it contains are some names and amount of money owed.'
                  '\n“I think everyone who still owe some money here are long dead.”'
                  '\n“But what is this?”'
                  '\nYou turn a few more pages and find an old, ornamented key in between them.'
                  '\n“I wonder what this opens.”'
                  '\n You put the key in your pocket.',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: InspectButton(
                itemName: Text(
                  'Look inside wardrobe',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Master wardrobe',
                  style: TextStyle(color: Colors.grey, fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is nothing in here except for old mouldy clothes.'
                  '\n“People seemed in a hurry when they left the place. \nClothes and valuables are still here.”',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'This must be the master bedroom.'
                      '\n„I think maybe my grandfather was a little to snobbish for my taste. “'
                      '\n„Maybe there are some clues in here. “',
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
