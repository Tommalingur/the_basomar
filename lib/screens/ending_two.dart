import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

class EndingTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('EndingTwo');
    visited.addVisit('EndingTwo');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/prison_demon.jpg'),
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
                      MaterialPageRoute(builder: (context) => EndingThree()));
                },
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'Terror washes over you when a huge demonic figure rises from you father’s corpse.'
                      '\nThis should not be possible. Demons don’t exist.'
                      '\nYet here one horrifyingly real towers in front of you.'
                      '\nAs you stand frozen it looks on you and starts to speak.'
                      '\nIt speaks in a deep yet ear shattering voice, like a thousand needles ripping at your very soul.'
                      '\n\n“THANK YOU PUNY HUMAN. I HAVE BEEN IMPRISONED BE THESE FOOLS LONG ENOUGH.”'
                      '\n“YET THESE PITIFUL MORTALS COULD NOT POSSIBLY HAVE KEPT ME HERE FOR MUCH LONGER.”'
                      '\n“YOU HAVE ONLY SPED UP THE INEVITABLE. BUT I STILL THINK YOUR ACTIONS SHOULD MERIT A REWARD.”',
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
