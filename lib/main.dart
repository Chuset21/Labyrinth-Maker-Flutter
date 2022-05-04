import 'package:flutter/material.dart';
import 'package:labyrinth_maker/board.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Labyrinth Maker',
      debugShowCheckedModeBanner: false,
      home: InitialScreen(),
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
  final _barrierNumbers = List<int>.generate(25, (index) => index).skip(1);

  String _currentDifficulty = 'Very Hard';
  int _currentBarrierNum = 24;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generate your board'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Spacer(),
            Flexible(
              flex: 1,
              child: Center(
                child: Row(
                  children: <Widget>[
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
                        value: _optionValue,
                        alignment: AlignmentDirectional.center,
                        items: _optionList
                            .map<DropdownMenuItem<String>>((String value) =>
                                DropdownMenuItem<String>(
                                  value: value,
                                  child:
                                      Text(value, textAlign: TextAlign.center),
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
                                      child: Text(value,
                                          textAlign: TextAlign.center),
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
                    const Spacer(),
                  ],
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: Center(
                child: ElevatedButton(
                  child: const Text('Generate Board'),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const BoardScreen(
                              barriers:
                                  '0000100000000000000000000001000000000000100000000000000000000001'),
                        ));
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class BoardScreen extends StatelessWidget {
  const BoardScreen({Key? key, required this.barriers}) : super(key: key);

  final String barriers;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Generated board'),
      ),
      body: Center(
        child: Board(barriers: barriers),
      ),
    );
  }
}
