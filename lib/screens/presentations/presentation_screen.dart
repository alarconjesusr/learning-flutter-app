import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SlideInfo {
  final String title;
  final String caption;
  final String urlImage;

  SlideInfo(this.title, this.caption, this.urlImage);
}

final sliders = <SlideInfo>[
  SlideInfo(
    'Flutter',
    'Flutter es un framework de desarrollo de aplicaciones móviles, web y de escritorio creado por Google.',
    'assets/images/1.png',
  ),
  SlideInfo(
    'Dart',
    'Dart es un lenguaje de programación desarrollado por Google, utilizado principalmente para construir aplicaciones móviles, web y de escritorio con Flutter.',
    'assets/images/2.png',
  ),
  SlideInfo(
    'Kokiri',
    'Dart es un lenguaje de programación desarrollado por Google, utilizado principalmente para construir aplicaciones móviles, web y de escritorio con Flutter.',
    'assets/images/3.png',
  ),
];

class PresentationScreen extends StatefulWidget {
  static const String name = 'presentation_screen';
  const PresentationScreen({super.key});

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {
  final PageController pageViewController = PageController();
  bool isLastPage = false;

  @override
  void initState() {
    super.initState();

    pageViewController.addListener(() {
      print(pageViewController.page);

      if (pageViewController.page == sliders.length - 1) {
        setState(() => isLastPage = true);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title: const Text('Presentation Screen')),
      body: Stack(
        children: [
          PageView(
            controller: pageViewController,
            children: sliders.map((slide) => Slide(slideInfo: slide)).toList(),
          ),
          Positioned(
            right: 20,
            child: TextButton(
              onPressed: () => context.pop(),
              child: Text("Skip"),
            ),
          ),

          if (isLastPage)
            Positioned(
              bottom: 40,
              right: 40,
              child: FilledButton(
                onPressed: () => context.pop(),
                child: Text('Empezar'),
              ),
            ),
        ],
      ),
    );
  }
}

class Slide extends StatelessWidget {
  final SlideInfo slideInfo;

  const Slide({super.key, required this.slideInfo});

  @override
  Widget build(BuildContext context) {
    final textTitle = Theme.of(context).textTheme.titleLarge;
    final textCaption = Theme.of(context).textTheme.bodyMedium;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image(image: AssetImage(slideInfo.urlImage)),
            const SizedBox(height: 20),
            Text(slideInfo.title, style: textTitle),
            const SizedBox(height: 20),
            Text(
              slideInfo.caption,
              style: textCaption,
              textAlign: TextAlign.start,
            ),
          ],
        ),
      ),
    );
  }
}
