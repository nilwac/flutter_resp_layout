import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter_responsive_layout/responsive/responsive_choice.dart';
import 'package:flutter_responsive_layout/providers.dart';

void main() {
  // turn off the # in the URLs on the web
  GoRouter.setUrlPathStrategy(UrlPathStrategy.path);
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => ContentDisplay()),
    ],
    child: FlutterResponsiveLayout()));
}

class FlutterResponsiveLayout extends StatelessWidget {
  FlutterResponsiveLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context)  {
    return MaterialApp.router(
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      title: 'Flutter Responsive Layout',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
    );
  }

  /*
    Pages will be set in /sidebars/navigation.dart
    Listener are in /responsive/###Body.dart
  */
  final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
            key: state.pageKey,
            child: const Responsive_choice()),
      ),
      GoRoute(
        path: '/2',
        pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
            key: state.pageKey,
            child: const Responsive_choice()),
      ),
      GoRoute(
        path: '/3',
        pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
            key: state.pageKey,
            child: const Responsive_choice()),
      ),
      GoRoute(
        path: '/4',
        pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
            key: state.pageKey,
            child: const Responsive_choice()),
      ),
      GoRoute(
        path: '/5',
        pageBuilder: (BuildContext context, GoRouterState state) => NoTransitionPage(
            key: state.pageKey,
            child: const Responsive_choice()),
      ),
    ],
  );
}
