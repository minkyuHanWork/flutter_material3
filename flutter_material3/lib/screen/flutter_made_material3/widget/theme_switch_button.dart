import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/theme_mode_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ThemeSwitchButton extends ConsumerWidget {
  const ThemeSwitchButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.watch(themeModeProvider);
    return IconButton(
        onPressed: () {
          ref.read(themeModeProvider.notifier).state =
              theme == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
        },
        icon:
            Icon(theme == ThemeMode.dark ? Icons.light_mode : Icons.dark_mode));
  }
}
