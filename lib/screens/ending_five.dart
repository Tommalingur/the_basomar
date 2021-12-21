import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

class EndingFive extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('EndingFive');
    visited.addVisit('EndingFive');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'You hear a deafening noise of what can only be the corridor outside of the room collapsing onto itself.'
                '\nAs you sit there crying alone in the darkness a thought creeps into your mind.'
                '\nYou will never get out of here.'
                '\nYou will die in here.'
                '\nAnd the world will burn because of you.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 60),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Continue',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => EndingSix()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
