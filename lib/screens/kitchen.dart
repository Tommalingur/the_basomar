import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The kitchen.

// TODO: Create items to interact with.

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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'This must be one of the largest kitchen you have ever seen.'
                      '\n“There must have been half a dozen staff working here.”'
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
