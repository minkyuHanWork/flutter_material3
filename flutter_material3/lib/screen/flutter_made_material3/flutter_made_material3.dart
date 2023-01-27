import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/theme_mode_provider.dart';
import 'package:flutter_material3/screen/flutter_made_material3/widget/theme_switch_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widget/buttons/buttons.dart';

class FlutterMadeMaterial3 extends ConsumerStatefulWidget {
  const FlutterMadeMaterial3({super.key, required this.themeMode});

  final ThemeMode themeMode;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FlutterMadeMaterial3State();
}

class _FlutterMadeMaterial3State extends ConsumerState<FlutterMadeMaterial3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      appBar: AppBar(
        title: const Text("Material3"),
        actions: const [ThemeSwitchButton()],
      ),
      body: ListView(
        children: [
          _standardWidget(_buttons(), 'Common buttons'),
          _standardWidget(
              const FloatingActionButtonSet(), 'Floating action buttons'),
          _standardWidget(const IconButtonSet(), 'icon buttons'),
          _standardWidget(SegmentedButtonSet(), 'Segemented buttons'),
          const Placeholder()
        ],
      ),
    );
  }

  Widget _standardWidget(Widget body, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        Text(text),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          color:
              widget.themeMode == ThemeMode.light ? Colors.white : Colors.black,
          padding: const EdgeInsets.symmetric(vertical: 15),
          child: body,
        )
      ],
    );
  }

  Widget _buttons() {
    return Column(
      children: const [
        ElevatedButtonSet(),
        FilledButtonSet(),
        FilledTonalButtonSet(),
        OutlinedButtonSet(),
        TextButtonSet(),
      ],
    );
  }
}
