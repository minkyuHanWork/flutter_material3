import 'package:flutter/material.dart';
import 'package:flutter_material3/provider/primary_provider.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

const List<String> paletteStringList = <String>[
  'base',
  'indigo',
  'blue',
  'teal',
  'green',
  'yello',
  'orange',
  'deepOrange',
  'pink'
];

class PrimaryPaletteSelector extends ConsumerWidget {
  PrimaryPaletteSelector({super.key});

  String dropDownValue = paletteStringList.first;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DropdownButton(
      alignment: AlignmentDirectional.center,
      value: dropDownValue,
      borderRadius: BorderRadius.circular(5),
      items: paletteStringList.map((String value) {
        return DropdownMenuItem(
          value: value,
          child: _dropdownWidget(value),
        );
      }).toList(),
      onChanged: (value) {},
    );
  }

  Widget _dropdownWidget(String text) {
    return Row(
      children: [
        const Icon(Icons.palette_outlined),
        const SizedBox(width: 15),
        Text(text)
      ],
    );
  }
}
