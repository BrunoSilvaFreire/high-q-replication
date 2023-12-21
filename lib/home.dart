import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/pages/domains/domains_page.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/states_page.dart';

typedef WidgetBuilder = HomePageView Function(BuildContext context);
typedef TabBuilder = Tab Function(BuildContext context);

abstract class HomePageView extends ConsumerWidget {
  FloatingActionButton? fab(BuildContext context) {
    return null;
  }
}

class HomeView {
  final TabBuilder tab;
  final WidgetBuilder builder;

  HomeView({
    required this.builder,
    required this.tab,
  });
}

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends ConsumerState<HomePage>
    with SingleTickerProviderStateMixin {
  final _views = [
    HomeView(
      tab: (context) => const Tab(
        text: "Domains",
        icon: Icon(Icons.domain),
      ),
      builder: (context) => DomainsPage(),
    ),
    HomeView(
      tab: (context) => const Tab(text: "States", icon: Icon(Icons.camera_alt)),
      builder: (context) => StatesPage(),
    )
  ];

  late final _tabController = TabController(
    length: _views.length,
    vsync: this,
  );
  late var provider = ChangeNotifierProvider(
    (ref) => _tabController,
  );

  @override
  Widget build(BuildContext context) {
    ref.watch(provider);
    var views = _views.map((e) => e.builder(context)).toList();
    return Scaffold(
      appBar: TabBar(
        controller: _tabController,
        tabs: _views.map((e) => e.tab(context)).toList(),
      ),
      floatingActionButton: views[_tabController.index].fab(context),
      body: TabBarView(
        controller: _tabController,
        children: views,
      ),
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }
}
