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
        child: routeText,
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey,
            width: 1.0,
            style: BorderStyle.solid,
          ),
          color: Colors.black,
        ),
      ),
      onPressed: onPressed,
    );
  }
}
