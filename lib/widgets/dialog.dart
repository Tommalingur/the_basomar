import 'package:flutter/material.dart';

// Created a widget file for story button.

class StoryBox extends StatelessWidget {
  Text storyText;
  StoryBox({this.storyText});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(20.0),
          child: storyText,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 2.0,
              style: BorderStyle.solid,
            ),
            color: Colors.black,
          ),
        ),
      ],
    );
  }
}
