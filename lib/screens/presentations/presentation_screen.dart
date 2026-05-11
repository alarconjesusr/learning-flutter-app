import 'package:flutter/material.dart';

class PresentationScreen extends StatelessWidget {
  static const String name = 'presentation_screen';
  const PresentationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Presentation Screen')),
      body: const Placeholder(),
    );
  }
}
