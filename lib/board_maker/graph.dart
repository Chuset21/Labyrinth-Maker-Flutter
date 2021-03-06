class Graph {
  Graph(this.vertices) {
    for (int i = 0; i < vertices; i++) {
      adjList.add([]);
    }
  }

  final int vertices;
  final List<List<int>> adjList = [];

  void addEdge(int source, int destination) {
    adjList[source].add(destination);
    adjList[destination].add(source);
  }

  void removeEdge(int source, int destination) {
    adjList[source].remove(destination);
    adjList[destination].remove(source);
  }

  bool isConnected() {
    final List<bool> visited = List.filled(vertices, false);

    _dfs(0, visited);

    return vertices == visited.where((element) => element).length;
  }

  void _dfs(int source, List<bool> visited) {
    visited[source] = true;

    for (int i = 0; i < adjList[source].length; i++) {
      final int neighbour = adjList[source][i];
      if (!visited[neighbour]) {
        _dfs(neighbour, visited);
      }
    }
  }
}
