import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

class PrisonFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('PrisonFive');
    visited.addVisit('PrisonFive');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/prison_five.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Continue',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PrisonSix()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'Your father finally manages to stand up.'
                      '\nAnger. No hatred glowing from his eyes, his mouth foaming with anger he yells.'
                      '\n\n“YOU HAVE NO IDEA WHAT YOU HAVE WROUGHT UPON THIS WORLD!”'
                      '\n“NOW THAT THE PRISON IS BROKEN, WHAT IS LEFT OF THE WARDS IS NOT ENOUGH.”'
                      '\n“I WONT BE ABLE TO HOLD IT MUCH LONGER!”',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                      textAlign: TextAlign.center,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
