import 'package:flutter/material.dart';

class SettingScreen extends StatelessWidget {
  static const String name = 'setting_screen';

  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Setting Screen')),
      body: const Placeholder(),
    );
  }
}
