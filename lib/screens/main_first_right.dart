import 'package:flutter/material.dart';

// The right side of The Main Hall first floor.

// TODO: Maybe create some things to interact with.
// TODO: Add story text.

// Created right side of the Main Hall first floor.
// Added buttons to go through all the doors.

class MainHallFirstRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/main_first_right.jpg'),
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
              alignment: Alignment.bottomLeft,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.black,
                ),
                onPressed: () => Navigator.pushNamed(context, '/mainfirst'),
                child: Text(
                  'Go back to stairs.',
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
                onPressed: () => Navigator.pushNamed(context, '/reading'),
                child: Text(
                  'Go through first door on eastern wall.',
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
                onPressed: () => Navigator.pushNamed(context, '/libraryfirst'),
                child: Text(
                  'Go through second door on eastern wall.',
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
                onPressed: () => Navigator.pushNamed(context, '/dining'),
                child: Text(
                  'Go through door on northern wall.',
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
