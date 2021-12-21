import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The library second floor.

class LibrarySecond extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('LibrarySecond');
    visited.addVisit('LibrarySecond');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/library_second.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: RouteButton(
                routeText: Text(
                  'Go down the stairs',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LibraryFirst(),
                    ),
                  );
                },
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: InspectButton(
                itemName: Text(
                  'Look through the bookshelves',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Vadászai Besomar',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'Most of these books are very old and fall apart when you pick them up.'
                  '\nOne book catches your eye.'
                  '\n\nThe title of the book reads Okhotniki Besomar.'
                  '\n“I know that name.” you mutter to yourself as you open the book.'
                  '\n\n“When the Besomar first appeared, terrorizing small towns and farms, \nthe people of Jelsava were ill equipped to deal with the demon.'
                  '\nThe local farmers believed that Chernobog himself had come to punish them \nfor their wickedness and started offering sacrifices in a vain attempt to appease the black god.'
                  '\nBut when the attacks and possessions continued, they pleaded to Stephen the first, \nking of the Hungarian kingdom to rid them of the evil that haunted them.'
                  '\nThe old king did not believe the peasants at first, \nbut when a small scouting party from the king went missing, with stories that the knight that led the party \nslaughtered the others, and that he was a possessed man, the king assembled a group of demon hunters to hunt the beast.'
                  '\nNot willing to seem mad, believing in demons and monsters, this group of hunters, \nsaid to be led by a mighty warrior by the name Berislav Kuchár was kept secret from the rest of the Hungarian empire.”'
                  '\nThe brave monster hunters were called Vadászai Besomar, or The Besomar hunters.'
                  '\n\n“Wait. Kuchár? Could this Berislav be my forefather?”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'The second floor of the library.'
                      '\n“I wonder if anyone has actually read all those books?”',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Back to the balcony',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallSecondRight()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
