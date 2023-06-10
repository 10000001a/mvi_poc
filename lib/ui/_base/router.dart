import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../home/home_page.dart';
import '../story/story_list_page.dart';

final GoRouter router = GoRouter(
  debugLogDiagnostics: true,
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) => const HomePage(),
      routes: <RouteBase>[
        GoRoute(
          path: 'story',
          builder: (BuildContext context, GoRouterState state) =>
              const StoryListPage(),
        ),
      ],
    ),
  ],
);
