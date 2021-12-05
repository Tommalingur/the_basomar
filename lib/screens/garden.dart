import 'package:flutter/material.dart';

// The Garden screen.
// TODO: Change the background picture.
// TODO: Create a window for the text.
// TODO: Create a button to enter the mansion

class Garden extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
    );
  }
}
