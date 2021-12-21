import 'package:besomar/backend/player.dart';
import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'backend/backend.dart';

// Cleaned up import list.

// TODO: Finish adding all the rooms to the navigation route.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Visited>(create: (_) => Visited()),
        Provider<Player>(create: (_) => Player()),
      ],
      child: MaterialApp(
        theme: ThemeData(fontFamily: 'Island'),
        home: Menu(),
      ),
    );
  }
}
