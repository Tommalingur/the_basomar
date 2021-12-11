import 'package:besomar/screens/bedroom.dart';
import 'package:besomar/screens/gallery.dart';
import 'package:besomar/screens/kitchen.dart';
import 'package:besomar/screens/main_first_left.dart';
import 'package:besomar/screens/main_second_left.dart';
import 'package:besomar/screens/master_bedroom.dart';
import 'package:besomar/screens/master_office.dart';
import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';

// Added a couple of new routes to navigate through the game.

// TODO: Finish adding all the rooms to the navigation route.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Menu(),
        '/garden': (context) => Garden(),
        '/mainfirst': (context) => MainHallFirstFloor(),
        '/mainsecond': (context) => MainHallSecondStairs(),
        '/mainfirstleft': (context) => MainHallFirstLeft(),
        '/mainfirstright': (context) => MainHallFirstRight(),
        '/mainsecondright': (context) => MainHallSecondRight(),
        '/mainsecondleft': (context) => MainHallSecondLeft(),
        '/kitchen': (context) => Kitchen(),
        '/bathroom': (context) => Bathroom(),
        '/dining': (context) => Dining_Hall(),
        '/reading': (context) => Reading_Lounge(),
        '/libraryfirst': (context) => LibraryFirst(),
        '/librarysecond': (context) => LibrarySecond(),
        '/gallery': (context) => Gallery(),
        '/masteroffice': (context) => MasterOffice(),
        '/bedroom': (context) => Bedroom(),
        '/masterbedroom': (conte) => MasterBedroom(),
      },
    );
  }
}
