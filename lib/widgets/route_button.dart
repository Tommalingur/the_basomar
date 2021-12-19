import 'package:flutter/material.dart';

// Created a widget file for route button.

class RouteButton extends StatelessWidget {
  Function onPressed;
  Text routeText;
  RouteButton({this.onPressed, this.routeText});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      child: Container(
        padding: EdgeInsets.all(5.0),
        child: routeText,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 2.0,
            style: BorderStyle.solid,
          ),
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
