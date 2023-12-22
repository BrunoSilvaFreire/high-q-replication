import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/pages/site/site_page.dart';
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
      body: CustomScrollView(
        slivers: [
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
          return const SliverToBoxAdapter(
            child: Text("No sites"),
          );
        }
        return SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: [
            for (var site in sites) _HighQSiteCard(domain, site),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        return Text(error.toString());
      },
      loading: () {
        return SliverGrid.extent(
          maxCrossAxisExtent: 300,
          children: List.generate(
            6,
            (index) => createShimmerFrom(context, const Card()),
          ),
        );
      },
    );
  }
}

class _HighQSiteCard extends StatelessWidget {
  final HighQSite site;
  final HighQDomain domain;

  const _HighQSiteCard(this.domain, this.site);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(
            builder: (context) {
              return SitePage(
                site: site,
                domain: domain,
              );
            },
          ));
        },
        child: Column(
          children: [
            ListTile(
              title: Text(site.sitename ?? "Unnamed"),
              leading: _getLeading(),
              subtitle: Text("Id: ${site.id}"),
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
