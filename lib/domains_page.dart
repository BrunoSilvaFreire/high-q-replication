import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/home.dart';
import 'package:high_q_replication/providers/highq.dart';
import 'package:high_q_replication/providers/highq_status.dart';
import 'package:shimmer/shimmer.dart';

EdgeInsets _domainMargin() => const EdgeInsets.symmetric(
      horizontal: 32,
      vertical: 8,
    );

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
                  for (var domain in data) _DomainIndicator(domain: domain)
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
  Future? _authenticationFuture;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Dialog(
      child: FutureBuilder(
          future: _authenticationFuture,
          builder: (context, snapshot) {
            return Column(
              children: [
                const ListTile(
                  leading: Icon(Icons.domain_add),
                  title: Text("Add Domain"),
                ),
                if (!snapshot.hasData)
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
                              hintText:
                                  "Probably a triple digit number (e.g. 108)",
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
                          _clientSecret.text,
                        );
                        var registry =
                            ref.read(highQDomainRegistryProvider.notifier);
                        await registry.addDomain(domain);
                        var read = ref.read(highQDomainStatusRegistryProvider
                            .call(domain)
                            .notifier);
                        _authenticationFuture = read.authenticate();
                        var name = await _authenticationFuture;
                        Navigator.pop(context, domain);
                      },
                      child: const Text("Add"),
                    ),
                  ],
                )
              ],
            );
          }),
    );
  }
}

class _DomainIndicator extends ConsumerStatefulWidget {
  final HighQDomain domain;

  const _DomainIndicator({super.key, required this.domain});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() {
    return _DomainIndicatorState();
  }
}

class _DomainIndicatorState extends ConsumerState<_DomainIndicator> {
  Future? _authFuture;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var family = highQDomainStatusRegistryProvider.call(widget.domain);
    var status = ref.watch(family);
    return Card(
      margin: _domainMargin(),
      color: status.whenOrNull(
        error: (error, stackTrace) => theme.colorScheme.errorContainer,
      ),
      child: FutureBuilder(
        builder: (context, snapshot) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTileTheme(
            data: _getTheme(status, theme),
            child: ListTile(
              title: Text(widget.domain.name),
              subtitle: Text(
                _getSubtitle(status),
                style: theme.textTheme.labelSmall,
              ),
              leading: status.whenOrNull(
                loading: () {
                  return const CircularProgressIndicator();
                },
                data: (data) {
                  switch (data.status) {
                    case HighQDomainStatus.unauthenticated:
                    case HighQDomainStatus.unauthorized:
                      return IconButton.filledTonal(
                        onPressed: () async {
                          setState(() {
                            _authFuture =
                                ref.read(family.notifier).authenticate();
                          });
                        },
                        icon: const Icon(Icons.refresh),
                      );
                    case HighQDomainStatus.authenticated:
                    case HighQDomainStatus.healthy:
                      return const Icon(
                        Icons.verified,
                      );
                  }
                },
              ),
              trailing: IconButton(
                onPressed: () async {
                  var delete = await Navigator.push(
                    context,
                    DialogRoute(
                      context: context,
                      builder: (context) => _RemoveDomainDialog(
                        domain: widget.domain,
                      ),
                    ),
                  );

                  if (delete) {
                    await ref
                        .read(highQDomainRegistryProvider.notifier)
                        .removeDomain(widget.domain);
                  }
                },
                icon: const Icon(Icons.delete_forever),
              ),
            ),
          ),
        ),
        future: _authFuture,
      ),
    );
  }

  ListTileThemeData? _getTheme(
      AsyncValue<HighQDomainMeta> status, ThemeData theme) {
    return status.whenOrNull(
      error: (error, stackTrace) {
        return theme.listTileTheme.copyWith(
          textColor: theme.colorScheme.onErrorContainer,
          iconColor: theme.colorScheme.onErrorContainer,
        );
      },
    );
  }

  String _getSubtitle(AsyncValue<HighQDomainMeta> status) {
    return status.when(
      data: (data) {
        return "${widget.domain.domain}: ${data.status}";
      },
      error: (error, stackTrace) {
        return "${widget.domain.domain}, error: $error";
      },
      loading: () {
        return "${widget.domain.domain}: loading...";
      },
    );
  }
}
