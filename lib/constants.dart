import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as path;

class Constants {
  static Future<String> getSnapshotsLocations() async {
    var directory = await getApplicationSupportDirectory();
    var dir = path.join(directory.path, "snapshots");
    await Directory(dir).create(recursive: true);
    return dir;
  }
}
