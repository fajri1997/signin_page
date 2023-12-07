import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:signin_page/home_screen.dart';
import 'package:signin_page/signed_in.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(routes: <RouteBase>[
  GoRoute(
    path: '/',
    builder: (BuildContext context, GoRouterState state) {
      return HomeScreen();
    },
  ),
  GoRoute(
    path: '/details',
    builder: (BuildContext context, GoRouterState state) {
      return SignInPage(
        accountName: state.extra as String,
      );
    },
  ),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
