import 'dart:math';

import 'package:labyrinth_maker/board_maker/graph.dart';

class BoardMaker {
  static const _cellNumber = 36;
  static const _barrierLocations = 60;
  static const _rowLength = 6;
  static const _maxBarriers = 24;

  final Map<int, List<int>> _map = {};

  final _graph = Graph(_cellNumber);
  final _canRemoveEdgeSet = [for (int i = 0; i < _barrierLocations; i++) i];
  final Set _barrierEdgeSet = {};
  final _rng = Random();

  BoardMaker() {
    const limit = _rowLength - 1;

    int count = 0;
    for (int i = 0; i < _rowLength; i++) {
      for (int j = 0; j < limit; j++) {
        final x = i * _rowLength + j;
        final edge = [x, x + 1];
        _graph.addEdge(edge[0], edge[1]);
        _map[count++] = edge;
      }

      for (int j = 0; j < _rowLength && i < limit; j++) {
        final x = i * _rowLength + j;
        final edge = [x, x + _rowLength];
        _graph.addEdge(edge[0], edge[1]);
        _map[count++] = edge;
      }
    }
  }

  void _removeRandomEdge() {
    int removeRandEdge() {
      final result =
          _canRemoveEdgeSet.removeAt(_rng.nextInt(_canRemoveEdgeSet.length));
      final x = _map[result]!;

      _graph.removeEdge(x[0], x[1]);

      return result;
    }

    int edge = removeRandEdge();
    while (!_graph.isConnected()) {
      final x = _map[edge]!;
      _graph.addEdge(x[0], x[1]);

      edge = removeRandEdge();
    }

    _barrierEdgeSet.add(edge);
  }

  List<bool> getListOfBarriers(int barrierNum) {
    barrierNum = max(1, min(barrierNum, _maxBarriers));
    final List<bool> result = List.filled(_barrierLocations, false);

    while (_barrierEdgeSet.length < barrierNum) {
      _removeRandomEdge();
    }

    for (int e in _barrierEdgeSet) {
      result[e] = true;
    }

    return result;
  }
}
