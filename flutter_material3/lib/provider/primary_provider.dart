import 'package:flutter/material.dart';
import 'package:flutter_material3/theme/color_schemes.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PrimaryClass {
  final Color light;
  final Color dark;

  const PrimaryClass({
    this.light = primaryBaseLight,
    this.dark = primaryBaseDark,
  });

  PrimaryClass copy({
    Color? light,
    Color? dark,
  }) =>
      PrimaryClass(
        light: light ?? this.light,
        dark: dark ?? this.dark,
      );
}

class PrimaryRepository extends StateNotifier<PrimaryClass> {
  PrimaryRepository() : super(const PrimaryClass());

  void setPrimary(String color) {
    switch (color) {
      case 'base':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'indigo':
        final newState =
            state.copy(light: primaryIndigoLight, dark: primaryIndigoLight);
        state = newState;
        break;
      case 'blue':
        print('여기실행');
        final newState =
            state.copy(light: primaryBlueLight, dark: primaryBlueLight);
        state = newState;
        break;
      case 'teal':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'green':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'yellow':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'orange':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'deepOrange':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      case 'pink':
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
        break;
      default:
        final newState =
            state.copy(light: primaryBaseLight, dark: primaryBaseLight);
        state = newState;
    }
  }
}

final primaryProvider =
    StateNotifierProvider<PrimaryRepository, PrimaryClass>((ref) {
  return PrimaryRepository();
});
