import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/app_tutorial/app_tutorial_screen.dart';

import '../../presentation/screens/screens.dart';

// GoRouter configuration
final appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: '/cards',
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: '/animated',
      builder: (context, state) => const AnimatedScreen(),
    ),
     GoRoute(
      path: '/AppTutorial',
      builder: (context, state) => const AppTutorialScreen(),
    ),
     GoRoute(
      path: '/InfiniteScroll',
      builder: (context, state) => const InfiniteScreen(),
    ),
    GoRoute(
      path: '/Progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: '/SnackBar',
      builder: (context, state) => const SnackBarScreen(),
    ),
    GoRoute(
      path: '/UiControl',
      builder: (context, state) => const UiControlsScreen(),
    ),
  ],
);