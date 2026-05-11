import 'package:flutter/material.dart';

enum SingingCharacter { lafayette, jefferson }

class UiControlsScreen extends StatefulWidget {
  static const String name = 'ui_controls';
  const UiControlsScreen({super.key});

  @override
  State<UiControlsScreen> createState() => _UiControlsScreenState();
}

class _UiControlsScreenState extends State<UiControlsScreen> {
  bool isActive = false;

  SingingCharacter? _character = SingingCharacter.lafayette;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('UI Controls')),
      body: ListView(
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(16.0),
        children: [
          SwitchListTile(
            title: const Text('Switch Control'),
            subtitle: const Text('Toggle the switch'),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value;
              });
            },
          ),

          CheckboxListTile(
            title: const Text('Checkbox Control'),
            subtitle: const Text('Check the box'),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value ?? false;
              });
            },
          ),

          ExpansionTile(
            title: Text('Expansion Tile'),
            subtitle: Text('$_character'),
            children: [
              RadioGroup<SingingCharacter>(
                groupValue: _character,
                onChanged: (value) {
                  setState(() {
                    _character = value;
                  });
                },
                child: Column(
                  children: [
                    RadioListTile(
                      title: Text('Lafayette'),
                      value: SingingCharacter.lafayette,
                    ),
                    RadioListTile(
                      title: Text('Jefferson'),
                      value: SingingCharacter.jefferson,
                    ),
                  ],
                ),
              ),
            ],
          ),

          CheckboxListTile(
            title: const Text('Desayuno?'),
            value: isActive,
            onChanged: (value) {
              setState(() {
                isActive = value ?? false;
              });
            },
          ),
        ],
      ),
    );
  }
}
