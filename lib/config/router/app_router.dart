import 'package:go_router/go_router.dart';
import 'package:widget_app/screens/screens.dart';

final appRouter = GoRouter(
  routes: [
    GoRoute(
      name: HomeScreen.name,
      path: '/',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      name: ProfileScreen.name,
      path: '/profile',
      builder: (context, state) => const ProfileScreen(),
    ),
    GoRoute(
      name: SettingScreen.name,
      path: '/settings',
      builder: (context, state) => const SettingScreen(),
    ),
    GoRoute(
      name: ButtonsScreen.name,
      path: '/buttons',
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      name: CardScreen.name,
      path: '/cards',
      builder: (context, state) => const CardScreen(),
    ),
    GoRoute(
      name: ProgressScreen.name,
      path: '/progress',
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      name: AnimatedContainerScreen.name,
      path: '/animated-container',
      builder: (context, state) => const AnimatedContainerScreen(),
    ),
    GoRoute(
      name: UiControlsScreen.name,
      path: '/ui-controls',
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      name: PresentationScreen.name,
      path: '/presentation',
      builder: (context, state) => const PresentationScreen(),
    ),
    GoRoute(
      name: ScrollInfinityScreen.name,
      path: '/scroll-infinity',
      builder: (context, state) => const ScrollInfinityScreen(),
    ),
  ],
);
