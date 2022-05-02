import 'package:flutter/material.dart';
import 'package:labyrinth_maker/barrier/vertical_barrier.dart';
import 'package:labyrinth_maker/cell.dart';

class Board extends StatelessWidget {
  const Board({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Table(
      defaultColumnWidth: const FlexColumnWidth(),
      children: const [
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
        TableRow(children: [
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: VerticalBarrier(isOccupied: false), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
          TableCell(child: Cell(), verticalAlignment: TableCellVerticalAlignment.middle,),
        ]),
      ],
    );
  }
}
