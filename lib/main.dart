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
  final _firstListItems = ['Difficulty', 'Number of Barriers'];
  String _firstListValue = 'Number of Barriers';

  @override
  Widget build(BuildContext context) {
    return Container(
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
        underline: const SizedBox.shrink(),
      ),
    );
  }
}
