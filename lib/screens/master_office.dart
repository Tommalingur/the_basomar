import 'package:besomar/backend/player.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:besomar/backend/backend.dart';
import 'package:provider/provider.dart';

// The Master Office.

class MasterOffice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Visited visited = Provider.of<Visited>(context);
    Player player = Provider.of<Player>(context);

    bool hasVisited = visited.hasVisited('MasterOffice');
    visited.addVisit('MasterOffice');
    bool hasItem = player.hasItem('secretSwitch');
    player.addItem('secretSwitch');

    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/master_office.jpg'),
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
                  'Investigate leather-bound book',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'History of Vadászai Besomar',
                  style: TextStyle(color: Colors.grey, fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'This book is huge.'
                  '\nYou page through it quickly and at the end there is a section with hundreds of names.'
                  '\nLooks like members of this hunter group, when and how they died.'
                  '\n\n“Berislav Kuchár – Founder and Elso Kard – Died in 1067.'
                  '\nMisko Antonov – Kard – Prison host in 1018, Died in 1056.'
                  '\nVojtik Klima – Elso Mágus – Prison host in 1057, Died in 1668.'
                  '\nSlawjow Fyodorov – Kard – Died in 1016.'
                  '\nSenko Novakovic – Kard – Died in 1016.”'
                  '\n\nYou turn the pages and there are hundreds of names there.'
                  '\nOn the last written page there are only 5 names.'
                  '\n\nThomász Kuchár – Elso Kard'
                  '\nMiljenko Novikov – Elso Magus'
                  '\nLeslaw Seitz – Magus – Prison host in 1967.'
                  '\nGorana Gajov – Magus'
                  '\nSlav Kaffka – Kard'
                  '\n\n“Are you telling me that this cult has had hundreds of members for over thousand years and \nevery once in a hundred years or so they sacrifice one of them to be this prison host? \nThat’s insane!”',
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topCenter,
              child: InspectButton(
                itemName: Text(
                  'Read letter',
                  style: TextStyle(color: Colors.grey, fontSize: 30.0),
                ),
                title: Text(
                  'A letter to my father',
                  style: TextStyle(color: Colors.grey, fontSize: 35.0),
                  textAlign: TextAlign.center,
                ),
                content: Text(
                  'Dear Thomas,'
                  '\nI write this letter in hope that you get it as soon as possible.'
                  '\nIt is as we feared. The seals are breaking, and my magic is not as strong as the great Vojtik Klima was.'
                  '\nWhen we discovered the cracks in the seal, we managed to replace you grandfather, \nalthough he had fought the Besomar well for hundred years, the magic was fading from the prison and his will was finally withering.'
                  '\nAlthough Leslaw’s sacrifice was a noble one, he could not hope to last long against this evil.'
                  '\nWe should have tried to replace the crystal itself, but it has become extremely rare. Still, we should have looked.'
                  '\nNow the crystal is in worse shape than ever and the wards on the room itself are fading.'
                  '\nNow our only chance is to replace the prison host and hope that the magic of three mages is enough to \nreplicate the wards that Vojtik put in place over a thousand years ago.'
                  '\nThis only leaves you and Slav, and with respect to Slav you have a much stronger spirit and must take Leslaw’s place inside the crystal.'
                  '\nIn know this is much to ask old friend. But we must uphold the legacy of Vadászai Besomar or the demon king \nwill wreak havoc upon the earth once more. And this time I fear his reign will be much larger in scale.'
                  '\nYour old friend, Miljenko.'
                  '\n\nThis is too much, I must find my father now!',
                  style: TextStyle(color: Colors.grey, fontSize: 20.0),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            hasItem
                ? Container(
                    alignment: Alignment.topRight,
                    child: InspectButton(
                      itemName: Text(
                        'Cradle mounted world globe',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                      ),
                      title: Text(
                        'Globe',
                        style: TextStyle(color: Colors.grey, fontSize: 35.0),
                        textAlign: TextAlign.center,
                      ),
                      content: Text(
                        '“This globe is nice, but I should really check out that noise from the first floor.”',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  )
                : Container(
                    alignment: Alignment.topRight,
                    child: InspectButton(
                      itemName: Text(
                        'Cradle mounted world globe',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                      ),
                      title: Text(
                        'Globe',
                        style: TextStyle(color: Colors.grey, fontSize: 35.0),
                        textAlign: TextAlign.center,
                      ),
                      content: Text(
                        'Behind the desk is a cradle mounted world globe.'
                        '\nYou notice that there are small pins all over the globe with small notes attached.'
                        '\nYou read some of the notes.'
                        '\n\n“Istria, Croatia – Babaroga sighted. Killed.'
                        '\nAncona, Italy – Drekavac sighted. Killed.'
                        '\nGruza, Serbia – Tsikavat sighted. Killed, master punished.”'
                        '\n\n“This Vadászai guys aren’t kidding. Is this what my father was doing when he was on his “work” trips. \nI can’t believe he is a part of a traveling monster hunter group. What do they mean by master punished?”'
                        '\n\nYou spin the globe a whole circle and suddenly you hear click from it and a sound coming from the lower floor. \nLike someone dragging furniture down there.'
                        '\nYour heart starts beating a little faster as you thought you were alone in this house.'
                        '\n\n“I should definitely check that out that noise.”',
                        style: TextStyle(color: Colors.grey, fontSize: 30.0),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
            hasVisited
                ? Container()
                : StoryBox(
                    storyText: Text(
                      'You are standing in a large office.'
                      '\nThere is a desk with a large leather-bound book, and a letter.'
                      '\nThere is also a big globe standing on the floor behind the desk.'
                      '\nOn the wall hangs a picture of your father.'
                      '\nBelow it is a small text: Elso Kard Thomáz Kuchár.'
                      '\n\n“Wait, elso kard? It looks like insanity has run in my father’s side of the family for generations. \nThey are all part of some century old demon hunter cult called Vadászai Belomar.'
                      '\nI have to find my father before he starts sacrificing peasants to appease this local myth he thinks walks the earth.”',
                      textAlign: TextAlign.center,
                      style: TextStyle(color: Colors.grey, fontSize: 30),
                    ),
                  ),
            Align(
              alignment: Alignment.bottomCenter,
              child: RouteButton(
                routeText: Text(
                  'Go back to the top of the stairs',
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
