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
    return Container(
      height: 50.0,
      width: 300.0,
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
