import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The Garden screen.
// TODO: Change the background picture.

class Mansion extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/mansion.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          children: <Widget>[
            Container(
              child: StoryBox(
                storyText: Text(
                  'Weary from your travel from England, finally you stand in front of the Kuchár Manor.'
                  '\nyour father ‘s family estate that you did not know about until now.'
                  '\nIt’s surprising how remote the manor is.'
                  '\nIt sits deep in the forests of the Velicka Valley, surrounded by huge oaks and the in the shadow of the mighty Gerlach peak.'
                  '\nyou don’t imagine that the old house gets much sun here right under the mountain.'
                  '\n„So, this is it.” You think to yourself. “Our family manor.”'
                  '\n“Not that anyone told me anything about it”.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey, fontSize: 35),
                ),
              ),
            ),
            Container(
              child: RouteButton(
                routeText: Text(
                  'Aproach the front door',
                  style: TextStyle(color: Colors.grey, fontSize: 40),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => FrontDoor()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
