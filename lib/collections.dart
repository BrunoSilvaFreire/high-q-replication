extension Queries<T> on Iterable<T> {
  T? firstOrNullWhere(bool Function(T) predicate) {
    for (var value in this) {
      if (predicate(value)) {
        return value;
      }
    }
    return null;
  }
}
