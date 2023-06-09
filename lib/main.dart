import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'ui/_base/router.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        theme: ThemeData.light(useMaterial3: true)
          ..copyWith(
            appBarTheme: const AppBarTheme(
              color: Colors.blue,
            ),
          ),
        darkTheme: ThemeData.dark(useMaterial3: true),
        routerConfig: router,
      );
}
