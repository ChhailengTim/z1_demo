import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:new_99/screens/first_screen.dart';
import 'package:new_99/screens/home_screen.dart';
import 'package:new_99/screens/second_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'firstscreen',
          builder: (_, GoRouterState state) {
            return const FirstScreen();
          },
        ),
        GoRoute(
          path: 'secondscreen',
          builder: (_, GoRouterState state) {
            return const SecondScreen();
          },
        ),
      ],
    ),
    // GoRoute(
    //   path: '/',
    //   builder: (BuildContext context, GoRouterState state) {
    //     return const FirstScreen();
    //   },
    // ),
  ],
);
