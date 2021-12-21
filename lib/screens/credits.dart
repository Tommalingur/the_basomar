import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The secret room.

class Credits extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('Credits');
    visited.addVisit('Credits');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Text(
                'The Besomar'
                '\nStory and characters by Tómas Héðinn Gunnarsson.'
                '\nLead programmer – Tómas Héðinn Gunnarsson.'
                '\nArtwork team leader – Tómas Héðinn Gunnarsonn.'
                '\nHead of music department – Jósep Helgason.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey, fontSize: 60),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                  routeText: Text(
                    'Reset game',
                    style: TextStyle(color: Colors.grey, fontSize: 30),
                  ),
                  onPressed: () {
                    Navigator.popUntil(context,
                        (Route<dynamic> predicate) => predicate.isFirst);
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
