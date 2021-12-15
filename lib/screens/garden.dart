import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The Garden screen.
// TODO: Change the background picture.
// TODO: Create a window for the text.
// TODO: Create a button to enter the mansion

// Replaced Elevated button with route button widget from the newly created route_button.dart

class Garden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/front_door.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(15.0),
              padding: const EdgeInsets.all(3.0),
              decoration: BoxDecoration(
                color: Colors.black,
                border: Border.all(color: Colors.grey),
              ),
              child: Text(
                "You walk towards the front door of the manor. \nThe floorboards on the deck creek as you step on them and on the door \nthere is a old rusty knocker handle in the shape of a roaring lion's head.\nEverything about this place screams at you to just forget the whole matter and \ngo back home to your comfortable little house in Oxford.\n'This is it' You think to yourself as you muster some slither of courage to open the old door.",
                style: TextStyle(
                  fontFamily: 'Padauk',
                  backgroundColor: Colors.black,
                  color: Colors.grey,
                  fontSize: 20.0,
                ),
              ),
            ),
            Container(
              child: RouteButton(
                routeText: Text(
                  'Open front door',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstFloor()));
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
