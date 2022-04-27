import 'barrier.dart';
import 'package:flutter/material.dart';

class HorizontalBarrier extends Barrier {
  const HorizontalBarrier({Key? key, required bool isOccupied})
      : super(key: key, isOccupied: isOccupied);

  @override
  _HorizontalBarrierState createState() => _HorizontalBarrierState();
}

class _HorizontalBarrierState extends BarrierState<HorizontalBarrier> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      height: 50.0,
      width: 300.0,
      color: Colors.transparent,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: super.isOccupied ? Colors.red : Colors.green,
          borderRadius: const BorderRadius.all(Radius.circular(15.0)),
        ),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
      duration: const Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
    );
  }
}
