import 'package:flutter/material.dart';

import 'screens/home_screen/home_screen.dart';

void main() => runApp(CoruscateApp());

class CoruscateApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Root Widget
    return MaterialApp(
      title: 'Coruscate Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}
