class Diff {
  Map<String, dynamic> added = {};
  Map<String, dynamic> removed = {};
  Map<String, dynamic> changed = {};
  Map<String, Diff> children = {};

  // Helper method to check if there are any differences
  bool get hasDifferences =>
      added.isNotEmpty ||
      removed.isNotEmpty ||
      changed.isNotEmpty ||
      children.isNotEmpty;

  // Helper method to print the diff for debugging
  @override
  String toString() {
    return 'Added: $added\nRemoved: $removed\nChanged: $changed\nChildren: $children';
  }

  // Main method to calculate the diff
  static Diff calculate(
    Map<String, dynamic> from,
    Map<String, dynamic> to,
  ) {
    final diff = Diff();

    // Process keys present in the old map
    for (final key in from.keys) {
      var old = from[key];
      if (!to.containsKey(key)) {
        diff.removed[key] = old;
      } else {
        var now = to[key];
        if (old != now) {
          if (old is Map<String, dynamic> && now is Map<String, dynamic>) {
            final childDiff = calculate(old, now);
            if (childDiff.hasDifferences) {
              diff.children[key] = childDiff;
            }
          } else {
            diff.changed[key] = now;
          }
        }
      }
    }

    // Process keys present only in the new map
    to.keys.where((key) => !from.containsKey(key)).forEach((key) {
      diff.added[key] = to[key];
    });

    return diff;
  }
}
