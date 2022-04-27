import 'barrier.dart';
import 'package:flutter/material.dart';

class VerticalBarrier extends Barrier {
  const VerticalBarrier({Key? key, required bool isOccupied})
      : super(key: key, isOccupied: isOccupied);

  @override
  _VerticalBarrierState createState() => _VerticalBarrierState();
}

class _VerticalBarrierState extends BarrierState<VerticalBarrier> {
  @override
  Widget build(BuildContext context) {
    return Container(
    height: 300.0,
    width: 50.0,
    color: Colors.transparent,
    child: Container(
      decoration: BoxDecoration(
        color: super.isOccupied ? Colors.red : Colors.green,
        borderRadius: const BorderRadius.all(Radius.circular(10.0)),
      ),
      child: const Center(
        child: Text(
          "Rounded Corner Rectangle Shape",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
      ),
    ),
  );
  }
}
