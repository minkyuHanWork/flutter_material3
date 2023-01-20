import 'package:flutter/material.dart';
import 'package:flutter_material3/screen/flutter_made_material3/widget/primary_palette_selector.dart';
import 'package:flutter_material3/screen/flutter_made_material3/widget/theme_switch_button.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FlutterMadeMaterial3 extends ConsumerWidget {
  const FlutterMadeMaterial3({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Material3"),
        actions: [const ThemeSwitchButton(), PrimaryPaletteSelector()],
      ),
      body: Center(
        child: Column(),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
