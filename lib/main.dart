import 'package:flutter/material.dart';
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
        body: Center(
          child: ListView(
            children: const [
              Center(
                child: HorizontalBarrier(isOccupied: false),
              ),
              Center(
                child: VerticalBarrier(isOccupied: false),
              ),
              Center(
                child: HorizontalBarrier(isOccupied: true),
              ),
              Center(
                child: VerticalBarrier(isOccupied: true),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
