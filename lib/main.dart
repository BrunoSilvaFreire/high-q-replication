import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:high_q_replication/home.dart';

void main() {
  runApp(
    ProviderScope(
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        home: HomePage(),
      ),
    ),
  );
}
