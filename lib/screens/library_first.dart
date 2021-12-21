import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/visited.dart';
import 'package:provider/provider.dart';

// TODO: Create items to interact with.

class LibraryFirst extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);

    bool hasVisited = visited.hasVisited('LibraryFirst');
    visited.addVisit('LibraryFirst');
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/library_first.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Align(
              alignment: Alignment.topCenter,
              child: RouteButton(
                routeText: Text(
                  'Go up stairs',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LibrarySecond()));
                },
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: InspectButton(
                itemName: Text(
                  'Search on table',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'Slavic Myths',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'There is a open book on the table.'
                  '\nYou read the page that is open.'
                  '\n\n„The Besomar. “'
                  '\n\n„Of all the monstrosities and demons in Slavic mythology there is one that is more feared than any other.'
                  '\nThe Besomar is a demon of pure hatred, disgust, and insanity. It is considered the king of all demonic entities.'
                  '\nHistorians have sometimes confused the Besomar with werewolves or vampires but in truth it is something much worse and sinister.'
                  '\nThe Besomar is known to possess people or animals, infusing them with burning hatred and can make people do \nunimaginable things to their loved ones or even lay waste to entire settlements and towns.'
                  '\nA person possessed by the Besomar gains his demonic strength and is able to withstand punishment beyond believe, \nall while the host is still aware inside it’s uncontrollable body, bearing silent witness to the horrors it inflicts to others.'
                  '\nThe Besomar is also intensely cruel and usually leaves the host body after the death and destruction and devastation it has wreaked, \nleaving a man out of his mind for the rest of his life, which is usually not long for people usually take their own lives to end their suffering.'
                  '\n\n“On rare occasions the demon appears in it’s true form, not always killing it’s victims, \nleaving them prisoned in their own growing insanity. “',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topRight,
              child: InspectButton(
                itemName: Text(
                  'look through the bookshelves',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'The hunt for the Besomar',
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'You page through some books and find one in particular that peeks your interest.'
                  '\nThe name on the cover is catches your eye. Berislav Kuchár.'
                  '\n\n“The hunt for the Besomar.”'
                  '\n\n“We had been hunting the demon for months.'
                  '\nTwice we had caught up with it and battled it, and it is no ordinary foe.'
                  '\nWe have in our midst some of the best swordsmen on the continent and even the magic of Vojtik could not harm it.'
                  '\nIt did not help when Slawoj suddenly turned against us like possessed and \nwe had to try and fight both the beast and one of the best duellist I have ever met.'
                  '\nOn both occasions we lost more men than we could afford and had to flee from the seemingly undefeatable foe.'
                  '\nMaybe this thing is unkillable? Vojtik came up with the idea of imprisoning it instead of trying to kill something that can’t be killed.'
                  '\nAfter months of research the mage told us that we would need two things to imprison a demon as powerful as the Besomar.'
                  '\nA large block of Tanzanite crystal, large enough to hold a person inside it. And a soul strong enough to hold the demon.'
                  '\nMisko volunteered to let the demon take possession of me so that hopefully we could imprison it.'
                  '\nLet’s just hope this works.”',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'It‘s a library.'
                      '\nAnd a pretty big one.'
                      '\nThere is a staircase in the back leading to the second floor of it.'
                      '\n„I guess there is not much to do here except to read.“'
                      '\nThe books here are very old.'
                      '\n„No Drizzt or Hitchhiker‘s Guide in this library i guess.“',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Back to the Main Hall',
                  style: TextStyle(color: Colors.grey, fontSize: 30),
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MainHallFirstRightCorridor()));
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
