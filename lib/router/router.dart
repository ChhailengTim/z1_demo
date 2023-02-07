import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:new_99/screens/auth_screen/sign_in_out.dart';
import 'package:new_99/screens/first_screen.dart';
import 'package:new_99/screens/second_screen.dart';

/// The route configuration.
final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return LoginScreen(
          key: state.pageKey,
        );
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'firstscreen',
          pageBuilder: (context, state) => NoTransitionPage(
            key: state.pageKey,
            child: const FirstScreen(),
          ),
        ),
        GoRoute(
          path: 'secondscreen',
          builder: (_, GoRouterState state) {
            return SecondScreen(
              key: state.pageKey,
            );
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
