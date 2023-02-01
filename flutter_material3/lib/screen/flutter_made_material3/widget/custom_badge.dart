import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/theme_mode_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomBadge extends ConsumerWidget {
  const CustomBadge({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themeMode = ref.watch(themeModeProvider);
    return Badge(
      label: Text('999+',
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
              color:
                  themeMode == ThemeMode.light ? Colors.white : Colors.black)),
      child: Column(
        children: [
          Icon(
            Icons.mail_outline,
            color: themeMode == ThemeMode.light ? Colors.black : Colors.white,
          ),
          Text('Mail',
              style: Theme.of(context).textTheme.bodySmall?.copyWith(
                  color: themeMode == ThemeMode.light
                      ? Colors.black
                      : Colors.white)),
        ],
      ),
    );
  }
}
