import 'package:flutter/material.dart';
import 'package:widget_app/screens/screens.dart';

class MenuItems {
  final int id;
  final String title;
  final String subtitle;
  final String route;
  final IconData icon;
  final String routeName;

  const MenuItems({
    required this.id,
    required this.title,
    required this.subtitle,
    required this.route,
    required this.icon,
    required this.routeName,
  });
}

const List<MenuItems> appMenuItems = [
  MenuItems(
    id: 1,
    title: 'Profile',
    subtitle: 'View your profile',
    route: '/profile',
    icon: Icons.person,
    routeName: ProfileScreen.name,
  ),
  MenuItems(
    id: 2,
    title: 'Settings',
    subtitle: 'Adjust your preferences',
    route: '/settings',
    icon: Icons.settings,
    routeName: SettingScreen.name,
  ),
  MenuItems(
    id: 3,
    title: 'Buttons',
    subtitle: 'Explore different buttons',
    route: '/buttons',
    icon: Icons.smart_button,
    routeName: ButtonsScreen.name,
  ),
  MenuItems(
    id: 4,
    title: 'Cards',
    subtitle: 'Explore different cards',
    route: '/cards',
    icon: Icons.credit_card,
    routeName: CardScreen.name,
  ),
  MenuItems(
    id: 5,
    title: 'Progress',
    subtitle: 'View your progress',
    route: '/progress',
    icon: Icons.show_chart,
    routeName: ProgressScreen.name,
  ),
];
