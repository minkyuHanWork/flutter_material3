import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/primary_provider.dart';
import 'package:flutter_material3/provider/theme_mode_provider.dart';
import 'package:flutter_material3/screen/flutter_made_material3/flutter_made_material3.dart';
import 'package:flutter_material3/theme/color_schemes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final themMode = ref.watch(themeModeProvider);
    final primarySeletor = ref.watch(primaryProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.light(
          primary: primarySeletor.light,
        ),
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.dark(primary: primarySeletor.dark),
      ),
      themeMode: themMode,
      home: const FlutterMadeMaterial3(),
    );
  }
}
