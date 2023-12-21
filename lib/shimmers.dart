import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

Shimmer createShimmerFrom(BuildContext context, Widget child) {
  var theme = Theme.of(context);
  return Shimmer.fromColors(
    baseColor: theme.colorScheme.surfaceVariant,
    highlightColor: theme.colorScheme.surfaceTint,
    child: child,
  );
}
