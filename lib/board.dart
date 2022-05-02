import 'package:flutter/material.dart';
import 'package:labyrinth_maker/barrier/horizontal_barrier.dart';
import 'package:labyrinth_maker/barrier/vertical_barrier.dart';
import 'package:labyrinth_maker/cell.dart';

class Board extends StatelessWidget {
  const Board({Key? key, required this.barriers}) : super(key: key);

  final String barriers;

  bool checkBit(int bit) =>
      barriers[barriers.length - bit - 1].compareTo('1') == 0;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(0))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(1))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(2))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(3))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(4))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 3),
                Flexible(
                    flex: 2, child: HorizontalBarrier(isOccupied: checkBit(5))),
                const Spacer(),
                Flexible(
                    flex: 2, child: HorizontalBarrier(isOccupied: checkBit(6))),
                const Spacer(),
                Flexible(
                    flex: 2, child: HorizontalBarrier(isOccupied: checkBit(7))),
                const Spacer(),
                Flexible(
                    flex: 2, child: HorizontalBarrier(isOccupied: checkBit(8))),
                const Spacer(),
                Flexible(
                    flex: 2, child: HorizontalBarrier(isOccupied: checkBit(9))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(10))),
                const SizedBox(width: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(11))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(12))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(13))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(14))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(15))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 3),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(16))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(17))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(18))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(19))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(20))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(21))),
                const SizedBox(width: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(22))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(23))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(24))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(25))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(26))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 3),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(27))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(28))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(29))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(30))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(31))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(32))),
                const SizedBox(width: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(33))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(34))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(35))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(36))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(37))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 3),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(38))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(39))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(40))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(41))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(42))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(43))),
                const SizedBox(width: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(44))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(45))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(46))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(47))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(48))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const SizedBox(width: 3),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(49))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(50))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(51))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(52))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(53))),
                const Spacer(),
                Flexible(
                    flex: 2,
                    child: HorizontalBarrier(isOccupied: checkBit(54))),
                const SizedBox(width: 3),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(55))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(56))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(57))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(58))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
                const Spacer(),
                Flexible(
                    flex: 2, child: VerticalBarrier(isOccupied: checkBit(59))),
                const Spacer(),
                const Flexible(flex: 12, child: Cell()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
