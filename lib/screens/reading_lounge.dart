import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The reading lounge.

// TODO: Create items to interact with.

class ReadingLounge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('ReadingLounge');
    visited.addVisit('ReadingLounge');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/reading_room.jpg'),
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
                      'You go through the door and are now standing in a reading lounge.'
                      '\nThere is a thick layer of dust everywhere witch is a good thing, \nbecause you see footprints in the dust on the floor.'
                      '\n„Someone has been here recently. Maybe my father is still here?“',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RouteButton(
                routeText: Text(
                  'Back to Main Hall',
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
