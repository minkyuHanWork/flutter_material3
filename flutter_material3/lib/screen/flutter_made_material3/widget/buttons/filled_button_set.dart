import 'package:flutter/material.dart';

class FilledButtonSet extends StatelessWidget {
  const FilledButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        FilledButton(onPressed: () {}, child: const Text('Filled')),
        FilledButton.icon(
            onPressed: () {}, label: const Text('Icon'), icon: const Icon(Icons.add)),
        const FilledButton(onPressed: null, child: Text('Filled')),
      ],
    );
  }
}
