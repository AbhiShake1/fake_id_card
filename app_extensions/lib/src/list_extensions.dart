extension ListX<T> on List<T> {
  List<T> swap(T e1, T e2) => [...this]
    ..[indexOf(e1)] = e2
    ..[indexOf(e2)] = e1;

  List<T> operator +(List<T> otherList) => [...this, ...otherList];
}

extension Iter2dX on Iterable<List<String>> {
  Iterable<List<String>> get groupByPrefix {
    final map = <String, List<String>>{};
    for (final e in this) {
      final key = e.first;
      map[key] = (map[key]?..add(e[1])) ?? [e[1]];
    }
    return map.map((k, v) => MapEntry(k, [k, ...v])).values;
  }
}
