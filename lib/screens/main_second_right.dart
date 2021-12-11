import 'package:flutter/material.dart';

// The right side of the main hall second floor.

// Added a background picture for the right side of the Main Hall second floor. Probably not a final version.
// Added a button to go back to top of stairs.
// Added a button to go through the first door.

class MainHallSecondRight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/main_second_right.jpg'),
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
                onPressed: () => Navigator.pushNamed(context, '/mainsecond'),
                child: Text(
                  'Go back to top of stairs.',
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
                onPressed: () => Navigator.pushNamed(context, '/librarysecond'),
                child: Text(
                  'To through first door.',
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
                onPressed: () => Navigator.pushNamed(context, '/gallery'),
                child: Text(
                  'To through second door.',
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
