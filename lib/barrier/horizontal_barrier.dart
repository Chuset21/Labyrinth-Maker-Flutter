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
    return AspectRatio(
      aspectRatio: 6 / 1,
      child: AnimatedContainer(
        decoration: BoxDecoration(
          color: super.isOccupied ? Colors.brown.shade500 : Colors.transparent,
          border: Border.all(
            color: Colors.brown.shade500,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(15.0),
        ),
        duration: const Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      ),
    );
  }
}
