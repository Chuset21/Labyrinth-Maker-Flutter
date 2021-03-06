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
    return AspectRatio(
        aspectRatio: 4 / 19,
        child: AnimatedContainer(
          decoration: BoxDecoration(
            color: super.isOccupied ? Colors.brown.shade500 : Colors.transparent,
            borderRadius: BorderRadius.circular(15.0),
          ),
          duration: const Duration(seconds: 1),
          curve: Curves.fastOutSlowIn,
        ),
    );
  }
}
