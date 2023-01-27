import 'package:flutter/material.dart';

class FilledTonalButtonSet extends StatelessWidget {
  const FilledTonalButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton.tonal(onPressed: () {}, child: const Text('Filled tonal')),
        FilledButton.tonalIcon(
            onPressed: () {}, label: const Text('Icon'), icon: const Icon(Icons.add)),
        const FilledButton.tonal(onPressed: null, child: Text('Filled tonal')),
      ],
    );
  }
}
