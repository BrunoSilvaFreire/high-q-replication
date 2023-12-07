import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/home.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:shimmer/shimmer.dart';

class DomainsPage extends HomePageView {
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var domains = ref.watch(highQDomainRegistryProvider);
    var theme = Theme.of(context);
    return ListView(
      shrinkWrap: true,
      children: [
        ...domains.when(
          data: (data) {
            switch (data) {
              case []:
                return [
                  Center(
                    child: Card.filled(
                      margin: const EdgeInsets.all(16),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: [
                            Text(
                              "No domains added.",
                              style: theme.textTheme.headlineSmall,
                            ),
                            const Text("Click \"Add Domain\" to add one."),
                          ],
                        ),
                      ),
                    ),
                  )
                ];
              default:
                return [
                  for (var domain in data)
                    Card(
                      margin: _domainMargin(),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          title: Text(domain.name),
                          subtitle: Text(
                            domain.domain,
                            style: theme.textTheme.labelSmall,
                          ),
                          trailing: IconButton(
                            onPressed: () async {
                              var delete = await Navigator.push(
                                context,
                                DialogRoute(
                                  context: context,
                                  builder: (context) =>
                                      _RemoveDomainDialog(domain: domain),
                                ),
                              );

                              if (delete) {
                                await ref
                                    .read(highQDomainRegistryProvider.notifier)
                                    .removeDomain(domain);
                              }
                            },
                            icon: const Icon(Icons.delete_forever),
                          ),
                        ),
                      ),
                    )
                ];
            }
          },
          error: (error, stackTrace) {
            return [];
          },
          loading: () {
            return List.generate(
              4,
              (index) => Shimmer.fromColors(
                baseColor: theme.colorScheme.surfaceVariant,
                highlightColor: theme.colorScheme.surfaceTint,
                child: Card(
                  margin: _domainMargin(),
                  child: SizedBox(
                    height: 64,
                  ),
                ),
              ),
            );
          },
        )
      ],
    );
  }

  EdgeInsets _domainMargin() =>
      EdgeInsets.symmetric(horizontal: 32, vertical: 8);

  @override
  FloatingActionButton? fab(BuildContext context) {
    return FloatingActionButton.extended(
      label: const Text("Add Domain"),
      icon: const Icon(Icons.domain_add),
      onPressed: () async {
        await Navigator.push(
          context,
          DialogRoute(
            builder: (context) => _AddDomainDialog(),
            context: context,
          ),
        );
      },
    );
  }
}

class _RemoveDomainDialog extends StatelessWidget {
  const _RemoveDomainDialog({
    super.key,
    required this.domain,
  });

  final HighQDomain domain;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return AlertDialog(
      icon: const Icon(Icons.shield),
      title: Text("Are you sure you want to remove ${domain.name}?"),
      content: const Text("This action is not reversible."),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.pop(context, false);
          },
          child: const Text("Cancel"),
        ),
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: theme.colorScheme.error,
            foregroundColor: theme.colorScheme.onError,
          ),
          onPressed: () async {
            Navigator.pop(context, true);
          },
          child: const Text("Remove Domain"),
        )
      ],
    );
  }
}

class _AddDomainDialog extends ConsumerStatefulWidget {
  @override
  ConsumerState createState() {
    return _AddDomainDialogState();
  }
}

class _AddDomainDialogState extends ConsumerState<_AddDomainDialog> {
  final _name = TextEditingController();
  final _url = TextEditingController();
  final _clientId = TextEditingController();
  final _clientSecret = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Dialog(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.domain_add),
            title: Text("Add Domain"),
          ),
          Form(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextField(
                    decoration: const InputDecoration(
                      label: Text("Name"),
                      icon: Icon(Icons.abc),
                    ),
                    controller: _name,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                        label: Text("URL"),
                        icon: Icon(Icons.domain),
                        hintText: "https://yourdomain.highq.com/"),
                    controller: _url,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      label: Text("Client ID"),
                      icon: Icon(Icons.perm_identity),
                      hintText: "Probably a triple digit number (e.g. 108)",
                    ),
                    controller: _clientId,
                  ),
                  TextField(
                    decoration: const InputDecoration(
                      label: Text("Client Secret"),
                      icon: Icon(Icons.generating_tokens),
                      hintText:
                          "Your secret will be stored locally on your device.",
                    ),
                    obscureText: true,
                    controller: _clientSecret,
                  )
                ],
              ),
            ),
          ),
          ButtonBar(
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: theme.colorScheme.primary,
                    foregroundColor: theme.colorScheme.onPrimary,
                    elevation: 0),
                onPressed: () async {
                  var domain = HighQDomain(
                    _name.text,
                    _url.text,
                    _clientId.text,
                    _clientId.text,
                  );
                  var registry = ref.read(highQDomainRegistryProvider.notifier);
                  await registry.addDomain(domain);
                  Navigator.pop(context, domain);
                },
                child: const Text("Add"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
