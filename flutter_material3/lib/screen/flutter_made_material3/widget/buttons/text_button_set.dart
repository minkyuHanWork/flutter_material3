import 'package:flutter/material.dart';

class TextButtonSet extends StatelessWidget {
  const TextButtonSet({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        TextButton(onPressed: () {}, child: const Text('Text')),
        TextButton.icon(
            onPressed: () {}, label: const Text('Icon'), icon: const Icon(Icons.add)),
        const TextButton(onPressed: null, child: Text('Text')),
      ],
    );
  }
}
