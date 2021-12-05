import 'package:flutter/material.dart';

// The Garden screen.
// Note. Images, text styles and other widgets are in a test state. Will change before release.
// Need to add a Textbutton to enter main hall.

class Garden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/front_door.jpg'),
              fit: BoxFit.fill,
            ),
          ),
          constraints: BoxConstraints.expand(),
          child: Container(
            padding: EdgeInsets.all(10.0),
            margin: EdgeInsets.fromLTRB(10.0, 700.0, 150.0, 40.0),
            color: Colors.white,
            child: Center(
              child: Text(
                'Here there will be a story text.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20.0,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
