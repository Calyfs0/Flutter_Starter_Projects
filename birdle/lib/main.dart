import 'package:birdle/widgets/gamepage.dart';
import 'package:birdle/widgets/tile.dart';
import 'package:flutter/material.dart';

import 'game.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Align(alignment: Alignment.center, child: Text('Birdle')),
        ),
        body: Gamepage(),
      ),
    );
  }
}
