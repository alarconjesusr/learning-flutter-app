import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:widget_app/config/menu_items.dart';

class HomeScreen extends StatelessWidget {
  static String name = 'home_screen';

  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (context, index) {
        final item = appMenuItems[index];
        return _CustomTile(item: item);
      },
    );
  }
}

class _CustomTile extends StatelessWidget {
  const _CustomTile({required this.item});

  final MenuItems item;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme.primary;
    return ListTile(
      leading: Icon(item.icon, color: color),
      title: Text(item.title),
      subtitle: Text(item.subtitle),
      onTap: () => context.pushNamed(item.routeName),
    );
  }
}
