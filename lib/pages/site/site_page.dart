import 'dart:convert';
import 'dart:io';

import 'package:path/path.dart' as path;
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/constants.dart';
import 'package:high_q_replication/models/columns/column.dart';
import 'package:high_q_replication/models/columns/high_qi_sheet_columns.dart';
import 'package:high_q_replication/models/isheet/isheet.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_isheet_columns.dart';
import 'package:high_q_replication/providers/highq_isheets.dart';
import 'package:high_q_replication/providers/highq_sites.dart';
import 'package:high_q_replication/providers/highq_snapshots.dart';
import 'package:high_q_replication/shimmers.dart';
import 'package:high_q_replication/snapshots/isheet_snapshot.dart';

class SitePage extends ConsumerWidget {
  final HighQSite site;
  final HighQDomain domain;

  const SitePage({
    super.key,
    required this.site,
    required this.domain,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var theme = Theme.of(context);
    var isheets = ref.watch(highQISheetsProvider.call(site, domain));
    return Scaffold(
      appBar: AppBar(
        title: Text(site.sitename ?? "Unnamed"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(32),
        child: CustomScrollView(
          shrinkWrap: true,
          anchor: 1.0,
          slivers: [
            SliverToBoxAdapter(
              child: Text(
                "ISheets",
                style: theme.textTheme.displayMedium,
              ),
            ),
            isheets.when(
              data: (data) {
                var sheets = data?.isheet;
                if (sheets == null) {
                  return const SliverToBoxAdapter(
                    child: Text("No data."),
                  );
                }
                if (sheets.isEmpty) {
                  return const SliverToBoxAdapter(
                    child: Text("This site has no sheets."),
                  );
                }
                return SliverList.list(
                  children: [
                    for (var sheet in sheets) _ISheetCard(sheet, domain),
                  ],
                );
              },
              error: (error, stackTrace) {
                return Text("Error calculating iSheets: ${error}");
              },
              loading: () {
                return SliverList.list(
                  children: List.generate(
                    4,
                    (index) => createShimmerFrom(
                      context,
                      const Card(),
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}

class _ISheetCard extends ConsumerStatefulWidget {
  final Isheet sheet;
  final HighQDomain domain;

  const _ISheetCard(this.sheet, this.domain);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _ISheetCardState();
  }
}

class _ISheetCardState extends ConsumerState<_ISheetCard> {
  Future<void>? _future;

  @override
  Widget build(BuildContext context) {
    var sheet = widget.sheet;
    var sheetId = sheet.id!;
    var columns =
        ref.watch(highQISheetColumnsProvider.call(sheetId, widget.domain));
    var numColumns = columns.whenOrNull(
      data: (data) {
        return data?.column?.length;
      },
    );
    return Card(
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ExpansionTile(
            leading: const Icon(Icons.table_chart),
            title: Text(sheet.name ?? "Unnamed"),
            subtitle: numColumns != null ? Text("$numColumns columns") : null,
            shape: const Border(),
            children: columns.whenOrNull(
                  data: (data) {
                    return [
                      for (var column in data?.column ?? [])
                        ListTile(
                          leading: Icon(_getIcon(column.type)),
                          title:
                              Text(column.title ?? column.columnId.toString()),
                          subtitle: Text(column.type.toString()),
                        )
                    ];
                  },
                ) ??
                [],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _buildColumnsData(context, columns),
          ),
        ],
      ),
    );
  }

  List<Widget> _buildColumnsData(
    BuildContext context,
    AsyncValue<HighQiSheetColumnList?> columns,
  ) {
    return columns.when(
      data: (data) {
        var list = columns.value?.column;
        if (list != null) {
          var theme = Theme.of(context);
          return [
            FutureBuilder(
              future: _future,
              builder: (context, snapshot) {
                switch (snapshot.connectionState) {
                  case ConnectionState.done:
                  case ConnectionState.none:
                    return ButtonBar(
                      children: [
                        TextButton.icon(
                          icon: const Icon(Icons.save),
                          style: TextButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            foregroundColor: theme.colorScheme.onPrimary,
                            iconColor: theme.colorScheme.onPrimary,
                          ),
                          onPressed: () {
                            setState(() {
                              _future = _doSaveSnapshot(
                                widget.sheet,
                                columns.requireValue!.column!,
                              );
                            });
                          },
                          label: Text("Save Snapshot"),
                        ),
                        TextButton.icon(
                          icon: Icon(Icons.difference),
                          style: TextButton.styleFrom(
                            backgroundColor: theme.colorScheme.primary,
                            foregroundColor: theme.colorScheme.onPrimary,
                            iconColor: theme.colorScheme.onPrimary,
                          ),
                          onPressed: () {
                            // TODO
                          },
                          label: Text("Compare With"),
                        )
                      ],
                    );
                  default:
                    return const LinearProgressIndicator();
                }
              },
            )
          ];
        } else {
          return [const Text("No columns.")];
        }
      },
      error: (error, stackTrace) {
        return [Text(error.toString())];
      },
      loading: () {
        return [
          createShimmerFrom(
            context,
            ListTile(title: Text("Loading...")),
          )
        ];
      },
    );

    return [
      const Text("No columns found."),
    ];
  }

  Future<void> _doSaveSnapshot(Isheet sheet, List<HighQColumn> columns) async {
    var sheet = widget.sheet;
    var dir = await Constants.getSnapshotsLocations();
    var result = await FilePicker.platform.saveFile(
      dialogTitle: "Save",
      fileName: "${sheet.name}-${DateTime.timestamp()}.snapshot.json",
      initialDirectory: dir,
      type: FileType.custom,
      allowedExtensions: [".json"],
    );

    if (result != null) {
      File file = File(result);
      var snapshot = iSheetSnapshot(sheet: sheet, columns: columns);
      var json = jsonEncode(
        snapshot.toJson(),
      );
      await file.writeAsString(json);
      var registry = ref.read(highQSnapshotsRegistryProvider.notifier);
      await registry.addSnapshot(
        path.basename(file.path),
        snapshot,
      );
    }
  }

  IconData _getIcon(String? type) {
    switch (type) {
      case "Choice":
        return Icons.list;
      case "Single line text":
        return Icons.short_text;
      case "Multiple line text":
        return Icons.text_snippet_outlined;
      case "User lookup":
        return Icons.account_circle;
      case "Attachment":
        return Icons.attach_file;
      case "Date and time":
        return Icons.date_range;
      case "Number":
        return Icons.numbers;
      case "Calculation":
        return Icons.calculate;
      default:
        return Icons.question_mark;
    }
  }
}
