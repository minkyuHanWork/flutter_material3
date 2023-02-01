import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/theme_mode_provider.dart';
import 'package:flutter_material3/screen/flutter_made_material3/widget/theme_switch_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'widget/buttons/buttons.dart';
import 'widget/custom_badge.dart';

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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: ListView(
          children: [
            Column(
              children: [
                Text('Actions',
                    style: Theme.of(context).textTheme.headlineMedium),
                _standardWidget(_buttons(), 'Common buttons'),
                _standardWidget(
                    const FloatingActionButtonSet(), 'Floating action buttons'),
                _standardWidget(const IconButtonSet(), 'Icon buttons'),
                _standardWidget(
                    const SegmentedButtonSet(), 'Segemented buttons'),
              ],
            ),
            _standardWidget(
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    CustomBadge(),
                  ],
                ),
                'Badges'),
            const Placeholder()
          ],
        ),
      ),
    );
  }

  Widget _standardWidget(Widget body, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const SizedBox(height: 30),
        Text(text, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 10),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            color: widget.themeMode == ThemeMode.light
                ? Colors.white
                : Colors.black,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
                color: Theme.of(context).colorScheme.outline.withOpacity(0.5)),
          ),
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
        SizedBox(height: 10),
        FilledButtonSet(),
        SizedBox(height: 10),
        FilledTonalButtonSet(),
        SizedBox(height: 10),
        OutlinedButtonSet(),
        SizedBox(height: 10),
        TextButtonSet(),
      ],
    );
  }
}
