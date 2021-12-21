import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The kitchen.

class Kitchen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Kitchen');
    visited.addVisit('Kitchen');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/kitchen.jpg'),
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
                  'Look in sink',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Kitchen sink',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There are some dirty dishes in the sink.'
                  '\nNot decades old dirty, but days or weeks dirty.'
                  '\n\n“Someone has definitely been here in the last days or weeks.”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'This must be one of the largest kitchen you have ever seen.'
                      '\n\n“There must have been half a dozen staff working here.”'
                      '\n“That small house outside must be the servants’ quarters.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Back to the Main Hall',
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
