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
          child: Column(
            children: const <Widget>[
              Flexible(
                flex: 1,
                child: Center(
                  child: HorizontalBarrier(isOccupied: false),
                ),
              ),
              Flexible(
                flex: 6,
                child: Center(
                  child: VerticalBarrier(isOccupied: false),
                ),
              ),
              Flexible(
                flex: 1,
                child: Center(
                  child: HorizontalBarrier(isOccupied: true),
                ),
              ),
              Flexible(
                flex: 6,
                child: Center(
                  child: VerticalBarrier(isOccupied: true),
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
