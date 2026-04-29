import 'package:flutter/material.dart';

const List<Map<String, dynamic>> options = [
  {'title': 'Card Type 1', 'subtitle': 'Descripción de la tarjeta tipo 1'},
  {'title': 'Card Type 2', 'subtitle': 'Descripción de la tarjeta tipo 2'},
  {'title': 'Card Type 3', 'subtitle': 'Descripción de la tarjeta tipo 3'},
  {'title': 'Card Type 3', 'subtitle': 'Descripción de la tarjeta tipo 3'},
  {'title': 'Card Type 3', 'subtitle': 'Descripción de la tarjeta tipo 3'},
  {'title': 'Card Type 3', 'subtitle': 'Descripción de la tarjeta tipo 3'},
];

class CardScreen extends StatelessWidget {
  static const String name = 'card_screen';
  const CardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Card Screen')),
      body: _CardView(),
    );
  }
}

class _CardView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 20,
          children: [
            ...options.map(
              (option) => _CardType2(
                title: option['title'],
                subtitle: option['subtitle'],
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {
  final String title;
  final String subtitle;

  const _CardType1({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                FilledButton(onPressed: () {}, child: const Text('Aceptar')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class _CardType2 extends StatelessWidget {
  final String title;
  final String subtitle;

  const _CardType2({required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          ListTile(
            title: Text(title),
            subtitle: Text(
              subtitle,
              style: const TextStyle(color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                  child: Image.network(
                    'https://static.vecteezy.com/system/resources/thumbnails/003/623/626/small/sunset-lake-landscape-illustration-free-vector.jpg',
                    height: 200,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(onPressed: () {}, child: const Text('Cancelar')),
                    FilledButton(
                      onPressed: () {},
                      child: const Text('Aceptar'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
