import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/models/columns/high_qi_sheet_columns.dart';
import 'package:high_q_replication/models/isheet/isheet.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_isheet_columns.dart';
import 'package:high_q_replication/providers/highq_isheets.dart';
import 'package:high_q_replication/providers/highq_sites.dart';
import 'package:high_q_replication/shimmers.dart';

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

class _ISheetCard extends ConsumerWidget {
  final Isheet sheet;
  final HighQDomain domain;

  const _ISheetCard(this.sheet, this.domain);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var columns = ref.watch(highQISheetColumnsProvider.call(sheet.id!, domain));
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
    AsyncValue<HighQISheetColumnList?> columns,
  ) {
    return columns.when(
      data: (data) {
        var list = columns.value?.column;
        if (list != null) {
          var theme = Theme.of(context);
          return [
            ButtonBar(
              children: [
                TextButton.icon(
                  icon: Icon(Icons.save),
                  style: TextButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    iconColor: theme.colorScheme.onPrimary,
                  ),
                  onPressed: () {
                    // TODO
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
