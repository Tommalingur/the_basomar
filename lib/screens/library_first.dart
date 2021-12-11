import 'package:flutter/material.dart';

// The library first floor.

// TODO: Create items to interact with.
// TODO: Add story text.

// Added the first floor of the library. Along with  a button to navigate back to the main hall. Also added a picture.
// Added a button to go up the stairs.

class LibraryFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/library_first.jpg'),
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
                onPressed: () =>
                    Navigator.pushNamed(context, '/mainfirstright'),
                child: Text(
                  'Back to the Main Hall.',
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
                  'Go up stairs.',
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
