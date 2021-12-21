import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// The reading lounge.

class ReadingLounge extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('ReadingLounge');
    visited.addVisit('ReadingLounge');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/reading_room.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              alignment: Alignment.topCenter,
              child: InspectButton(
                itemName: Text(
                  'Look at fire place mantle',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'The fire place mantle',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is an old clock here, judging from the spiderwebs and dust it has not run for years.'
                  '\nThere is also a sculpted head of „Elso Kard“ Uram Berislav Kuchár.'
                  '\n„If I remember my old Hungarian correctly Elso Kard translates to „The First Sword “ and Uram means that Berislav was knighted.'
                  '\nThis is probably the first time that my weird home schooling is useful. “',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: InspectButton(
                itemName: Text(
                  'Look through letters on desk',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Heroes of Vadászai Besomar',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is a book here that tells of something called the Vadászai Besomar.'
                  '\nYou read the first page.'
                  '\n\n„After we first imprisoned the demonic entitie called The Besomar, we had hoped that it‘s reign of terror was over.'
                  '\nHow wrong we were.'
                  '\nThe prison held for almost 40 years, but the demons strenght consumed Misko‘s spirit and over time broke the crystal that held it.'
                  '\nVojtik, our mage decided that it would take a stronger prison and a stronger mind to resist the demons so he offered himself for the task.'
                  '\nWe were all old men by now, but Vojtik‘s mind was sharper than ever, and together we decided that the demon‘s prison would be in my family manor.'
                  '\nIt is remote and the dungeon beneath it has an old cellar that could be reinforced with magic and used as a prison.'
                  '\nIt took all the strenght we had to imprison the demon a second time, and when the deed was done our numbers had dwindled to almost nothing.'
                  '\nNow we just have to hope that Vojtik‘s mind and the prison he built is strong enough to hold it, but we know that someday it will break free again, and I will now have to search for worthy men and women to continue the legacy of Vadaszai Besomar. So that when the time comes, they can hopefully prolong the imprisonment.'
                  '\nIf not, then I fear we have angered the beast. And it will stop at nothing to lay waste the Hungarian Kingdom, and maybe even the world as we know it.“',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'You go through the door and are now standing in a reading lounge.'
                      '\nThere is a thick layer of dust everywhere witch is a good thing, \nbecause you see footprints in the dust on the floor.'
                      '\n„Someone has been here recently. Maybe my father is still here?“',
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomLeft,
              child: RouteButton(
                routeText: Text(
                  'Back to Main Hall',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
