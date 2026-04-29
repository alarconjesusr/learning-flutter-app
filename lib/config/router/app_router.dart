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
  ],
);
