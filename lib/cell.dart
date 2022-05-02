import 'package:flutter/material.dart';

class Cell extends StatelessWidget {
  const Cell({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        decoration: BoxDecoration(
          color: Colors.transparent,
          border: Border.all(
            color: Colors.lightBlueAccent,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(20.0),
        ),
      ),
    );
  }
}
