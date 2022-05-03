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
        body: const InitialScreen(),
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
  final _firstListItems = ['Difficulty', 'Number of Barriers'];
  String _firstListValue = 'Number of Barriers';

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      elevation: 16,
      decoration: const InputDecoration(),
      value: _firstListValue,
      alignment: AlignmentDirectional.center,
      items: _firstListItems
          .map<DropdownMenuItem<String>>(
              (String value) => DropdownMenuItem<String>(
                    value: value,
                    child: Text(value, textAlign: TextAlign.center),
                  ))
          .toList(),
      onChanged: (String? newValue) {
        setState(() {
          _firstListValue = newValue!;
        });
      },
    );
  }
}
