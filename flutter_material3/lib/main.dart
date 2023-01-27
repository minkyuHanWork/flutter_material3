import 'package:flutter/material.dart';
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
    final themeMode = ref.watch(themeModeProvider);
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: primaryBlueLight,
          brightness: Brightness.light),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorSchemeSeed: primaryBaseDark,
          brightness: Brightness.dark),
      themeMode: themeMode,
      home: FlutterMadeMaterial3(themeMode: themeMode),
    );
  }
}
