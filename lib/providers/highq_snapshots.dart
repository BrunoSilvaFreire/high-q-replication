import 'dart:convert';
import 'dart:io';

import 'package:high_q_replication/constants.dart';
import 'package:high_q_replication/snapshots/isheet_snapshot.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:path/path.dart' as path;

part 'highq_snapshots.g.dart';

@Riverpod(keepAlive: true)
class HighQSnapshotsRegistry extends _$HighQSnapshotsRegistry {
  @override
  Future<Map<String, Snapshot>> build() async {
    var snapshots = await Constants.getSnapshotsLocations();
    ref.watch(StreamProvider((ref) => Directory(snapshots).watch()));
    var entries = await Directory(snapshots).list().asyncMap((file) async {
      var fileReader = File(file.path);
      var str = await fileReader.readAsString();
      return MapEntry(
          path.basename(file.path), iSheetSnapshot.fromJson(jsonDecode(str)));
    }).toList();
    return Map.fromEntries(entries);
  }

  Future addSnapshot(String name, iSheetSnapshot snapshot) async {
    var existings = await future;
    existings[name] = snapshot;
    state = AsyncData(existings);
  }
}

@riverpod
class HighQSnapshots extends _$HighQSnapshots {
  @override
  Future<Snapshot?> build(String snapshotName) async {
    var registry = ref.watch(highQSnapshotsRegistryProvider);
    return registry.whenOrNull(
      data: (data) {
        return data[snapshotName];
      },
    );
  }
}
