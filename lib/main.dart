import 'package:besomar/screens/screens.dart';
import 'package:flutter/material.dart';
import 'package:besomar/widgets/widgets.dart';
import 'package:provider/provider.dart';
import 'backend/visited.dart';

// Cleaned up import list.

// TODO: Finish adding all the rooms to the navigation route.

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [Provider<Visited>(create: (_) => Visited())],
      child: MaterialApp(
        home: Menu(),
      ),
    );
  }
}
