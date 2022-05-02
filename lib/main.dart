import 'package:flutter/material.dart';
import 'package:labyrinth_maker/board.dart';
import 'package:labyrinth_maker/cell.dart';
import 'barrier/horizontal_barrier.dart';
import 'barrier/vertical_barrier.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing States in Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing States in Flutter'),
        ),
        body: const Center(
          child: Board(),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
