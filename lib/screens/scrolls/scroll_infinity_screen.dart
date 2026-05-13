import 'package:flutter/material.dart';

class ScrollInfinityScreen extends StatefulWidget {
  static const String name = 'scroll_infinity_screen';
  const ScrollInfinityScreen({super.key});

  @override
  State<ScrollInfinityScreen> createState() => _ScrollInfinityScreenState();
}

class _ScrollInfinityScreenState extends State<ScrollInfinityScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Scroll Infinity Screen')),
      body: RefreshIndicator(
        onRefresh: () async {
          await Future.delayed(const Duration(seconds: 2));
          setState(() {});
        },
        child: ListView.builder(
          itemCount: 100,
          itemBuilder: (context, index) {
            return FadeInImage(
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
              placeholder: AssetImage("assets/images/jar-loading.gif"),
              image: NetworkImage(
                "https://picsum.photos/500/300?random=$index",
              ),
            );
          },
        ),
      ),
    );
  }
}
