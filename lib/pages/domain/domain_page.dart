import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_sites.dart';
import 'package:high_q_replication/shimmers.dart';
import 'package:shimmer/shimmer.dart';

class DomainPage extends ConsumerWidget {
  final HighQDomain domain;

  const DomainPage({super.key, required this.domain});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var sites = ref.watch(highQSitesProvider.call(domain));
    return Scaffold(
      appBar: AppBar(
        title: Text(
          domain.name,
        ),
      ),
      body: Column(
        children: [
          _buildSites(context, sites),
        ],
      ),
    );
  }

  Widget _buildSites(BuildContext context, AsyncValue<HighQSiteList?> sites) {
    return sites.when(
      data: (data) {
        var sites = data?.site;
        if (sites == null || sites.isEmpty) {
          return const Text("No sites");
        }
        return GridView.extent(
          maxCrossAxisExtent: 300,
          shrinkWrap: true,
          children: [for (var site in sites) _HighQSiteCard(site)],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text(error.toString());
      },
      loading: () {
        return GridView.extent(
          maxCrossAxisExtent: 300,
          shrinkWrap: true,
          children:
              List.generate(6, (index) => createShimmerFrom(context, const Card())),
        );
      },
    );
  }
}

class _HighQSiteCard extends StatelessWidget {
  final HighQSite site;

  const _HighQSiteCard(this.site);

  @override
  Widget build(BuildContext context) {
    var createddate = site.createddate;
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            ListTile(
              title: Text(site.sitename ?? "Unnamed"),
              leading: _getLeading(),
              subtitle:
                  createddate == null ? null : Text("Created $createddate"),
            ),
          ],
        ),
      ),
    );
  }

  Widget _getLeading() {
    switch (site.status) {
      case "Ativo":
        return const Icon(Icons.domain_verification);
      default:
        return const Icon(Icons.question_mark);
    }
  }
}
