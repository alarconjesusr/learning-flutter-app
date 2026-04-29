import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  static const String name = 'progress_screen';
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Progress Screen')),
      body: _ProgressView(),
    );
  }
}

class _ProgressView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Loading...'),
          SizedBox(height: 20),
          CircularProgressIndicator(),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [Expanded(child: LinearProgressIndicator())],
          // ),
          _ProgreesControlled(),
        ],
      ),
    );
  }
}

class _ProgreesControlled extends StatelessWidget {
  const _ProgreesControlled();

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(
        const Duration(milliseconds: 300),
        (value) => (value * 0.2).clamp(0.0, 1.0),
      ).takeWhile((value) => value <= 1.0),
      builder: (context, asyncSnapshot) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: asyncSnapshot.data),
              SizedBox(width: 20),
              // Expanded(child: CircularProgressIndicator.adaptive()),
              Expanded(child: LinearProgressIndicator(value: 0.0)),
            ],
          ),
        );
      },
    );
  }
}
