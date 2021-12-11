import 'package:flutter/material.dart';

// The Main Hall first floor screen.
// TODO: Create items to interact with?
// TODO: Find and change the background picture.

// Added a button to navigate to the right side of the Main Hall.

class MainHallFirstFloor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/main_hall_stairs.jpg'),
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
                  fontFamily: 'RockSalt',
                  backgroundColor: Colors.grey,
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => Navigator.pushNamed(context, '/mainsecond'),
                child: Text(
                  'Go up stairs.',
                  style: TextStyle(
                    fontFamily: 'RockSalt',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => Navigator.pushNamed(context, '/mainfirstleft'),
                child: Text(
                  'Go to the left side of the Main Hall',
                  style: TextStyle(
                    fontFamily: 'RockSalt',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () =>
                    Navigator.pushNamed(context, '/mainfirstright'),
                child: Text(
                  'Go to the right side of the Main Hall',
                  style: TextStyle(
                    fontFamily: 'RockSalt',
                    color: Colors.white,
                    fontSize: 20.0,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
