import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Testing dropdown menus in Flutter',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Testing dropdown menus in Flutter'),
        ),
        body: const Center(
          child: InitialScreen(),
        ),
      ),
    );
  }
}

class InitialScreen extends StatefulWidget {
  const InitialScreen({Key? key}) : super(key: key);

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  static const _optionList = ['Difficulty', 'Number of Barriers'];
  String _optionValue = 'Difficulty';

  static const _difficulties = ['Easy', 'Medium', 'Hard', 'Very Hard'];
  static const _barrierNumbers = [
    0,
    1,
    2,
    3,
    4,
    5,
    6,
    7,
    8,
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24
  ];

  String _currentDifficulty = 'Very Hard';
  int _currentBarrierNum = 24;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
                color: Colors.blueAccent.shade100,
                style: BorderStyle.solid,
                width: 0.80),
          ),
          child: DropdownButton(
            elevation: 16,
            value: _optionValue,
            alignment: AlignmentDirectional.center,
            items: _optionList
                .map<DropdownMenuItem<String>>(
                    (String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, textAlign: TextAlign.center),
                        ))
                .toList(),
            onChanged: (String? newValue) {
              setState(() {
                _optionValue = newValue!;
              });
            },
            underline: const SizedBox.shrink(),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(
                color: Colors.blueAccent.shade100,
                style: BorderStyle.solid,
                width: 0.80),
          ),
          child: DropdownButton(
            elevation: 16,
            value: _optionValue.compareTo('Difficulty') == 0
                ? _currentDifficulty
                : _currentBarrierNum.toString(),
            alignment: AlignmentDirectional.center,
            items: _optionValue.compareTo('Difficulty') == 0
                ? _difficulties
                    .map((String value) => DropdownMenuItem<String>(
                          value: value,
                          child: Text(value, textAlign: TextAlign.center),
                        ))
                    .toList()
                : _barrierNumbers
                    .map((int value) => DropdownMenuItem<String>(
                          value: value.toString(),
                          child: Text(value.toString(),
                              textAlign: TextAlign.center),
                        ))
                    .toList(),
            onChanged: (String? newValue) {
              setState(() {
                if (_optionValue.compareTo('Difficulty') == 0) {
                  _currentDifficulty = newValue!;
                } else {
                  _currentBarrierNum = int.parse(newValue!);
                }
              });
            },
            underline: const SizedBox.shrink(),
          ),
        ),
      ],
    );
  }
}
