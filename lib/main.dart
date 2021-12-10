import 'package:besomar/screens/kitchen.dart';
import 'package:besomar/screens/main_first_left.dart';
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
        '/kitchen': (context) => Kitchen(),
      },
    );
  }
}
