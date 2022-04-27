import 'package:flutter/material.dart';

abstract class Barrier extends StatefulWidget {
  const Barrier({Key? key, required this.isOccupied}) : super(key: key);

  final bool isOccupied;

  @override
  BarrierState createState() => BarrierState();
}

class BarrierState<T extends Barrier> extends State<T> {
  bool isOccupied = false;

  @override
  initState() {
    isOccupied = widget.isOccupied;
    super.initState();
  }

  void setIsOccupied(bool isOccupied) {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      this.isOccupied = isOccupied;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
