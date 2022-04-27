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
    return AnimatedContainer(
      height: 300.0,
      width: 50.0,
      color: Colors.transparent,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: super.isOccupied ? Colors.red : Colors.green,
          borderRadius: BorderRadius.circular(15.0),
        ),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
