import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';

// The Main Hall second floor screen.
// TODO: Create buttons to enter right and left side of the second floor Main Hall.
// TODO: Add a button to interact with double door.
// TODO: Make this door closed. Add a puzzle or something to open.

// Replaced Elevated button with route button widget from the newly created route_button.dart

class MainHallSecondStairs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Container(
              child: Text(
                'Here there will be a story text.',
                style: TextStyle(
                  fontFamily: 'Padauk',
                  backgroundColor: Colors.grey,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back downstairs',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstFloor()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: RouteButton(
                routeText: Text(
                  'Go to the right side of the balcony',
                  style: TextStyle(color: Colors.grey, fontSize: 20),
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
                  style: TextStyle(color: Colors.grey, fontSize: 20),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallSecondLeft()));
                },
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => showDialog(
                  context: context,
                  builder: (BuildContext context) => AlertDialog(
                    title: Text('Locked Door'),
                    content: Text(
                        'There is a large door here, \nit is locked and has a strange frame and a feather pen on a chain attached to it. \nMaybe I can write something here'),
                    actions: [
                      TextButton(
                        onPressed: () => Navigator.pop(context, 'Leave'),
                        child: Text('Leave'),
                      )
                    ],
                  ),
                ),
                child: Text('Inspect door'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
