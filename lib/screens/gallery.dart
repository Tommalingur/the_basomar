import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The Gallery.

class Gallery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Gallery');
    visited.addVisit('Gallery');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/gallery.jpg'),
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
                  'inspect statues',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Gallery statues',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is a large statue by Alexander Opekushin standing in the corner.'
                  '\nTwo incredibly unsettling sculptures don the showcases in the back of the room.'
                  '\n\n“I can’t wait to get out of here, I swear those sculptures are watching me.”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              child: InspectButton(
                itemName: Text(
                  'inspect pictures on the wall',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Gallery pictures',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'Old paintings hang on the walls.'
                  '\nWinter in Abramtsevo by Valentin Serov, 1886.'
                  '\nA Peasant with an Evil Eye by Ilya Repin, 1877.'
                  '\nVolga by Isaac Levitan, 1889.'
                  '\n“Aren’t some of these supposed to be in a museum somewhere?”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: InspectButton(
                itemName: Text(
                  'inspect showcase in the middle of the room',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Gallery showcase',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'A Ming dynasty wase, some sculpture of a woman \nand more probably priceless artifacts.',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'It‘s a gallery of some sort.'
                      '\nThere are pictures on the walls and statues everywhere.'
                      '\n„I wonder why my family never cleaned out this place.“'
                      '\n„These things must be worth millions.“',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back to the balcony',
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
