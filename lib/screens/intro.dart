import 'package:besomar/screens/front_door.dart';
import 'package:besomar/screens/kuchar_manor.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/backend.dart';

// The pre story screen.

class PreStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/pre_story.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '\nIt‘s been two months since my father disappeared.'
              '\nThe only lead I have on his disappearance is a letter from one of his colleges in Slovakia.'
              '\nIt read something about „their mistake finally catching up on them “\nand “That they had to meet as soon as possible at the Kuchár manor “.'
              '\nSo, I travelled to Slovakia, to find this mysterious family estate.'
              '\nI must find my father.',
              textAlign: TextAlign.center,
              style: TextStyle(
                backgroundColor: Colors.white,
                color: Colors.black,
                fontSize: 48.0,
              ),
            ),
            RouteButton(
              routeText: Text(
                'CONTINUE',
                style: TextStyle(color: Colors.grey, fontSize: 50),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Mansion()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
