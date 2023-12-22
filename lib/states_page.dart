import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:high_q_replication/constants.dart';
import 'package:high_q_replication/home.dart';
import 'package:high_q_replication/providers/highq_snapshots.dart';
import 'package:high_q_replication/snapshots/isheet_snapshot.dart';
import 'package:url_launcher/url_launcher.dart';

class SnapshotsPage extends HomePageView {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var maps = ref.watch(highQSnapshotsRegistryProvider);
    return maps.when(data: (Map<String, Snapshot> data) {
      if (data.isEmpty) {
        return const Center(
          child: Text("No snapshots"),
        );
      }
      var theme = Theme.of(context);
      return CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: ButtonBar(children: [
              ElevatedButton.icon(
                onPressed: () async {
                  var directory = await Constants.getSnapshotsLocations();
                  await launchUrl(Uri.file(directory));
                },
                style: ElevatedButton.styleFrom(
                  foregroundColor: theme.colorScheme.onPrimary,
                  backgroundColor: theme.colorScheme.primary
                ),
                icon: const Icon(Icons.folder),
                label: const Text("Open snapshots directory"),
              )
            ]),
          ),
          SliverGrid.extent(
            maxCrossAxisExtent: 300,
            children: [
              for (var entry in data.entries)
                Card(
                  child: ListTile(
                    leading: const Icon(Icons.photo_camera),
                    title: Text(entry.key),
                  ),
                )
            ],
          )
        ],
      );
    }, error: (Object error, StackTrace stackTrace) {
      return Center(child: Text(error.toString()));
    }, loading: () {
      return const Center(
        child: CircularProgressIndicator(),
      );
    });
  }
}
